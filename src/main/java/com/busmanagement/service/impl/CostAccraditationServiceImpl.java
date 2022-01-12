package com.busmanagement.service.impl;

import com.busmanagement.bean.CostAccraditation;
import com.busmanagement.mapper.CostAccraditationMapper;
import com.busmanagement.service.BusExpenditureService;
import com.busmanagement.service.CostAccraditationService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class CostAccraditationServiceImpl implements CostAccraditationService {
    @Autowired
    private CostAccraditationMapper costAccraditationMapper;

    @Override
    public int add(CostAccraditation obj) {
        return costAccraditationMapper.insert(obj);
    }

    @Override
    public List<CostAccraditation> gets(int pageIndex, int pageSize, Map searchMap) {
        PageHelper.startPage(pageIndex, pageSize);
        return costAccraditationMapper.selects(searchMap);
    }
}
