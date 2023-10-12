package com.amaker.service;

import com.amaker.entity.Car;


import java.util.List;

public interface CarService {

    public List<Car> find();
    public void del(Integer cid);
    void addCar(Object car);
    Car findById(Integer cid);
    Boolean update(Object car);
}
