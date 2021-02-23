package com.shiyq.pojo;

import java.sql.Date;

/**
 * @author shiyq
 * @create 2021-02-08 20:47
 */
public class UserDetail {
    private int detailId;
    private String nickname;
    private String realName;
    private String sex;
    private Date birthday;
    private String phone;
    private String email;
    private String headImg;
    private UserAddr curAddr;
    private int sellingCount;
    private int soldCount;
    private int collectCount;
    private int buyCount;


    public UserDetail() {
    }

    public UserDetail(int detailId, String nickname, String realName, String sex, Date birthday, String phone, String email, String headImg, UserAddr curAddr, int sellingCount, int soldCount, int collectCount, int buyCount) {
        this.detailId = detailId;
        this.nickname = nickname;
        this.realName = realName;
        this.sex = sex;
        this.birthday = birthday;
        this.phone = phone;
        this.email = email;
        this.headImg = headImg;
        this.curAddr = curAddr;
        this.sellingCount = sellingCount;
        this.soldCount = soldCount;
        this.collectCount = collectCount;
        this.buyCount = buyCount;
    }

    public int getDetailId() {
        return detailId;
    }

    public void setDetailId(int detailId) {
        this.detailId = detailId;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public UserAddr getCurAddr() {
        return curAddr;
    }

    public void setCurAddr(UserAddr curAddr) {
        this.curAddr = curAddr;
    }

    public int getSellingCount() {
        return sellingCount;
    }

    public void setSellingCount(int sellingCount) {
        this.sellingCount = sellingCount;
    }

    public int getSoldCount() {
        return soldCount;
    }

    public void setSoldCount(int soldCount) {
        this.soldCount = soldCount;
    }

    public int getCollectCount() {
        return collectCount;
    }

    public void setCollectCount(int collectCount) {
        this.collectCount = collectCount;
    }

    public int getBuyCount() {
        return buyCount;
    }

    public void setBuyCount(int buyCount) {
        this.buyCount = buyCount;
    }
}
