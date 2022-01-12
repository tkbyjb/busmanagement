package com.busmanagement.mapper;

import com.busmanagement.bean.CostAccraditation;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CostAccraditationMapper {
    int insert(@Param("obj") CostAccraditation obj);
    List<CostAccraditation> selects(@Param("searchMap") Map searchMap );
}
