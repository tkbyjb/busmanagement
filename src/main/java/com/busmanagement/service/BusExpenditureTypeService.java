package com.busmanagement.service;

import com.busmanagement.bean.BusExpenditureType;

import java.util.List;

public interface BusExpenditureTypeService {
    List<BusExpenditureType> gets(int pageIndex, int pageSize);
    int deletes(List<Long> typeIds);
    int edit(BusExpenditureType type);
    int add(BusExpenditureType type);
    BusExpenditureType getByTypeName(String typeName);
}
