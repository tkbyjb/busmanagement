package com.busmanagement.service.impl;

import com.busmanagement.bean.Menu;
import com.busmanagement.mapper.MenuMapper;
import com.busmanagement.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuMapper menuMapper;


    @Override
    public List<Menu> getMenuByUserName(String userName) {
        return menuMapper.selectMenuByUserName(userName);
    }

    @Override
    public List<Menu> getMenu(long roleId, long parent) {
        List<Menu> menus = menuMapper.selectMenu(roleId, parent);
        for(Menu menu : menus){
            menu.setMenuChilds(getMenu(roleId, menu.getMenuId()));
        }
        return menus;
    }

    @Override
    public List<Menu> getMenus(long parent) {
        List<Menu> menus = menuMapper.selectMenus(parent);
        for(Menu menu : menus){
            menu.setMenuChilds(getMenus(menu.getMenuId()));
        }
        return menus;
    }
}
