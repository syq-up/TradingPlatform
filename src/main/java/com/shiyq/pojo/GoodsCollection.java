package com.shiyq.pojo;

/**
 * @author shiyq
 * @create 2021-02-09 19:59
 */
public class GoodsCollection {
    private int collectionId;
    private int userId;
    private Goods goods;

    public GoodsCollection() {
    }

    public GoodsCollection(int collectionId, int userId, Goods goods) {
        this.collectionId = collectionId;
        this.userId = userId;
        this.goods = goods;
    }

    public int getCollectId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
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
}
