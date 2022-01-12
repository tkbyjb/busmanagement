package com.busmanagement.service;

import com.busmanagement.bean.BusExpenditure;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BusExpenditureService {
    List<BusExpenditure> gets(int pageIndex, int pageSize, Map searchMap);
    int deletes(List<Long> ids);
    int edit(BusExpenditure expend);
    int add(BusExpenditure expend);
    List<String> getApproverUserNames();
    List<String> getCreatorUserNames();
    List<String> getBusCodes();
    int updateState(List<Long> expIds, int state, int approver);
    List<Map<String,Object>> getIntervalInfo(Map map);
}
