package org.shiyq.dao;

import org.shiyq.pojo.Goods;
import org.shiyq.pojo.GoodsCollection;
import org.shiyq.pojo.GoodsGuestbook;
import org.shiyq.pojo.UserOrder;

import java.util.HashMap;
import java.util.List;

/**
 * @author shiyq
 * @create 2021-02-09 16:43
 */
public interface GoodsMapper {

    /**
     * 查询所有商品
     * @param sort  分类查询
     * @return  商品列表
     */
    List<Goods> findAllGoodsBySort(String sort);

    /**
     * 查询商品
     * @param goodsId   商品id
     * @return  商品对象
     */
    Goods findSingleGoodsById(int goodsId);

    /**
     * 查询所有商品留言
     * @param goodsId   商品id
     * @return  留言集合
     */
    List<GoodsGuestbook> findAllMsgByGoodsId(int goodsId);

    /**
     * 保存商品
     * @param goods 商品对象
     */
    void saveGoods(Goods goods);

    /**
     * 查询用户发布的所有商品
     * @param userDetail    用户id
     * @return  返回所有商品集合
     */
    List<Goods> findAllMyGoodsByUserId(int userDetail);

    /**
     * 查询用户收藏的所有商品
     * @param userId    用户id
     * @return  返回所有商品集合
     */
    List<GoodsCollection> findAllMyCollectionByUserId(int userId);

    /**
     * 添加收藏
     * @param userId    用户id
     * @param goodsId   商品id
     */
    int saveCollectionByUserIdAndGoodsId(HashMap hashMap);

    /**
     * 删除收藏
     * @param collectionId  收藏商品id
     */
    void deleteCollectionById(int collectionId);

    /**
     * 查询用户所有订单
     * @param userId    用户id
     * @return  返回订单集合
     */
    List<UserOrder> findAllMyOrderByUserId(int userId);

    /**
     * 完成交易，保存订单
     * @param userOrder 订单对象
     */
    void saveOrder(UserOrder userOrder);

    /**
     * 删除订单
     * @param orderId   订单id
     */
    void deleteOrderById(int orderId);

}
