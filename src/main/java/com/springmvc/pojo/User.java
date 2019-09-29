package com.springmvc.pojo;

public class User {
    private Integer userid;

    private String username;

    private String userpassword;

    private String userphone;

    private String useremail;

    private Integer usersex;

    private Double userfunds;

    private String usercreatetime;

    private Integer ismember;

    private String picturename;

    private String picturepath;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    public Integer getUsersex() {
        return usersex;
    }

    public void setUsersex(Integer usersex) {
        this.usersex = usersex;
    }

    public Double getUserfunds() {
        return userfunds;
    }

    public void setUserfunds(Double userfunds) {
        this.userfunds = userfunds;
    }

    public String getUsercreatetime() {
        return usercreatetime;
    }

    public void setUsercreatetime(String usercreatetime) {
        this.usercreatetime = usercreatetime == null ? null : usercreatetime.trim();
    }

    public Integer getIsmember() {
        return ismember;
    }

    public void setIsmember(Integer ismember) {
        this.ismember = ismember;
    }

    public String getPicturename() {
        return picturename;
    }

    public void setPicturename(String picturename) {
        this.picturename = picturename == null ? null : picturename.trim();
    }

    public String getPicturepath() {
        return picturepath;
    }

    public void setPicturepath(String picturepath) {
        this.picturepath = picturepath == null ? null : picturepath.trim();
    }

    @Override
    public String toString() {
        return "User{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", userpassword='" + userpassword + '\'' +
                ", userphone='" + userphone + '\'' +
                ", useremail='" + useremail + '\'' +
                ", usersex=" + usersex +
                ", userfunds=" + userfunds +
                ", usercreatetime='" + usercreatetime + '\'' +
                ", ismember=" + ismember +
                ", picturename='" + picturename + '\'' +
                ", picturepath='" + picturepath + '\'' +
                '}';
    }
}