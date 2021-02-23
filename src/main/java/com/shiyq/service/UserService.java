package com.shiyq.service;

import com.shiyq.pojo.User;
import com.shiyq.pojo.UserAddr;
import com.shiyq.pojo.UserDetail;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
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
    User findUserByUserName(String userName);

    /**
     * 查找用户对象
     * @param userId 用户id
     */
    void findUserByUserId(Integer userId);

    /**
     * 注册用户
     * @param user：用户对象
     */
    void saveUser(User user);

    /**
     * 获取用户注册时长（天）
     * @param regDate   用户注册时间
     * @return  天
     */
    int getAllRegDays(java.sql.Date regDate);

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
    void updateUserDetail(UserDetail userDetail, CommonsMultipartFile file, HttpServletRequest request);

}
