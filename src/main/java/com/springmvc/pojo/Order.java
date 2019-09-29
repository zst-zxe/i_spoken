package com.springmvc.pojo;

public class Order {
    private Integer orderid;

    private Integer productid;

    private String productprice;

    private String productname;

    private String ordercreatetime;

    private Integer userid;

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getProductprice() {
        return productprice;
    }

    public void setProductprice(String productprice) {
        this.productprice = productprice == null ? null : productprice.trim();
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getOrdercreatetime() {
        return ordercreatetime;
    }

    public void setOrdercreatetime(String ordercreatetime) {
        this.ordercreatetime = ordercreatetime == null ? null : ordercreatetime.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}