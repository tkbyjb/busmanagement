package com.busmanagement.interceptor;

import com.busmanagement.utils.JWTTokenUtil;
import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {

        if(request.getServletPath().equals("/login") || request.getServletPath().equals("/verifyCode"))
            return true;
        String[] uris = request.getRequestURI().split("/");
        if(uris[1].equals("bus_photo")){
            return true;
        }
        //是否登录
        ObjectMapper objectMapper = new ObjectMapper();
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie : cookies){
            if(cookie.getName().equals(JWTTokenUtil.AUTH_HEADER_KEY)) {
                String token = cookie.getValue();
                if(token == null || token.equals("")){
                    response.getWriter().write(objectMapper.writeValueAsString(new Result(ResultState.NOT_LOGIN, null)));
                    return false;
                }
                try{
                    String s = JWTTokenUtil.verifyToken(token);
                    //检查权限
                    String[] metas = s.split("&");
                    String userId = metas[0];
                    String roleId = metas[2];
                    String reqUserId = uris[1];
                    String reqRoleId = uris[2];
//                    System.out.println(request.getRequestURI());
//                    System.out.println(reqUserId+"  "+reqRoleId);
                    if(userId.equals(reqUserId) && roleId.equals(reqRoleId)){
                        return true;
                    }else{
                        response.getWriter().write(objectMapper.writeValueAsString(new Result(ResultState.NO_ACCESS, null)));
                        return false;
                    }
                }catch (Exception e){
                    e.printStackTrace();
                    response.getWriter().write(objectMapper.writeValueAsString(new Result(ResultState.NOT_LOGIN, null)));
                    return false;
                }
            }
        }
        response.getWriter().write(objectMapper.writeValueAsString(new Result(ResultState.NOT_LOGIN, null)));
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
