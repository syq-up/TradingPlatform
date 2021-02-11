package org.shiyq.dao;

import org.shiyq.pojo.User;
import org.shiyq.pojo.UserAddr;
import org.shiyq.pojo.UserDetail;

import java.util.List;

/**
 * @author shiyq
 * @create 2021-02-08 20:55
 */
public interface UserMapper {

    /**
     * 查找用户对象
     * @param userName：用户名
     * @return 用户对象
     */
    User findUserByUserName(String userName);

    /**
     * 注册用户，添加User对象到数据库
     * @param user：用户对象
     */
    void saveUser(User user);

    /**
     * 注册用户，添加UserDetail对象到数据库
     * @param nickname：用户名作为默认昵称
     */
    void saveUserDetail(String nickname);

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
     * @param userDetail  用户详情对象
     */
    void updateUserDetailById(UserDetail userDetail);

}
