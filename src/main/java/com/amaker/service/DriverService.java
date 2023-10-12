package com.amaker.service;

import com.amaker.entity.Driver;

import java.util.List;

public interface DriverService {
    public void addDriver(Object driver);

    public List<Driver> find();
}
