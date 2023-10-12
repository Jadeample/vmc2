package com.amaker.dao;

import com.amaker.entity.User;
import java.util.List;

public class UserDao{

    private BaseDao baseDao=new BaseDao();

    public List<User> getObjects(){
        String sql="select * from user order by userid desc";
        return baseDao.getObjects(User.class, sql);
    }

    public int deleteUserById(Integer userid){
        String sql="delete from user where userid=?";
        return baseDao.update(sql,userid);
    }

    public void add(Object user) {
        String sql="insert into user values(?,?,?,?,?,?,?,?)";
        User user1 = (User) user;
        baseDao.update(sql,user1.getUserid(),user1.getUname(),
                user1.getUpwd(),user1.getUsex(),user1.getUrealname(),
                user1.getUidcard(),user1.getUphone(),user1.getUemail());
    }

    public User findById(Integer userid) {
        String  sql="select * from user where userid=?";
        return  baseDao.getOneObject(User.class, sql, userid);
    }

    public int update(Object user) {
        User u = (User) user;
        String sql="update user set uname=?,upwd=?,usex=?,urealname=?,uidcard=?,uphone=?,ueamail=? where userid=?";
        return baseDao.update(sql,u.getUname(),u.getUpwd(),u.getUsex(),u.getUrealname(),
                u.getUidcard(),u.getUphone(),u.getUemail(),u.getUserid());
    }
}
