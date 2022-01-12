package com.busmanagement.controller;

import com.busmanagement.bean.BusExpenditureType;
import com.busmanagement.service.BusExpenditureTypeService;
import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class BusExpenditureTypeController {
    @Autowired
    private BusExpenditureTypeService busExpenditureTypeService;
    private ObjectMapper objectMapper = new ObjectMapper();

    @RequestMapping("/{userId}/{roleId}/{menuId}/expendType/{pageIndex}/{pageSize}")
    public @ResponseBody Result gets(@PathVariable("pageIndex") String pageIndex, @PathVariable("pageSize") String pageSize) {
        try{
            return new Result(ResultState.SUCCESS, busExpenditureTypeService.gets(Integer.parseInt(pageIndex),Integer.parseInt(pageSize)));
        }catch (Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/expendType/delete")
    public @ResponseBody Result deletes(@RequestBody List<Long> typeIds) {
        try{
            return new Result(ResultState.SUCCESS, busExpenditureTypeService.deletes(typeIds));
        }catch (Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }


    @RequestMapping("/{userId}/{roleId}/{menuId}/expendType/add")
    public @ResponseBody Result add(@RequestBody BusExpenditureType type) throws JsonProcessingException {
        try{
            BusExpenditureType type2 = busExpenditureTypeService.getByTypeName(type.getTypeName());
            if(type2 == null){
                busExpenditureTypeService.add(type);
                return new Result(ResultState.SUCCESS, null);
            }else{
                return new Result(ResultState.EXPENDTYPE_TYPENAME_REPEATED, null);
            }
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/expendType/edit")
    public @ResponseBody Result edit(@RequestBody BusExpenditureType type) throws JsonProcessingException {
        try{
            BusExpenditureType type2 = busExpenditureTypeService.getByTypeName(type.getTypeName());
            if(type2 == null || type2.getTypeId() == type.getTypeId()){
                busExpenditureTypeService.edit(type);
                return new Result(ResultState.SUCCESS, null);
            }else{
                return new Result(ResultState.EXPENDTYPE_TYPENAME_REPEATED, null);
            }
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }
}
