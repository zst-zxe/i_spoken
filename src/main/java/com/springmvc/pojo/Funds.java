package com.springmvc.pojo;

public class Funds {
    private Integer fundsid;

    private Double fundsnum;

    private String fundscreatetime;

    private Integer userid;

    private Integer bussinessid;

    public Integer getFundsid() {
        return fundsid;
    }

    public void setFundsid(Integer fundsid) {
        this.fundsid = fundsid;
    }

    public Double getFundsnum() {
        return fundsnum;
    }

    public void setFundsnum(Double fundsnum) {
        this.fundsnum = fundsnum;
    }

    public String getFundscreatetime() {
        return fundscreatetime;
    }

    public void setFundscreatetime(String fundscreatetime) {
        this.fundscreatetime = fundscreatetime == null ? null : fundscreatetime.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getBussinessid() {
        return bussinessid;
    }

    public void setBussinessid(Integer bussinessid) {
        this.bussinessid = bussinessid;
    }

    @Override
    public String toString() {
        return "Funds{" +
                "fundsid=" + fundsid +
                ", fundsnum=" + fundsnum +
                ", fundscreatetime='" + fundscreatetime + '\'' +
                ", userid=" + userid +
                ", bussinessid=" + bussinessid +
                '}';
    }
}