package com.busmanagement.service;

import com.busmanagement.bean.Role;

import java.util.List;
import java.util.Map;

public interface RoleService {
    List<Role> getAllRoles();
    List<Role> gets(int pageIndex, int pageSize, Map searchMap);

    void add(Role role, List<Long> menus);
    void edit(Role role , List<Long> menus);

    int updateRole(Role role);
    int insertRole(Role role);

    int deleteRoleMenu(long roleId);
    int insertRoleMenu(long roleId, List<Long> menus);

    Role getRoleByRoleName(String roleName);



}
