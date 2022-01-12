package com.busmanagement.controller;

import com.busmanagement.bean.BusExpenditure;
import com.busmanagement.bean.BusExpenditureType;
import com.busmanagement.bean.CostAccraditation;
import com.busmanagement.bean.User;
import com.busmanagement.service.BusExpenditureService;
import com.busmanagement.service.CostAccraditationService;
import com.busmanagement.service.UserService;
import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class CostAccraditationController {
    @Autowired
    private CostAccraditationService costAccraditationService;
    @Autowired
    private BusExpenditureService busExpenditureService;
    @Autowired
    private UserService userService;

    @RequestMapping("/{userId}/{roleId}/{menuId}/approve/{state}")
    @Transactional
    public @ResponseBody Result set(@RequestBody List<BusExpenditure> expends, @PathVariable("state") String state, @PathVariable("userId") String userId) {
        try{
            List<Long> expIds = new ArrayList<>();
            for(BusExpenditure e : expends){
                expIds.add(e.getExpId());
                CostAccraditation c = new CostAccraditation();
                c.setBusCode(e.getBusCode());
                c.setApprover(Integer.parseInt(userId));
                c.setAppTime(new Timestamp(new Date().getTime()));
                c.setExpId(e.getExpId());
                c.setDeleteFlag(0);
                c.setAppState(Integer.parseInt(state));
                costAccraditationService.add(c);
            }
            busExpenditureService.updateState(expIds, Integer.parseInt(state), Integer.parseInt(userId));//更改支出表state和最新审核人
            return new Result(ResultState.SUCCESS, null);
        }catch (Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/approve/{pageIndex}/{pageSize}")
    public @ResponseBody Result gets(@PathVariable("pageIndex") String pageIndex, @PathVariable("pageSize") String pageSize,
                                     @PathVariable("userId") String userId, @RequestBody Map searchMap) {
        try{
            searchMap.put("approver", Integer.parseInt(userId));
            List<CostAccraditation> list = costAccraditationService.gets(Integer.parseInt(pageIndex),Integer.parseInt(pageSize), searchMap);
            User approverUser = userService.getUserByUserId(Integer.parseInt(userId));
            for(CostAccraditation c : list) {
                User creatorUser = userService.getUserByUserId(c.getBusExpenditure().getCreator());
                c.setCreatorUser(new User());
                c.getCreatorUser().setUserName(creatorUser.getUserName());
                c.setApproverUser(new User());
                c.getApproverUser().setUserName(approverUser.getUserName());
            }
            return new Result(ResultState.SUCCESS, list);
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }
}
