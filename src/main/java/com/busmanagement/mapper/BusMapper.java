package com.busmanagement.mapper;

import com.busmanagement.bean.Bus;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface BusMapper {
    List<Bus> selects(@Param("searchMap") Map searchMap);
    int deletes(@Param("busIds") List<Long> busIds);
    int insert(@Param("bus") Bus bus);
    int update(@Param("bus") Bus bus);
    List<String> selectPrincipalUserNames();
    List<String> selectVendors();
    List<String> selectTypes();
    List<String> selectPurposes();
    List<String> selectPakingPlaces();
    List<String> selectPhotos();
}
