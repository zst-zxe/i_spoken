package com.springmvc.pojo;

public class Bussiness {
    private Integer bussinessid;

    private String bussinessname;

    private Integer bussinesssex;

    private String bussinessphone;

    private String bussinesscard;

    private Double bussinessfundsnum;

    private String bussinnessshopname;

    private String bussinesspassword;

    public Integer getBussinessid() {
        return bussinessid;
    }

    public void setBussinessid(Integer bussinessid) {
        this.bussinessid = bussinessid;
    }

    public String getBussinessname() {
        return bussinessname;
    }

    public void setBussinessname(String bussinessname) {
        this.bussinessname = bussinessname == null ? null : bussinessname.trim();
    }

    public Integer getBussinesssex() {
        return bussinesssex;
    }

    public void setBussinesssex(Integer bussinesssex) {
        this.bussinesssex = bussinesssex;
    }

    public String getBussinessphone() {
        return bussinessphone;
    }

    public void setBussinessphone(String bussinessphone) {
        this.bussinessphone = bussinessphone == null ? null : bussinessphone.trim();
    }

    public String getBussinesscard() {
        return bussinesscard;
    }

    public void setBussinesscard(String bussinesscard) {
        this.bussinesscard = bussinesscard == null ? null : bussinesscard.trim();
    }

    public Double getBussinessfundsnum() {
        return bussinessfundsnum;
    }

    public void setBussinessfundsnum(Double bussinessfundsnum) {
        this.bussinessfundsnum = bussinessfundsnum;
    }

    public String getBussinnessshopname() {
        return bussinnessshopname;
    }

    public void setBussinnessshopname(String bussinnessshopname) {
        this.bussinnessshopname = bussinnessshopname == null ? null : bussinnessshopname.trim();
    }

    public String getBussinesspassword() {
        return bussinesspassword;
    }

    public void setBussinesspassword(String bussinesspassword) {
        this.bussinesspassword = bussinesspassword == null ? null : bussinesspassword.trim();
    }
}