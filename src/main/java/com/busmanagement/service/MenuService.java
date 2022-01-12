package com.busmanagement.service;

import com.busmanagement.bean.Menu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MenuService {
    List<Menu> getMenuByUserName(String userName);
    List<Menu> getMenu(long roleId, long parent);
    List<Menu> getMenus(long parent);
}
