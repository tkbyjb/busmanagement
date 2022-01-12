package com.busmanagement.service.impl;

import com.busmanagement.bean.User;
import com.busmanagement.mapper.UserMapper;
import com.busmanagement.service.UserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> gets(int pageIndex, int pageSize, Map searchMap) {
        PageHelper.startPage(pageIndex, pageSize);
        return userMapper.selects(searchMap);
    }

    @Override
    public User getUserByUserNameAndUserPassword(String userName, String userPassword) {
        return userMapper.selectByUserNameAndPassword(userName, userPassword);
    }

    @Override
    public int deletes(List<Long> userIds) {
        return userMapper.deletes(userIds);
    }

    @Override
    public int add(User user) {
        user.setCreateTime(new Timestamp(new Date().getTime()));
        user.setUpdateTime(user.getCreateTime());
        user.setDeleteFlag(0);
        return userMapper.insert(user);
    }

    @Override
    public User getUserByUserName(String userName) {
        return userMapper.selectByUserName(userName);
    }

    @Override
    public User getUserByUserId(long userId) {
        return userMapper.selectByUserId(userId);
    }

    @Override
    public int updateUserRole(List<Long> userIds, long roleId) {
        return userMapper.updateUserRole(userIds, roleId);
    }

    @Override
    public int edit(User user) {
        user.setUpdateTime(new Timestamp(new Date().getTime()));
        return userMapper.update(user);
    }
}
