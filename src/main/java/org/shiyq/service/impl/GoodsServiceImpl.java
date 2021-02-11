package org.shiyq.service.impl;

import org.shiyq.dao.GoodsMapper;
import org.shiyq.pojo.Goods;
import org.shiyq.pojo.GoodsCollection;
import org.shiyq.pojo.GoodsGuestbook;
import org.shiyq.pojo.UserOrder;
import org.shiyq.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @author shiyq
 * @create 2021-02-09 17:35
 */
@Service
public class GoodsServiceImpl implements GoodsService {

    private GoodsMapper goodsMapper;

    @Autowired
    public void setGoodsMapper(GoodsMapper goodsMapper) {
        this.goodsMapper = goodsMapper;
    }

    /**
     * 查询所有商品
     * @param sort  分类查询
     * @return  商品列表
     */
    @Override
    public List<Goods> findAllGoodsBySort(String sort) {
        if ("recent".equals(sort))
            sort = null;
        return goodsMapper.findAllGoodsBySort(sort);
    }

    /**
     * 查询商品
     * @param goodsId   商品id
     * @return  商品对象
     */
    @Override
    public Goods findSingleGoodsById(int goodsId) {
        return goodsMapper.findSingleGoodsById(goodsId);
    }

    /**
     * 查询所有商品留言
     * @param goodsId   商品id
     * @return  留言集合
     */
    public List<GoodsGuestbook> findAllMsgByGoodsId(int goodsId) {
        return goodsMapper.findAllMsgByGoodsId(goodsId);
    }

    /**
     * 保存商品
     * @param goods 商品对象
     */
    public void saveGoods(Goods goods) {
        System.out.println(1);
        goodsMapper.saveGoods(goods);
    }

    /**
     * 查询用户发布的所有商品
     * @param userDetail    用户id
     * @return  返回所有商品集合
     */
    public List<Goods> findAllMyGoodsByUserId(int userDetail) {
        return goodsMapper.findAllMyGoodsByUserId(userDetail);
    }

    /**
     * 查询用户收藏的所有商品
     * @param userId    用户id
     * @return  返回所有商品集合
     */
    public List<GoodsCollection> findAllMyCollectionByUserId(int userId) {
        return goodsMapper.findAllMyCollectionByUserId(userId);
    }

    /**
     * 添加收藏
     * @param userId    用户id
     * @param goodsId   商品id
     */
    public int saveCollectionByUserIdAndGoodsId(HashMap hashMap) {
        return goodsMapper.saveCollectionByUserIdAndGoodsId(hashMap);
    }

    /**
     * 删除收藏
     * @param collectionId  收藏商品id
     */
    public void deleteCollectionById(int collectionId) {
        goodsMapper.deleteCollectionById(collectionId);
    }

    /**
     * 查询用户所有订单
     * @param userId    用户id
     * @return  返回订单集合
     */
    public List<UserOrder> findAllMyOrderByUserId(int userId) {
        return goodsMapper.findAllMyOrderByUserId(userId);
    }

    /**
     * 完成交易，保存订单
     * @param userOrder 订单对象
     */
    public void saveOrder(UserOrder userOrder) {
        goodsMapper.saveOrder(userOrder);
    }

    /**
     * 删除订单
     * @param orderId   订单id
     */
    public void deleteOrderById(int orderId) {
        goodsMapper.deleteOrderById(orderId);
    }

}
