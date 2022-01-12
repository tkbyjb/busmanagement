package com.busmanagement.service.impl;

import com.busmanagement.bean.Role;
import com.busmanagement.mapper.RoleMapper;
import com.busmanagement.service.MenuService;
import com.busmanagement.service.RoleService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private MenuService menuService;

    @Override
    public List<Role> getAllRoles() {
        return roleMapper.selectAllRoles();
    }

    @Override
    public List<Role> gets(int pageIndex, int pageSize, Map searchMap) {
        List<Role> roles = roleMapper.selects(searchMap);
        if(pageIndex != 0) {
            List<Role> s = new ArrayList<>();
            for (int i = (pageIndex - 1) * pageSize; i<roles.size() && i < pageIndex * pageSize; i++) {
                s.add(roles.get(i));
            }
            roles = s;
        }
        for(Role role : roles){
            role.setMenus(menuService.getMenu(role.getRoleId(), 0));
        }
        return roles;
    }

    @Override
    @Transactional
    public void add(Role role, List<Long> menus) {
        int n1 = insertRole(role);
        Role r = getRoleByRoleName(role.getRoleName());
        if(menus.size() > 0){
            int n2 = insertRoleMenu(r.getRoleId(), menus);
        }
    }

    @Override
    @Transactional
    public void edit(Role role , List<Long> menus) {
        int n1 = updateRole(role);
        int n2 = deleteRoleMenu(role.getRoleId());
        if(menus.size() > 0) {
            int n3 = insertRoleMenu(role.getRoleId(), menus);
        }
    }
    @Override
    public int updateRole(Role role) {
        return roleMapper.updateRole(role);
    }

    @Override
    public int insertRole(Role role) {
        return roleMapper.insertRole(role);
    }

    @Override
    public int deleteRoleMenu(long roleId) {
        return roleMapper.deleteRoleMenu(roleId);
    }

    @Override
    public int insertRoleMenu(long roleId, List<Long> menus) {
        return roleMapper.insertRoleMenu(roleId, menus);
    }

    @Override
    public Role getRoleByRoleName(String roleName) {
        return roleMapper.selectRoleByRoleName(roleName);
    }
}
