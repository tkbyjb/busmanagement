package com.busmanagement.controller;

import com.busmanagement.bean.BusExpenditureType;
import com.busmanagement.bean.BusRegisterInfo;
import com.busmanagement.bean.User;
import com.busmanagement.service.BusRegisterInfoService;
import com.busmanagement.service.UserService;
import com.busmanagement.utils.ExcelUtil;
import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
public class BusRegisterInfoController {
    @Autowired
    private BusRegisterInfoService busRegisterInfoService;
    @Autowired
    private UserService userService;

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/{pageIndex}/{pageSize}")
    public @ResponseBody Result gets(@PathVariable("pageIndex") String pageIndex, @PathVariable("pageSize") String pageSize, @RequestBody Map searchMap) {
        try{
            return new Result(ResultState.SUCCESS, busRegisterInfoService.gets(Integer.parseInt(pageIndex),Integer.parseInt(pageSize), searchMap));
        }
        catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/startPlaces")
    public @ResponseBody Result getStartPlaces() {
        try{
            return new Result(ResultState.SUCCESS, busRegisterInfoService.getStartPlaces());
        }
        catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/endPlaces")
    public @ResponseBody Result getEndPlaces() {
        try{
            return new Result(ResultState.SUCCESS, busRegisterInfoService.getEndPlaces());
        }
        catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/busCodes")
    public @ResponseBody Result getBusCodes() {
        try{
            return new Result(ResultState.SUCCESS, busRegisterInfoService.getBusCodes());
        }
        catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/recepientUserNames")
    public @ResponseBody Result getRecepientUserNames()  {
        try{
            return new Result(ResultState.SUCCESS, busRegisterInfoService.getRecepientUserNames());
        }
        catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/creatorUserNames")
    public @ResponseBody Result getCreatorUserNames() {
        try{
            return new Result(ResultState.SUCCESS, busRegisterInfoService.getCreatorUserNames());
        }
        catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/delete")
    public @ResponseBody Result deletes(@RequestBody List<Long> typeIds) {
        try{
            busRegisterInfoService.deletes(typeIds);
            return new Result(ResultState.SUCCESS, null);
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }


    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/add")
    public @ResponseBody Result add(@RequestBody BusRegisterInfo busRegisterInfo, @PathVariable("userId") String userId) throws JsonProcessingException {
        try{
            User recepientUsers = userService.getUserByUserName(busRegisterInfo.getRecepientUser().getUserName());
            if(recepientUsers != null) {
                busRegisterInfo.setRecepient(recepientUsers.getUserId());
                busRegisterInfo.setCreator(Integer.parseInt(userId));
                busRegisterInfoService.add(busRegisterInfo);
                return new Result(ResultState.SUCCESS, null);
            }else{
                return new Result(ResultState.RECEPIENT_NOT_EXIST, null);
            }
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/edit")
    public @ResponseBody Result edit(@RequestBody BusRegisterInfo busRegisterInfo) throws JsonProcessingException {
        try{
            User recepientUsers = userService.getUserByUserName(busRegisterInfo.getRecepientUser().getUserName());
            if(recepientUsers != null) {
                User creatorUser = userService.getUserByUserName(busRegisterInfo.getCreatorUser().getUserName());
                if(creatorUser != null){
                    busRegisterInfo.setRecepient(recepientUsers.getUserId());
                    busRegisterInfo.setCreator(busRegisterInfo.getCreator());
                    busRegisterInfoService.edit(busRegisterInfo);
                    return new Result(ResultState.SUCCESS, null);
                }else{
                    return  new Result(ResultState.CREATOR_NOT_EXIST, null);
                }
            }else{
                return new Result(ResultState.RECEPIENT_NOT_EXIST, null);
            }
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/intervalInfo")
    public @ResponseBody Result getIntervalInfo(@RequestBody Map map) {
        try{
            System.out.println(map);
            if(map.get("recepientUserName") != null && map.get("recepientUserName") != ""){
                User recepientUser = userService.getUserByUserName((String) map.get("recepientUserName"));
                map.put("recepient", recepientUser.getUserId());
            }
            System.out.println(busRegisterInfoService.getIntervalInfo(map));
            return new Result(ResultState.SUCCESS, busRegisterInfoService.getIntervalInfo(map));
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busRegisterInfo/intervalInfo/download")
    public @ResponseBody void download(@RequestBody Map map, HttpServletResponse resp) {
        try{
            if(map.get("recepientUserName") != null && map.get("recepientUserName") != ""){
                User recepientUser = userService.getUserByUserName((String) map.get("recepientUserName"));
                map.put("recepient", recepientUser.getUserId());
            }
            XSSFWorkbook workbook = ExcelUtil.generate(busRegisterInfoService.getIntervalInfo(map), new String[]{"日期", "总数", "总里程"},new String[]{"date", "totalNum", "totalOdometer"});
            resp.setContentType("application/octet-stream;charset=UTF-8");
            resp.setHeader("Content-Disposition", "attachment; filename=统计数据.xlsx");
            workbook.write(resp.getOutputStream());
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
