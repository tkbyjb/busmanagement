package com.busmanagement.mapper;

import com.busmanagement.bean.BusExpenditure;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface BusExpenditureMapper {
    List<BusExpenditure> gets(@Param("searchMap") Map searchMap);
    int deletes(@Param("ids") List<Long> ids);
    int update(@Param("expend") BusExpenditure expend);
    int insert(@Param("expend") BusExpenditure expend);
    List<String> getApproverUserNames();
    List<String> getCreatorUserNames();
    List<String> getBusCodes();
    int updateState(@Param("expIds") List<Long> expIds, @Param("state") int state, @Param("approver")  int approver);
    List<Map<String,Object>> getIntervalInfo(@Param("map") Map map);
}
