package com.busmanagement.service;

import com.busmanagement.bean.User;

import java.util.List;
import java.util.Map;

public interface UserService {
    List<User> gets(int pageIndex, int pageSize, Map searchMap);
    int deletes(List<Long> userIds);
    int add(User user);
    int edit(User user);
    User getUserByUserNameAndUserPassword(String userName, String userPassword);
    User getUserByUserName(String userName);
    User getUserByUserId(long userId);
    int updateUserRole(List<Long> userIds, long roleId);
}
