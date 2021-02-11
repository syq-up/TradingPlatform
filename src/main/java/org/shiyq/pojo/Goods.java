package org.shiyq.pojo;


import java.sql.Timestamp;

/**
 * @author shiyq
 * @create 2021-02-09 16:34
 */
public class Goods {
    private int goodsId;
    private UserDetail userDetail;
    private String goodsImg;
    private String goodsName;
    private double newPrice;
    private double oldPrice;
    private String quality;
    private String tradeWay;
    private String goodsDetail;
    private String sort;
    private Timestamp lastEditTime;
    private int State;

    public Goods() {
    }

    public Goods(int goodsId, UserDetail userDetail, String goodsImg, String goodsName, double newPrice, double oldPrice, String quality, String tradeWay, String goodsDetail, String sort, Timestamp lastEditTime, int state) {
        this.goodsId = goodsId;
        this.userDetail = userDetail;
        this.goodsImg = goodsImg;
        this.goodsName = goodsName;
        this.newPrice = newPrice;
        this.oldPrice = oldPrice;
        this.quality = quality;
        this.tradeWay = tradeWay;
        this.goodsDetail = goodsDetail;
        this.sort = sort;
        this.lastEditTime = lastEditTime;
        State = state;
    }

    public int getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(int goodsId) {
        this.goodsId = goodsId;
    }

    public UserDetail getUserDetail() {
        return userDetail;
    }

    public void setUserDetail(UserDetail userDetail) {
        this.userDetail = userDetail;
    }

    public String getGoodsImg() {
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public double getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(double newPrice) {
        this.newPrice = newPrice;
    }

    public double getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(double oldPrice) {
        this.oldPrice = oldPrice;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public String getTradeWay() {
        return tradeWay;
    }

    public void setTradeWay(String tradeWay) {
        this.tradeWay = tradeWay;
    }

    public String getGoodsDetail() {
        return goodsDetail;
    }

    public void setGoodsDetail(String goodsDetail) {
        this.goodsDetail = goodsDetail;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public Timestamp getLastEditTime() {
        return lastEditTime;
    }

    public void setLastEditTime(Timestamp lastEditTime) {
        this.lastEditTime = lastEditTime;
    }

    public int getState() {
        return State;
    }

    public void setState(int state) {
        State = state;
    }

}
