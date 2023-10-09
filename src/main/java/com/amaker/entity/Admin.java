package com.amaker.entity;

/**
 * 管理员表;用于存储管理员登陆系统所用的账号密码
 * @date : 2023-10-7
 */
public class Admin {

    /** 管理员id */
    private Integer aid ;
    /** 管理员名 */
    private String aname ;
    /** 管理员密码 */
    private String apwd ;

    public Admin() {
    }

    public Admin(Integer aid, String aname, String apwd) {
        this.aid = aid;
        this.aname = aname;
        this.apwd = apwd;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getApwd() {
        return apwd;
    }

    public void setApwd(String apwd) {
        this.apwd = apwd;
    }

    @Override
    public String toString() {
        return "admin{" +
                "aid=" + aid +
                ", aname='" + aname + '\'' +
                ", apwd='" + apwd + '\'' +
                '}';
    }
}
