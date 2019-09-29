package com.springmvc.pojo;

public class Product {
    private Integer productid;

    private String productname;

    private String productprice;

    private String productdescription;

    private String productpicturename;

    private String productpicturepath;

    private Integer bussinessid;

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getProductprice() {
        return productprice;
    }

    public void setProductprice(String productprice) {
        this.productprice = productprice == null ? null : productprice.trim();
    }

    public String getProductdescription() {
        return productdescription;
    }

    public void setProductdescription(String productdescription) {
        this.productdescription = productdescription == null ? null : productdescription.trim();
    }

    public String getProductpicturename() {
        return productpicturename;
    }

    public void setProductpicturename(String productpicturename) {
        this.productpicturename = productpicturename == null ? null : productpicturename.trim();
    }

    public String getProductpicturepath() {
        return productpicturepath;
    }

    public void setProductpicturepath(String productpicturepath) {
        this.productpicturepath = productpicturepath == null ? null : productpicturepath.trim();
    }

    public Integer getBussinessid() {
        return bussinessid;
    }

    public void setBussinessid(Integer bussinessid) {
        this.bussinessid = bussinessid;
    }
}