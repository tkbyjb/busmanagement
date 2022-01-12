package com.busmanagement.service;

import com.busmanagement.bean.CostAccraditation;

import java.util.List;
import java.util.Map;

public interface CostAccraditationService {
    int add(CostAccraditation obj);
    List<CostAccraditation> gets(int pageIndex, int pageSize, Map searchMap);
}
