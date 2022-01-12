package com.busmanagement.mapper;

import com.busmanagement.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface UserMapper {
    List<User> selects(@Param("searchMap") Map searchMap);
    int deletes(@Param("userIds") List<Long> userIds);
    int insert(@Param("user") User user);
    int update(@Param("user") User user);
    User selectByUserName(@Param("userName") String userName);
    User selectByUserNameAndPassword(@Param("userName") String userName, @Param("password") String password);
    User selectByUserId(@Param("userId") long userId);
    int updateUserRole(@Param("userIds") List<Long> userIds, @Param("roleId") long roleId);
}
