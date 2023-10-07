package com.amaker.entity;

/**
 * 车辆信息表;存储平台的所有车辆信息
 * @date : 2023-10-7
 */
public class car {

    /** 车辆id */
    private Integer cid ;
    /** 车牌号 */
    private String cnumber ;
    /** 车辆品牌 */
    private String cbrand ;
    /** 车辆颜色 */
    private String ccolor ;
    /** 车辆图片 */
    private String cphoto ;
    /** 车辆座位数 */
    private Integer cseats ;
    /** 车辆租赁价格 */
    private Double cprice ;
    /** 车型;“0”为小轿车，“1”为SUV，“2”为越野车，“3”为跑车，“4”为货车，“5”为客车 */
    private Integer cmodel ;
    /** 车辆挡位类型;“0”为手动挡，“1”为自动挡 */
    private Integer cgear ;
    /** 车辆类型;“0”为经济型，“1”为舒适性，“2”为性能型 */
    private Integer ctype ;
    /** 车辆状态;“0”为空闲中，“1”为租赁中，“2”为维修中，“3”为已报废 */
    private Integer cstate ;

    public car() {
    }

    public car(Integer cid, String cnumber, String cbrand, String ccolor, String cphoto, Integer cseats, Double cprice, Integer cmodel, Integer cgear, Integer ctype, Integer cstate) {
        this.cid = cid;
        this.cnumber = cnumber;
        this.cbrand = cbrand;
        this.ccolor = ccolor;
        this.cphoto = cphoto;
        this.cseats = cseats;
        this.cprice = cprice;
        this.cmodel = cmodel;
        this.cgear = cgear;
        this.ctype = ctype;
        this.cstate = cstate;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCnumber() {
        return cnumber;
    }

    public void setCnumber(String cnumber) {
        this.cnumber = cnumber;
    }

    public String getCbrand() {
        return cbrand;
    }

    public void setCbrand(String cbrand) {
        this.cbrand = cbrand;
    }

    public String getCcolor() {
        return ccolor;
    }

    public void setCcolor(String ccolor) {
        this.ccolor = ccolor;
    }

    public String getCphoto() {
        return cphoto;
    }

    public void setCphoto(String cphoto) {
        this.cphoto = cphoto;
    }

    public Integer getCseats() {
        return cseats;
    }

    public void setCseats(Integer cseats) {
        this.cseats = cseats;
    }

    public Double getCprice() {
        return cprice;
    }

    public void setCprice(Double cprice) {
        this.cprice = cprice;
    }

    public Integer getCmodel() {
        return cmodel;
    }

    public void setCmodel(Integer cmodel) {
        this.cmodel = cmodel;
    }

    public Integer getCgear() {
        return cgear;
    }

    public void setCgear(Integer cgear) {
        this.cgear = cgear;
    }

    public Integer getCtype() {
        return ctype;
    }

    public void setCtype(Integer ctype) {
        this.ctype = ctype;
    }

    public Integer getCstate() {
        return cstate;
    }

    public void setCstate(Integer cstate) {
        this.cstate = cstate;
    }

    @Override
    public String toString() {
        return "car{" +
                "cid=" + cid +
                ", cnumber='" + cnumber + '\'' +
                ", cbrand='" + cbrand + '\'' +
                ", ccolor='" + ccolor + '\'' +
                ", cphoto='" + cphoto + '\'' +
                ", cseats=" + cseats +
                ", cprice=" + cprice +
                ", cmodel=" + cmodel +
                ", cgear=" + cgear +
                ", ctype=" + ctype +
                ", cstate=" + cstate +
                '}';
    }
}
