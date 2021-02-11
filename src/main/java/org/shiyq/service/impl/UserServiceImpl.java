package org.shiyq.service.impl;

import org.shiyq.dao.UserMapper;
import org.shiyq.pojo.User;
import org.shiyq.pojo.UserAddr;
import org.shiyq.pojo.UserDetail;
import org.shiyq.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author shiyq
 * @create 2021-02-08 21:09
 */
@Service
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    /**
     * 查找用户对象
     * @param userName：用户名
     * @return 用户对象
     */
    @Override
    public User findUserByUserName(String userName) {
        return userMapper.findUserByUserName(userName);
    }

    /**
     * 注册用户
     * @param user：用户对象
     */
    @Override
    public void saveUser(User user){
        userMapper.saveUserDetail(user.getUserName());
        userMapper.saveUser(user);
    }

    /**
     * 获取用户注册时长（天）
     * @param regDate   用户注册时间
     * @return  天
     */
    public int getAllRegDays(java.sql.Date regDate){
        return (int) (new java.util.Date().getTime() - regDate.getTime())/1000/3600/24 + 1;
    }

    /**
     * 查找用户详情对象
     * @param user_detail   用户id
     * @return  用户详情对象
     */
    public UserDetail findUserDetailById(int user_detail){
        return userMapper.findUserDetailById(user_detail);
    }

    /**
     * 查询用户收货地址
     * @param userId    用户id
     * @return  返回地址集合
     */
    public List<UserAddr> findUserAddrById(int userId) {
        return userMapper.findUserAddrById(userId);
    }

    /**
     * 更新用户详细信息
     * @param userDetail  用户id
     */
    public void updateUserDetailById(UserDetail userDetail) {
        userMapper.updateUserDetailById(userDetail);
    }

}
