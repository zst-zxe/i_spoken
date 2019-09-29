package com.springmvc.pojo;

public class Favorite {
    private Integer favoriteid;

    private Integer productid;

    private Integer areaid;

    private Integer userid;

    public Integer getFavoriteid() {
        return favoriteid;
    }

    public void setFavoriteid(Integer favoriteid) {
        this.favoriteid = favoriteid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}