package com.amaker.entity;

/**
 * 管理员表;用于存储管理员登陆系统所用的账号密码
 * @date : 2023-10-7
 */
public class admin {

    private Integer aid ;/** 管理员id */
    private String aname ;/** 管理员名 */
    private String apwd ;/** 管理员密码 */

    public admin() {
    }

    public admin(Integer aid, String aname, String apwd) {
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
