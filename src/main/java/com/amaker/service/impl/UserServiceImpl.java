package com.amaker.service.impl;

import com.amaker.dao.UserDao;
import com.amaker.entity.User;
import com.amaker.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    UserDao userDao=new UserDao();

    @Override
    public List<User> find() {
        return userDao.getObjects();
    }

    @Override
    public void del(Integer userid) {
        userDao.deleteUserById(userid);
    }

    @Override
    public void addUser(Object user) {
        userDao.add(user);
    }

    @Override
    public User findById(Integer userid) {
        return userDao.findById(userid);
    }

    @Override
    public Boolean update(Object user) {
        int u= userDao.update(user);
        if(u>0) {
            return true;
        }
        return false;
    }
}
