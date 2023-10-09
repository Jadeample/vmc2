package com.amaker.dao;

import com.amaker.entity.Admin;
import java.util.List;

public class AdminDao extends BaseDao{

    private BaseDao baseDao=new BaseDao();

    public List<Admin> getObjects(){
        String sql="select * from admin order by aid desc";
        return baseDao.getObjects(Admin.class, sql);
    }


}
