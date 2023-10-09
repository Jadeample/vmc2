package com.amaker.entity;

import java.util.Date;

/**
 * 订单信息表;存储平台的所有的订单信息
 * @date : 2023-10-7
 */
public class Lease {

    /** 订单号 */
    private Integer lid ;
    /** 租车用户id;外键，连接到user表的userid属性 */
    private Integer userid ;
    /** 车辆id;外键，连接到car表的cid属性 */
    private Integer cid ;
    /** 司机id;外键，连接到diver表的did属性 */
    private Integer did ;
    /** 订单开始时间 */
    private Date lstart ;
    /** 订单结束时间 */
    private Date lend ;
    /** 订单金额 */
    private Double lprice ;
    /** 订单评价;“0”为不评价，“1”为好评，“2”为差评 */
    private Integer levaluate ;
    /** 订单支付方式;“0”为微信支付，“1”为支付宝支付，“2”为网银支付 */
    private Integer lpay ;
    /** 订单状态;“0”为执行中，“1”为待支付，“2”已结束 */
    private Integer lstate ;

    public Lease() {
    }

    public Lease(Integer lid, Integer userid, Integer cid, Integer did, Date lstart, Date lend, Double lprice, Integer levaluate, Integer lpay, Integer lstate) {
        this.lid = lid;
        this.userid = userid;
        this.cid = cid;
        this.did = did;
        this.lstart = lstart;
        this.lend = lend;
        this.lprice = lprice;
        this.levaluate = levaluate;
        this.lpay = lpay;
        this.lstate = lstate;
    }

    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Date getLstart() {
        return lstart;
    }

    public void setLstart(Date lstart) {
        this.lstart = lstart;
    }

    public Date getLend() {
        return lend;
    }

    public void setLend(Date lend) {
        this.lend = lend;
    }

    public Double getLprice() {
        return lprice;
    }

    public void setLprice(Double lprice) {
        this.lprice = lprice;
    }

    public Integer getLevaluate() {
        return levaluate;
    }

    public void setLevaluate(Integer levaluate) {
        this.levaluate = levaluate;
    }

    public Integer getLpay() {
        return lpay;
    }

    public void setLpay(Integer lpay) {
        this.lpay = lpay;
    }

    public Integer getLstate() {
        return lstate;
    }

    public void setLstate(Integer lstate) {
        this.lstate = lstate;
    }

    @Override
    public String toString() {
        return "lease{" +
                "lid=" + lid +
                ", userid=" + userid +
                ", cid=" + cid +
                ", did=" + did +
                ", lstart=" + lstart +
                ", lend=" + lend +
                ", lprice=" + lprice +
                ", levaluate=" + levaluate +
                ", lpay=" + lpay +
                ", lstate=" + lstate +
                '}';
    }
}
