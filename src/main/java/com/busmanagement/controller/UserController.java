package com.busmanagement.controller;

import com.busmanagement.bean.Role;
import com.busmanagement.bean.User;
import com.busmanagement.service.RoleService;
import com.busmanagement.service.UserService;
import com.busmanagement.utils.JWTTokenUtil;
import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import com.busmanagement.utils.VerifyCodeImage;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;

    @RequestMapping("/verifyCode")
    public void verifyCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        response.setContentType("image/jpeg");
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        ServletOutputStream servletOutputStream = response.getOutputStream();
        VerifyCodeImage image = new VerifyCodeImage();
        servletOutputStream.write(image.getImageBuff());
        servletOutputStream.close();
        session.setAttribute("verifyCode", new String(image.getCode()));
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public @ResponseBody Result adminLogin(@RequestBody Map info, HttpSession session) {
        try{
            //验证验证码
            String verifyCode = (String) session.getAttribute("verifyCode");
            if (verifyCode == null || info.get("verifyCode") == null || verifyCode.equals(info.get("verifyCode")) == false) {
                return new Result(ResultState.VERIFYCODE_INCORRENT, null);
            }
            //验证管理员名和密码
            User users = userService.getUserByUserNameAndUserPassword((String)info.get("userName"), (String)info.get("userPassword"));
            if(users != null) {
                Map re = new HashMap();
                re.put("userId", users.getUserId());
                re.put("userName", users.getUserName());
                re.put("roleId", users.getRoleId());
                re.put("roleName", users.getRole().getRoleName());
                re.put(JWTTokenUtil.AUTH_HEADER_KEY, JWTTokenUtil.generateToken(users));
                return new Result(ResultState.SUCCESS, re);
            }else {
                return new Result(ResultState.LOGIN_INCORRENT, null);
            }
        }catch (Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/user/{pageIndex}/{pageSize}")
    public @ResponseBody Result gets(@PathVariable("pageIndex") String pageIndex, @PathVariable("pageSize") String pageSize, @RequestBody Map searchMap) {
        try{
            return new Result(ResultState.SUCCESS, userService.gets(Integer.parseInt(pageIndex),Integer.parseInt(pageSize), searchMap));
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/user/delete")
    public @ResponseBody Result deletes(@RequestBody List<Long> userIds) {
        try{
            return new Result(ResultState.SUCCESS, userService.deletes(userIds));
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/user/add")
    public @ResponseBody Result add(@RequestBody User user,@PathVariable("userId") String userId) throws JsonProcessingException {
        try{
            User users = userService.getUserByUserName(user.getUserName());//用户名是否已经存在
            if(users == null) {
                    if(user.getRole().getRoleName() != null){//分配了角色
                        Role role = roleService.getRoleByRoleName(user.getRole().getRoleName());
                        if(role != null){//创建角色是否存在
                            user.setRoleId(role.getRoleId());
                        }else{
                            return new Result(ResultState.ROLE_ONT_EXIST, null);
                        }
                    }else{
                        user.setRoleId(-1);
                    }
                    user.setCreator(Integer.parseInt(userId));
                    userService.add(user);
                    return new Result(ResultState.SUCCESS, null);
            }else {
                return new Result(ResultState.USER_USERNAME_REPEATED, null);
            }
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/user/edit")
    public @ResponseBody Result edit(@RequestBody User user) {
        try{
            User users = userService.getUserByUserName(user.getUserName());//用户名是否已经存在
            if(users == null || users.getUserId() == user.getUserId()) {
                User users2 = userService.getUserByUserName(user.getCreatorUser().getUserName());
                if(users2 != null) {//创建人用户是否存在
                    if(user.getRole().getRoleName() != null){//分配了角色
                        Role role = roleService.getRoleByRoleName(user.getRole().getRoleName());
                        if(role != null){//创建角色是否存在
                            user.setRoleId(role.getRoleId());
                        }else{
                            return new Result(ResultState.ROLE_ONT_EXIST, null);
                        }
                    }else{
                        user.setRoleId(-1);//未分配
                    }
                    user.setCreator(users2.getUserId());
                    userService.edit(user);
                    return new Result(ResultState.SUCCESS, null);
                }else{
                    return new Result(ResultState.CREATOR_NOT_EXIST, null);
                }
            }else {
                return new Result(ResultState.USER_USERNAME_REPEATED, null);
            }
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/user/userRole/{roleId}")
    public @ResponseBody Result setUserRole(@RequestBody List<Long> userIds, @PathVariable("roleId") long roleId) {
        try{
            userService.updateUserRole(userIds, roleId);
            return new Result(ResultState.SUCCESS, null);
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }
}
