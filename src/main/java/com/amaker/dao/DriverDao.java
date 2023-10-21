package com.amaker.dao;

import com.amaker.entity.Driver;

import java.util.List;

public class DriverDao {
    private BaseDao baseDao = new BaseDao();
    public void addDriver(Object driver) {
        String sql = "insert into book values(?,?,?,?,?,?,?,?,?,?,?,?)";
        Driver driver1 = (Driver) driver;
        baseDao.update(sql,driver1.getDiverid(),driver1.getDivername(),driver1.getDiverpwd(),driver1.getDiverphoto(),
                driver1.getDiversex(),driver1.getDiverprice(),driver1.getDiverrealname(),driver1.getDiveridcard(),
                driver1.getDiverlevel(),driver1.getDiverlicense(),driver1.getDiverstate());
    }

    public List<Driver> getObject() {
        String sql = "select * from diver";
        return baseDao.getObjects(Driver.class,sql);
    }
}
