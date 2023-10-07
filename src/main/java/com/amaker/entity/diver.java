package com.amaker.entity;

/**
 * 司机信息表;存储平台的所有司机信息
 * @date : 2023-10-7
 */
public class diver {

    /** 司机id */
    private Integer did ;
    /** 司机账号名 */
    private String dname ;
    /** 司机密码 */
    private String dpwd ;
    /** 司机照片 */
    private String dphoto ;
    /** 司机性别 */
    private Integer dsex ;
    /** 司机价格 */
    private Double dprice ;
    /** 司机真实姓名 */
    private String drealname ;
    /** 司机身份证号 */
    private String didcard ;
    /** 司机电话 */
    private String dphone ;
    /** 司机邮箱 */
    private String demail ;
    /** 司机等级;司机每完成一个订单，用户可以评价，好评此项+3，不评价+1（默认），差评+0 */
    private Integer dlevel ;
    /** 司机驾照类型;“0”为C1（手动挡和自动挡），“1”为C2（自动挡），“2”为B1（客车），“3”为B2（货车）， */
    private Integer dlicense ;
    /** 司机状态;“0”为空闲中，“1”为工作中，“2”为请假中，“3”为已离职 */
    private Integer dstate ;

    public diver() {
    }

    public diver(Integer did, String dname, String dpwd, String dphoto, Integer dsex, Double dprice, String drealname, String didcard, String dphone, String demail, Integer dlevel, Integer dlicense, Integer dstate) {
        this.did = did;
        this.dname = dname;
        this.dpwd = dpwd;
        this.dphoto = dphoto;
        this.dsex = dsex;
        this.dprice = dprice;
        this.drealname = drealname;
        this.didcard = didcard;
        this.dphone = dphone;
        this.demail = demail;
        this.dlevel = dlevel;
        this.dlicense = dlicense;
        this.dstate = dstate;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getDpwd() {
        return dpwd;
    }

    public void setDpwd(String dpwd) {
        this.dpwd = dpwd;
    }

    public String getDphoto() {
        return dphoto;
    }

    public void setDphoto(String dphoto) {
        this.dphoto = dphoto;
    }

    public Integer getDsex() {
        return dsex;
    }

    public void setDsex(Integer dsex) {
        this.dsex = dsex;
    }

    public Double getDprice() {
        return dprice;
    }

    public void setDprice(Double dprice) {
        this.dprice = dprice;
    }

    public String getDrealname() {
        return drealname;
    }

    public void setDrealname(String drealname) {
        this.drealname = drealname;
    }

    public String getDidcard() {
        return didcard;
    }

    public void setDidcard(String didcard) {
        this.didcard = didcard;
    }

    public String getDphone() {
        return dphone;
    }

    public void setDphone(String dphone) {
        this.dphone = dphone;
    }

    public String getDemail() {
        return demail;
    }

    public void setDemail(String demail) {
        this.demail = demail;
    }

    public Integer getDlevel() {
        return dlevel;
    }

    public void setDlevel(Integer dlevel) {
        this.dlevel = dlevel;
    }

    public Integer getDlicense() {
        return dlicense;
    }

    public void setDlicense(Integer dlicense) {
        this.dlicense = dlicense;
    }

    public Integer getDstate() {
        return dstate;
    }

    public void setDstate(Integer dstate) {
        this.dstate = dstate;
    }

    @Override
    public String toString() {
        return "diver{" +
                "did=" + did +
                ", dname='" + dname + '\'' +
                ", dpwd='" + dpwd + '\'' +
                ", dphoto='" + dphoto + '\'' +
                ", dsex=" + dsex +
                ", dprice=" + dprice +
                ", drealname='" + drealname + '\'' +
                ", didcard='" + didcard + '\'' +
                ", dphone='" + dphone + '\'' +
                ", demail='" + demail + '\'' +
                ", dlevel=" + dlevel +
                ", dlicense=" + dlicense +
                ", dstate=" + dstate +
                '}';
    }
}
