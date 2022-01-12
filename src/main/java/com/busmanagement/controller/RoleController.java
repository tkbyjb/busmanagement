package com.busmanagement.controller;

import com.busmanagement.bean.Role;
import com.busmanagement.service.RoleService;
import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class RoleController {
    @Autowired
    private RoleService roleService;
    private ObjectMapper objectMapper = new ObjectMapper();

    @RequestMapping("/{userId}/{roleId}/{menuId}/role/all")
    public @ResponseBody Result getAllRoles() {
        try{
            return new Result(ResultState.SUCCESS, roleService.getAllRoles());
        }catch (Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/role/{pageIndex}/{pageSize}")
    public @ResponseBody Result gets(@PathVariable("pageIndex") String pageIndex, @PathVariable("pageSize") String pageSize, @RequestBody Map searchMap) {
        try{
            return new Result(ResultState.SUCCESS, roleService.gets(Integer.parseInt(pageIndex),Integer.parseInt(pageSize), searchMap));
        }catch (Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping(value = "/{userId}/{roleId}/{menuId}/role/edit")
    public @ResponseBody Result eidt(@RequestBody Map map)  {
        try{
            Role role = objectMapper.convertValue(map.get("role"), Role.class);
            List<Long> menuIds = objectMapper.convertValue(map.get("menus"), ArrayList.class);
            Role r = roleService.getRoleByRoleName(role.getRoleName());
            if(r == null || r.getRoleId() == role.getRoleId()){
                roleService.edit(role, menuIds);
                return new Result(ResultState.SUCCESS, null);
            }else{
                return new Result(ResultState.ROLE_ROLENAME_REPEATED, null);
            }
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping(value = "/{userId}/{roleId}/{menuId}/role/add")
    public @ResponseBody Result add(@RequestBody Map map) throws JsonProcessingException {
        try{
            Role role = objectMapper.convertValue(map.get("role"), Role.class);
            List<Long> menuIds = objectMapper.convertValue(map.get("menus"), ArrayList.class);
            Role r = roleService.getRoleByRoleName(role.getRoleName());
            if(r == null){
                roleService.add(role, menuIds);
                return new Result(ResultState.SUCCESS, null);
            }else{
                return new Result(ResultState.ROLE_ROLENAME_REPEATED, null);
            }
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }
}
