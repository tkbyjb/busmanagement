package com.busmanagement.controller;

import com.busmanagement.bean.Bus;
import com.busmanagement.bean.User;
import com.busmanagement.service.BusService;
import com.busmanagement.service.UserService;
import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class BusController {
    @Autowired
    private BusService busService;
    @Autowired
    private UserService userService;

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/{pageIndex}/{pageSize}")
    public @ResponseBody Result gets(@PathVariable("pageIndex") String pageIndex, @PathVariable("pageSize") String pageSize, @RequestBody Map searchMap) {
        try{
            return new Result(ResultState.SUCCESS, busService.gets(Integer.parseInt(pageIndex),Integer.parseInt(pageSize), searchMap));
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/principalUserNames")
    public @ResponseBody Result getPrincipalUserNames() {
        try{
            return new Result(ResultState.SUCCESS, busService.getPrincipalUserNames());
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/pakingPlaces")
    public @ResponseBody Result getPakingPlaces() {
        try{
            return new Result(ResultState.SUCCESS, busService.getPakingPlaces());
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/vendors")
    public @ResponseBody Result getVendors() {
        try{
            return new Result(ResultState.SUCCESS, busService.getVendors());
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/types")
    public @ResponseBody Result getTypes() {
        try{
            return new Result(ResultState.SUCCESS, busService.getTypes());
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/purposes")
    public @ResponseBody Result getPurposes() {
        try{
            return new Result(ResultState.SUCCESS, busService.getPurposes());
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/photos")
    public @ResponseBody Result getPhotos() {
        try{
            return new Result(ResultState.SUCCESS, busService.getPhotos());
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/delete")
    public @ResponseBody Result deletes(@RequestBody List<Long> busIds) {
        try{
            busService.deletes(busIds);
            return new Result(ResultState.SUCCESS, null);
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/add")
    public @ResponseBody Result add(@RequestBody Bus bus, @PathVariable("userId") String userId) {
        try{
            User users = userService.getUserByUserName(bus.getPrincipalUser().getUserName());
            if(users != null) {
                bus.setPrincipal(users.getUserId());
                bus.setCreator(Integer.parseInt(userId));
                busService.add(bus);
                return new Result(ResultState.SUCCESS, null);
            }else{
                return new Result(ResultState.CREATOR_NOT_EXIST, null);
            }
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/edit")
    public @ResponseBody Result edit(@RequestBody Bus bus) {
        try{
            User users = userService.getUserByUserName(bus.getPrincipalUser().getUserName());
            User users2 = userService.getUserByUserName(bus.getCreatorUser().getUserName());
            if(users != null) {
                if(users2 != null){
                    bus.setPrincipal(users.getUserId());
                    bus.setCreator(users2.getUserId());
                    busService.edit(bus);
                    return new Result(ResultState.SUCCESS, null);
                }else{
                    return new Result(ResultState.PRINCIPAL_NOT_EXIST, null);
                }
            }else{
                return new Result(ResultState.CREATOR_NOT_EXIST, null);
            }
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/bus/uploadBusPhoto")
    public @ResponseBody Result upload(MultipartFile file, HttpServletRequest req) {
        try{
            if(!file.isEmpty()) {
                String fileName = file.getOriginalFilename();
                File path = new File(req.getServletContext().getRealPath("\\bus_photo\\"));
                if(!path.exists())
                    path.mkdirs();
                String newFileName = new Date().getTime()+".jpg";
                file.transferTo(new File(path+"\\"+newFileName));
                return new Result(ResultState.SUCCESS, new Result(ResultState.SUCCESS, newFileName));
            }else {
                return new Result(ResultState.UPLOAD_EMPTY, null);
            }
        }catch (Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }
}
