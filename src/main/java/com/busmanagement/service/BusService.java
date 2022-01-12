package com.busmanagement.service;

import com.busmanagement.bean.Bus;

import java.util.List;
import java.util.Map;

public interface BusService {
    List<Bus> gets(int pageIndex, int pageSize, Map searchMap);
    List<String> getPrincipalUserNames();
    List<String> getVendors();
    List<String> getTypes();
    List<String> getPurposes();
    int deletes(List<Long> busIds);
    int add(Bus bus);
    int edit(Bus bus);
    List<String> getPakingPlaces();
    List<String> getPhotos();
}
