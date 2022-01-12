package com.busmanagement.mapper;

import com.busmanagement.bean.Menu;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper {
    List<Menu> selectMenuByUserName(@Param("userName") String userName);
    List<Menu> selectMenu(@Param("roleId") long roleId, @Param("parent") long parent);
    List<Menu> selectMenus(@Param("parent") long parent);
}
