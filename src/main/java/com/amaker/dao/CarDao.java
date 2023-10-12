package com.amaker.dao;


import com.amaker.entity.Car;
import com.amaker.entity.User;

import java.util.List;

public class CarDao {

    private BaseDao baseDao=new BaseDao();

    public List<Car> getObjects(){
        String sql="select * from car order by cid desc";
        return baseDao.getObjects(Car.class, sql);
    }

    public int deleteCarById(Integer cid){
        String sql="delete from car where cid=?";
        return baseDao.update(sql,cid);
    }

    public void add(Object car) {
        String sql="insert into car values(?,?,?,?,?,?,?,?,?,?,?,?)";
        Car car1 = (Car) car;
        baseDao.update(sql,car1.getCid(),car1.getCnumber(),car1.getCbrand(),
                car1.getCcolor(),car1.getCphoto(),car1.getCseats(),car1.getCprice(),
                car1.getCnum(),car1.getCmodel(),car1.getCgear(),car1.getCtype(),car1.getCstate());
    }

    public Car findById(Integer cid){
        String sql="select * from car where cid=?";
        return  baseDao.getOneObject(Car.class,sql,cid);
    }

    public int update(Object car){
        Car c=(Car) car;
        String sql="update car set cnumber=?,cbrand=?,ccolor=?,,cphoto=?,cseats=?,cprice=?,cnum=?,cmodel=?,cgear=?,ctype=?,cstate=? where cid=?";
        return baseDao.update(sql,c.getCnumber(),c.getCbrand(),c.getCcolor(),c.getCprice(),
                c.getCseats(),c.getCprice(),c.getCnum(),c.getCmodel(),c.getCgear(),
                c.getCtype(),c.getCstate(),c.getCid());
    }
}
