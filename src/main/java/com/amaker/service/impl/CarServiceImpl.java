package com.amaker.service.impl;

import com.amaker.dao.CarDao;
import com.amaker.entity.Car;
import com.amaker.service.CarService;

import java.util.List;

public class CarServiceImpl implements CarService {

    CarDao carDao=new CarDao();

    @Override
    public List<Car> find() {
        return carDao.getObjects();
    }

    @Override
    public void del(Integer cid) {
        carDao.deleteCarById(cid);
    }

    @Override
    public void addCar(Object car) {
        carDao.add(car);
    }

    @Override
    public Car findById(Integer cid) {
        return carDao.findById(cid);
    }

    @Override
    public Boolean update(Object car) {
        int c= carDao.update(car);
        if(c>0) {
            return true;
        }
        return false;
    }
}
