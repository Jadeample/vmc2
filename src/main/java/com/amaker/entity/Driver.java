package com.amaker.entity;

/**
 * 司机信息表;存储平台的所有司机信息
 * @date : 2023-10-7
 */
public class Driver {

    /** 司机id */
    private Integer diverid ;
    /** 司机账号名 */
    private String divername ;
    /** 司机密码 */
    private String diverpwd ;
    /** 司机照片 */
    private String diverphoto ;
    /** 司机性别 */
    private Integer diversex ;
    /** 司机价格 */
    private Double diverprice ;
    /** 司机真实姓名 */
    private String diverrealname ;
    /** 司机身份证号 */
    private String diveridcard ;
    /** 司机电话 */
    private String diverphone ;
    /** 司机邮箱 */

    /** 司机等级;司机每完成一个订单，用户可以评价，好评此项+3，不评价+1（默认），差评+0 */
    private Integer diverlevel ;
    /** 司机驾照类型;“0”为C1（手动挡和自动挡），“1”为C2（自动挡），“2”为B1（客车），“3”为B2（货车）， */
    private Integer diverlicense ;
    /** 司机状态;“0”为空闲中，“1”为工作中，“2”为请假中，“3”为已离职 */
    private Integer diverstate ;

    public Driver() {
    }

    public Driver(Integer diverid, String divername, String diverpwd, String diverphoto, Integer diversex, Double diverprice, String diverrealname, String diveridcard, String diverphone, Integer diverlevel, Integer diverlicense, Integer diverstate) {
        this.diverid = diverid;
        this.divername = divername;
        this.diverpwd = diverpwd;
        this.diverphoto = diverphoto;
        this.diversex = diversex;
        this.diverprice = diverprice;
        this.diverrealname = diverrealname;
        this.diveridcard = diveridcard;
        this.diverphone = diverphone;
        this.diverlevel = diverlevel;
        this.diverlicense = diverlicense;
        this.diverstate = diverstate;
    }

    public Integer getDiverid() {
        return diverid;
    }

    public void setDiverid(Integer diverid) {
        this.diverid = diverid;
    }

    public String getDivername() {
        return divername;
    }

    public void setDivername(String divername) {
        this.divername = divername;
    }

    public String getDiverpwd() {
        return diverpwd;
    }

    public void setDiverpwd(String diverpwd) {
        this.diverpwd = diverpwd;
    }

    public String getDiverphoto() {
        return diverphoto;
    }

    public void setDiverphoto(String diverphoto) {
        this.diverphoto = diverphoto;
    }

    public Integer getDiversex() {
        return diversex;
    }

    public void setDiversex(Integer diversex) {
        this.diversex = diversex;
    }

    public Double getDiverprice() {
        return diverprice;
    }

    public void setDiverprice(Double diverprice) {
        this.diverprice = diverprice;
    }

    public String getDiverrealname() {
        return diverrealname;
    }

    public void setDiverrealname(String diverrealname) {
        this.diverrealname = diverrealname;
    }

    public String getDiveridcard() {
        return diveridcard;
    }

    public void setDiveridcard(String diveridcard) {
        this.diveridcard = diveridcard;
    }

    public String getDiverphone() {
        return diverphone;
    }

    public void setDiverphone(String diverphone) {
        this.diverphone = diverphone;
    }

    public Integer getDiverlevel() {
        return diverlevel;
    }

    public void setDiverlevel(Integer diverlevel) {
        this.diverlevel = diverlevel;
    }

    public Integer getDiverlicense() {
        return diverlicense;
    }

    public void setDiverlicense(Integer diverlicense) {
        this.diverlicense = diverlicense;
    }

    public Integer getDiverstate() {
        return diverstate;
    }

    public void setDiverstate(Integer diverstate) {
        this.diverstate = diverstate;
    }

    @Override
    public String toString() {
        return "Driver{" +
                "diverid=" + diverid +
                ", divername='" + divername + '\'' +
                ", diverpwd='" + diverpwd + '\'' +
                ", diverphoto='" + diverphoto + '\'' +
                ", diversex=" + diversex +
                ", diverprice=" + diverprice +
                ", diverrealname='" + diverrealname + '\'' +
                ", diveridcard='" + diveridcard + '\'' +
                ", diverphone='" + diverphone + '\'' +
                ", diverlevel=" + diverlevel +
                ", diverlicense=" + diverlicense +
                ", diverstate=" + diverstate +
                '}';
    }
}
