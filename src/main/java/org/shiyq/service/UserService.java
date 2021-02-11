package org.shiyq.service;

import org.shiyq.pojo.User;
import org.shiyq.pojo.UserAddr;
import org.shiyq.pojo.UserDetail;

import java.util.List;

/**
 * @author shiyq
 * @create 2021-02-08 21:09
 */
public interface UserService {

    /**
     * 查找用户对象
     * @param userName：用户名
     * @return 用户对象
     */
    public User findUserByUserName(String userName);

    /**
     * 注册用户
     * @param user：用户对象
     */
    public void saveUser(User user);

    /**
     * 获取用户注册时长（天）
     * @param regDate   用户注册时间
     * @return  天
     */
    public int getAllRegDays(java.sql.Date regDate);

    /**
     * 查找用户详情对象
     * @param user_detail   用户id
     * @return  用户详情对象
     */
    UserDetail findUserDetailById(int user_detail);

    /**
     * 查询用户收货地址
     * @param userId    用户id
     * @return  返回地址集合
     */
    List<UserAddr> findUserAddrById(int userId);

    /**
     * 更新用户详细信息
     * @param userDetail  用户id
     */
    void updateUserDetailById(UserDetail userDetail);

}
