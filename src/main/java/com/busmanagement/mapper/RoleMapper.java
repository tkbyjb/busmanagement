package com.busmanagement.mapper;

import com.busmanagement.bean.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface RoleMapper {
    List<Role> selectAllRoles();
    List<Role> selects(@Param("searchMap") Map searchMap);
    int updateRole(@Param("role") Role role);
    int insertRole(@Param("role") Role role);
    //删除某角色所有权限
    int deleteRoleMenu(@Param("roleId") long roleId);
    //添加角色权限
    int insertRoleMenu(@Param("roleId") long roleId, @Param("menus") List<Long> menus);

    Role selectRoleByRoleName(@Param("roleName") String roleName);
}
