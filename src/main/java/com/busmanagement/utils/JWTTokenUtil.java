package com.busmanagement.utils;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.busmanagement.bean.User;

import java.util.Date;

public class JWTTokenUtil {
    //token头部,存在前端头部的字段名,本身不参与生成token
    public static final String AUTH_HEADER_KEY = "Authorization";
    //token前缀
    public static final String TOKEN_PREFIX = "Bearer";
    //签名密钥,随机字符串
    public static final String SECRET_KEY = "q3t68w9z$C&FTu)J@NcQfjTjWnZr4&$u71x";
    //有效期2小时,单位毫秒
    public static final long EXPIRATION_TIME = 1000L*60*60*2;

    //生成管理员token
    public static String generateToken(User user) {
        return TOKEN_PREFIX + JWT.create()
                .withClaim("typ", "JWT")
                .withClaim("alg", "HS256")
                .withSubject(user.getUserId() +"&"+ user.getUserName()+"&"+user.getRoleId())
                .withExpiresAt(new Date(System.currentTimeMillis() + EXPIRATION_TIME))
                .sign(Algorithm.HMAC256(SECRET_KEY));
    }

    //验证token,指定参数
    public static String verifyToken(String token) throws Exception {
        try {
            return JWT.require(Algorithm.HMAC256(SECRET_KEY))
                    .build()
                    .verify(token.replace(TOKEN_PREFIX, ""))
                    .getSubject();
        } catch (TokenExpiredException e) {
            throw new Exception("token已失效,请重新登录",e);
        } catch (JWTVerificationException e) {
            throw new Exception("token验证失败",e);
        }
    }
}
