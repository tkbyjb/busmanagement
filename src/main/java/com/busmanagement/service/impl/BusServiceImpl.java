package com.busmanagement.service.impl;

import com.busmanagement.bean.Bus;
import com.busmanagement.mapper.BusMapper;
import com.busmanagement.service.BusService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class BusServiceImpl implements BusService {
    @Autowired
    private BusMapper busMapper;

    @Override
    public List<Bus> gets(int pageIndex, int pageSize, Map searchMap) {
        PageHelper.startPage(pageIndex, pageSize);
        return busMapper.selects(searchMap);
    }

    @Override
    public List<String> getPrincipalUserNames() {
        return busMapper.selectPrincipalUserNames();
    }

    @Override
    public List<String> getVendors() {
        return busMapper.selectVendors();
    }

    @Override
    public List<String> getTypes() {
        return busMapper.selectTypes();
    }

    @Override
    public List<String> getPurposes() {
        return busMapper.selectPurposes();
    }

    @Override
    public int deletes(List<Long> busIds) {
        return busMapper.deletes(busIds);
    }

    @Override
    public int add(Bus bus) {
        bus.setCreateTime(new Timestamp(new Date().getTime()));
        bus.setUpdateTime(bus.getCreateTime());
        bus.setDeleteFlag(0);
        return busMapper.insert(bus);
    }

    @Override
    public int edit(Bus bus) {
        bus.setUpdateTime(new Timestamp(new Date().getTime()));
        return busMapper.update(bus);
    }

    @Override
    public List<String> getPakingPlaces() {
        return busMapper.selectPakingPlaces();
    }

    @Override
    public List<String> getPhotos() {
        return busMapper.selectPhotos();
    }
}
