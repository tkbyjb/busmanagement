package com.busmanagement.controller;

import com.busmanagement.bean.Menu;
import com.busmanagement.bean.Role;
import com.busmanagement.service.MenuService;
import com.busmanagement.service.RoleService;
import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class MenuController {
    @Autowired
    private MenuService menuService;
    @Autowired
    private RoleService roleService;

    //获取用户对应api
    @RequestMapping("/{userId}/{roleId}/api/{roleId}")
    public @ResponseBody
    Result getApi(@PathVariable("roleId") String roleId){
        try{
            return new Result(ResultState.SUCCESS, menuService.getMenu(Integer.parseInt(roleId), 0));
        }catch (Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/menu/all")
    public @ResponseBody Result getTypes() {
        try{
            return new Result(ResultState.SUCCESS, menuService.getMenus(0));
        }catch (Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

}
