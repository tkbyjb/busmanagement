package com.busmanagement.service.impl;

import com.busmanagement.bean.BusExpenditure;
import com.busmanagement.mapper.BusExpenditureMapper;
import com.busmanagement.service.BusExpenditureService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class BusExpenditureServiceImpl implements BusExpenditureService {
    @Autowired
    private BusExpenditureMapper busExpenditureMapper;


    @Override
    public List<BusExpenditure> gets(int pageIndex, int pageSize, Map searchMap) {
        PageHelper.startPage(pageIndex, pageSize);
        return busExpenditureMapper.gets(searchMap);
    }

    @Override
    public int deletes(List<Long> ids) {
        return busExpenditureMapper.deletes(ids);
    }

    @Override
    public int edit(BusExpenditure expend) {
        expend.setUpdateTime(new Timestamp(new Date().getTime()));
        return busExpenditureMapper.update(expend);
    }

    @Override
    public int add(BusExpenditure expend) {
        expend.setCreateTime(new Timestamp(new Date().getTime()));
        expend.setUpdateTime(expend.getCreateTime());
        expend.setDeleteFlag(0);
        return busExpenditureMapper.insert(expend);
    }

    @Override
    public List<String> getApproverUserNames() {
        return busExpenditureMapper.getApproverUserNames();
    }

    @Override
    public List<String> getCreatorUserNames() {
        return busExpenditureMapper.getCreatorUserNames();
    }

    @Override
    public List<String> getBusCodes() {
        return busExpenditureMapper.getBusCodes();
    }

    @Override
    public int updateState(List<Long> expIds, int state, int approver) {
        return busExpenditureMapper.updateState(expIds, state, approver);
    }

    @Override
    public List<Map<String, Object>> getIntervalInfo(Map map) {
        return busExpenditureMapper.getIntervalInfo(map);
    }
}
