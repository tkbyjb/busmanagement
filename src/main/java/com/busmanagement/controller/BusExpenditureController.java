package com.busmanagement.controller;

import com.busmanagement.bean.BusExpenditure;
import com.busmanagement.bean.BusExpenditureType;
import com.busmanagement.bean.User;
import com.busmanagement.service.BusExpenditureService;
import com.busmanagement.service.BusExpenditureTypeService;
import com.busmanagement.service.UserService;
import com.busmanagement.utils.ExcelUtil;
import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.spi.http.HttpHandler;
import java.util.List;
import java.util.Map;

@Controller
public class BusExpenditureController {
    @Autowired
    private BusExpenditureService busExpenditureService;
    @Autowired
    private UserService userService;
    @Autowired
    private BusExpenditureTypeService busExpenditureTypeService;

    @RequestMapping("/{userId}/{roleId}/{menuId}/busExpend/{pageIndex}/{pageSize}")
    public @ResponseBody
    Result gets(@PathVariable("pageIndex") String pageIndex, @PathVariable("pageSize") String pageSize, @RequestBody Map searchMap) {
        try{
            return new Result(ResultState.SUCCESS, busExpenditureService.gets(Integer.parseInt(pageIndex),Integer.parseInt(pageSize), searchMap));
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busExpend/delete")
    public @ResponseBody Result deletes(@RequestBody List<Long> busIds) {
        try{
            busExpenditureService.deletes(busIds);
            return new Result(ResultState.SUCCESS, null);
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busExpend/add")
    public @ResponseBody Result add(@RequestBody BusExpenditure expend, @PathVariable("userId") String userId) {
        try{
            BusExpenditureType expendType = busExpenditureTypeService.getByTypeName(expend.getExpendType().getTypeName());
            if(expendType != null) {
//                if(expend.getApproverUser().getUserName() != null && expend.getApproverUser().getUserName() != ""){
//                    User users = userService.getUserByUserName(expend.getApproverUser().getUserName());
//                    if(users!= null){
//                        expend.setApprover(users.getUserId());
//                    }else {
//                        return new Result(ResultState.APPROVER_NOT_EXIST, null);
//                    }
//                }else{
//                    expend.setApprover(-1);
//                }
                expend.setTypeId(expendType.getTypeId());
                expend.setCreator(Integer.parseInt(userId));
                //是否异常
                if(expend.getAmount() >1000){
                    expend.setState(0);
                    expend.setDes("金额超过1000,需要审核");
                }else{
                    expend.setState(2);
                }
                busExpenditureService.add(expend);
                return new Result(ResultState.SUCCESS, null);
            }else{
                return new Result(ResultState.EXPENDTYPE_NOT_EXIST, null);
            }
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busExpend/edit")
    public @ResponseBody Result edit(@RequestBody BusExpenditure expend) {
        try{
            BusExpenditureType expendType = busExpenditureTypeService.getByTypeName(expend.getExpendType().getTypeName());
            if(expendType != null) {
                User users = userService.getUserByUserName(expend.getApproverUser().getUserName());
                if(users != null){
//                    User users2 = userService.getUserByUserName(expend.getCreatorUser().getUserName());
//                    if(users2 != null){
                        expend.setTypeId(expendType.getTypeId());
                        expend.setApprover(users.getUserId());
//                        expend.setCreator(users2.getUserId());
                        if(expend.getAmount() >1000){
                            expend.setState(0);
                            expend.setDes("金额超过1000,需要审核");
                        }else{
                            expend.setState(2);
                        }
                        busExpenditureService.edit(expend);
                        return new Result(ResultState.SUCCESS, null);
//                    }else{
//                        return new Result(ResultState.CREATOR_NOT_EXIST, null);
//                    }
                }else {
                    return new Result(ResultState.APPROVER_NOT_EXIST, null);
                }
            }else{
                return new Result(ResultState.EXPENDTYPE_NOT_EXIST, null);
            }
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busExpend/approverUserNames")
    public @ResponseBody
    Result getApproverUserNames() {
        try{
            return new Result(ResultState.SUCCESS, busExpenditureService.getApproverUserNames());
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busExpend/creatorUserNames")
    public @ResponseBody
    Result getCreatorUserNames() {
        try{
            return new Result(ResultState.SUCCESS, busExpenditureService.getCreatorUserNames());
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busExpend/busCodes")
    public @ResponseBody
    Result getBusCodes() {
        try{
            return new Result(ResultState.SUCCESS, busExpenditureService.getBusCodes());
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busExpend/intervalInfo")
    public @ResponseBody Result getIntervalInfo(@RequestBody Map map) {
        try{
            System.out.println(map);
            if(map.get("typeName") != null && map.get("typeName") != ""){
                BusExpenditureType type = busExpenditureTypeService.getByTypeName((String)map.get("typeName"));
                map.put("typeId", type.getTypeId());
            }
            System.out.println(busExpenditureService.getIntervalInfo(map));
            return new Result(ResultState.SUCCESS, busExpenditureService.getIntervalInfo(map));
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/busExpend/intervalInfo/download")
    public @ResponseBody void download(@RequestBody Map map, HttpServletResponse resp) {
        try{
            if(map.get("typeName") != null && map.get("typeName") != ""){
                BusExpenditureType type = busExpenditureTypeService.getByTypeName((String)map.get("typeName"));
                map.put("typeId", type.getTypeId());
            }
            XSSFWorkbook workbook = ExcelUtil.generate(busExpenditureService.getIntervalInfo(map), new String[]{"日期", "总数", "总额"},new String[]{"date", "totalNum", "totalAmount"});
            resp.setContentType("application/octet-stream;charset=UTF-8");
            resp.setHeader("Content-Disposition", "attachment; filename=统计数据.xlsx");
            workbook.write(resp.getOutputStream());
//            HttpHeaders httpHeaders = new HttpHeaders();
//            httpHeaders.setContentDispositionFormData("attachment", "统计数据.xlsx");
//            httpHeaders.setContentType(MediaType.APPLICATION_OCTET_STREAM);
//            return new ResponseEntity<byte[]>(, httpHeaders, HttpStatus.OK);
        }catch(Exception e){
            e.printStackTrace();
        }
    }

}
