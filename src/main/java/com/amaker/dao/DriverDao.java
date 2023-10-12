package com.amaker.dao;

import com.amaker.entity.Driver;

import java.util.List;

public class DriverDao {
    private BaseDao baseDao = new BaseDao();
    public void addDriver(Object driver) {
        String sql = "insert into book values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Driver driver1 = (Driver) driver;
        baseDao.update(sql,driver1.getDid(),driver1.getDname(),driver1.getDpwd(),driver1.getDphoto(),
                driver1.getDsex(),driver1.getDprice(),driver1.getDrealname(),driver1.getDidcard(),
                driver1.getDphone(),driver1.getDlicense(),driver1.getDstate());
    }

    public List<Driver> getObject() {
        String sql = "select * from diver";
        return baseDao.getObjects(Driver.class,sql);
    }
}
