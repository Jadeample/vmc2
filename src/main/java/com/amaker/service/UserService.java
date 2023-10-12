package com.amaker.service;

import com.amaker.entity.User;

import java.util.List;

public interface UserService {

    public List<User> find();
    public void del(Integer userid);
    void addUser(Object user);
    User findById(Integer userid);
    Boolean update(Object user);
}
