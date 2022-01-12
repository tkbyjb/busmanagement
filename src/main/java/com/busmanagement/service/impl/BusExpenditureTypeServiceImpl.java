package com.busmanagement.service.impl;

import com.busmanagement.bean.BusExpenditureType;
import com.busmanagement.mapper.BusExpenditureTypeMapper;
import com.busmanagement.service.BusExpenditureTypeService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusExpenditureTypeServiceImpl implements BusExpenditureTypeService {
    @Autowired
    private BusExpenditureTypeMapper busExpenditureTypeMapper;

    @Override
    public List<BusExpenditureType> gets(int pageIndex, int pageSize) {
        PageHelper.startPage(pageIndex, pageSize);
        return busExpenditureTypeMapper.selects();
    }

    @Override
    public int deletes(List<Long> typeIds) {
        return busExpenditureTypeMapper.deletes(typeIds);
    }

    @Override
    public int edit(BusExpenditureType type) {
        return busExpenditureTypeMapper.update(type);
    }

    @Override
    public int add(BusExpenditureType type) {
        type.setDeleteFlag(0);
        return busExpenditureTypeMapper.insert(type);
    }

    @Override
    public BusExpenditureType getByTypeName(String typeName) {
        return busExpenditureTypeMapper.selectByTypeName(typeName);
    }
}
