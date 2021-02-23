package com.shiyq.pojo;

import java.sql.Timestamp;

/**
 * @author shiyq
 * @create 2021-02-09 20:06
 */
public class UserOrder {
    private int orderId;
    private int userId;
    private Goods goods;
    private Timestamp datetime;

    public UserOrder() {
    }

    public UserOrder(int orderId, int userId, Goods goods, Timestamp datetime) {
        this.orderId = orderId;
        this.userId = userId;
        this.goods = goods;
        this.datetime = datetime;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Timestamp getDatetime() {
        return datetime;
    }

    public void setDatetime(Timestamp datetime) {
        this.datetime = datetime;
    }
}
