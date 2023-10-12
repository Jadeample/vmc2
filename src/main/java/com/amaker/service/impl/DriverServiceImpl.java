package com.amaker.service.impl;

import com.amaker.dao.DriverDao;
import com.amaker.entity.Driver;
import com.amaker.service.DriverService;

import java.util.List;

public class DriverServiceImpl implements DriverService {
    DriverDao diverDao = new DriverDao();
    @Override
    public void addDriver(Object driver) {
        diverDao.addDriver(driver);
    }

    @Override
    public List<Driver> find() {
        return diverDao.getObject();
    }
}
