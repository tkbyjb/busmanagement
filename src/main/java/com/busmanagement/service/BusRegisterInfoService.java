package com.busmanagement.service;

import com.busmanagement.bean.BusRegisterInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BusRegisterInfoService {
    List<BusRegisterInfo> gets(int pageIndex, int pageSize, Map searchMap);
    int edit(BusRegisterInfo busRegisterInfo);
    int add(BusRegisterInfo busRegisterInfo);
    int deletes(List<Long> regIds);
    List<String> getStartPlaces();
    List<String> getEndPlaces();
    List<String> getRecepientUserNames();
    List<String> getCreatorUserNames();
    List<String> getBusCodes();
    List<Map<String,Object>> getIntervalInfo(Map map);
}
