package com.amaker.entity;

/**
 * 用户信息表;存储平台的所有用户信息
 * @date : 2023-10-7
 */
public class user {

    /** 用户id */
    private Integer userid ;
    /** 用户名 */
    private String uname ;
    /** 用户密码 */
    private String upwd ;
    /** 用户性别;“0”为男，“1”为女 */
    private Integer usex ;
    /** 用户真实姓名 */
    private String urealname ;
    /** 用户身份证号 */
    private String uidcard ;
    /** 用户电话 */
    private String uphone ;
    /** 用户邮箱 */
    private String uemail ;

    public user() {
    }

    public user(Integer userid, String uname, String upwd, Integer usex, String urealname, String uidcard, String uphone, String uemail) {
        this.userid = userid;
        this.uname = uname;
        this.upwd = upwd;
        this.usex = usex;
        this.urealname = urealname;
        this.uidcard = uidcard;
        this.uphone = uphone;
        this.uemail = uemail;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public Integer getUsex() {
        return usex;
    }

    public void setUsex(Integer usex) {
        this.usex = usex;
    }

    public String getUrealname() {
        return urealname;
    }

    public void setUrealname(String urealname) {
        this.urealname = urealname;
    }

    public String getUidcard() {
        return uidcard;
    }

    public void setUidcard(String uidcard) {
        this.uidcard = uidcard;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    @Override
    public String toString() {
        return "user{" +
                "userid=" + userid +
                ", uname='" + uname + '\'' +
                ", upwd='" + upwd + '\'' +
                ", usex=" + usex +
                ", urealname='" + urealname + '\'' +
                ", uidcard='" + uidcard + '\'' +
                ", uphone='" + uphone + '\'' +
                ", uemail='" + uemail + '\'' +
                '}';
    }
}
