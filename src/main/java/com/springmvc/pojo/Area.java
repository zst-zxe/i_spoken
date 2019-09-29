package com.springmvc.pojo;

public class Area {
    private Integer areaid;

    private String areaname;

    private Integer areatype;

    private Integer userid;

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public String getAreaname() {
        return areaname;
    }

    public void setAreaname(String areaname) {
        this.areaname = areaname == null ? null : areaname.trim();
    }

    public Integer getAreatype() {
        return areatype;
    }

    public void setAreatype(Integer areatype) {
        this.areatype = areatype;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}