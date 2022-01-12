package com.busmanagement.service.impl;

import com.busmanagement.bean.BusRegisterInfo;
import com.busmanagement.mapper.BusRegisterInfoMapper;
import com.busmanagement.service.BusRegisterInfoService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BusRegisterInfoServiceImpl implements BusRegisterInfoService {
    @Autowired
    private BusRegisterInfoMapper busRegisterInfoMapper;


    @Override
    public List<BusRegisterInfo> gets(int pageIndex, int pageSize, Map searchMap) {
        PageHelper.startPage(pageIndex, pageSize);
        return busRegisterInfoMapper.selects(searchMap);
    }

    @Override
    public int edit(BusRegisterInfo busRegisterInfo) {
        busRegisterInfo.setUpdateTime(new Timestamp(new Date().getTime()));
        return busRegisterInfoMapper.update(busRegisterInfo);
    }

    @Override
    public int add(BusRegisterInfo busRegisterInfo) {
        busRegisterInfo.setCreateTime(new Timestamp(new Date().getTime()));
        busRegisterInfo.setUpdateTime(busRegisterInfo.getCreateTime());
        busRegisterInfo.setDeleteFlag(0);
        return busRegisterInfoMapper.insert(busRegisterInfo);
    }

    @Override
    public int deletes(List<Long> regIds) {
        return busRegisterInfoMapper.deletes(regIds);
    }

    @Override
    public List<String> getStartPlaces() {
        return busRegisterInfoMapper.selectStartPlaces();
    }

    @Override
    public List<String> getEndPlaces() {
        return busRegisterInfoMapper.selectEndPlaces();
    }

    @Override
    public List<String> getRecepientUserNames() {
        return busRegisterInfoMapper.selectRecepientUserNames();
    }

    @Override
    public List<String> getCreatorUserNames() {
        return busRegisterInfoMapper.selectCreatorUserNames();
    }

    @Override
    public List<String> getBusCodes() {
        return busRegisterInfoMapper.selectBusCodes();
    }

    @Override
    public List<Map<String, Object>> getIntervalInfo(Map map) {
        return busRegisterInfoMapper.getIntervalInfo(map);
    }

}
