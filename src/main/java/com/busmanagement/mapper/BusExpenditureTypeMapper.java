package com.busmanagement.mapper;

import com.busmanagement.bean.BusExpenditureType;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BusExpenditureTypeMapper {
    List<BusExpenditureType> selects();
    int deletes(@Param("typeIds") List<Long> typeIds);
    int update(@Param("type") BusExpenditureType type);
    int insert(@Param("type") BusExpenditureType type);
    BusExpenditureType selectByTypeName(String typeName);
}
