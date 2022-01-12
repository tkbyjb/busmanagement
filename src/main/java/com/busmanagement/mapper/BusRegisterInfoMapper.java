package com.busmanagement.mapper;

import com.busmanagement.bean.BusRegisterInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface BusRegisterInfoMapper {
    List<BusRegisterInfo> selects(@Param("searchMap") Map searchMap);
    int update(@Param("busRegisterInfo") BusRegisterInfo busRegisterInfo);
    int deletes(@Param("regIds") List<Long> regIds);
    int insert(@Param("busRegisterInfo") BusRegisterInfo busRegisterInfo);
    List<String> selectStartPlaces();
    List<String> selectEndPlaces();
    List<String> selectRecepientUserNames();
    List<String> selectCreatorUserNames();
    List<String> selectBusCodes();
    List<Map<String,Object>> getIntervalInfo(@Param("map") Map map);

}
