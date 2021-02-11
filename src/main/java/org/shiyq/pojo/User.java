package org.shiyq.pojo;

import java.sql.Date;

/**
 * @author shiyq
 * @create 2021-02-08 20:43
 */
public class User {

    private int userId;
    private String userName;
    private String userPwd;
    private Date userReg;
    private UserDetail userDetail;

    public User() {
    }

    public User(String userName, String userPwd, Date userReg) {
        this.userName = userName;
        this.userPwd = userPwd;
        this.userReg = userReg;
    }

    public User(int userId, String userName, String userPwd, Date userReg, UserDetail userDetail) {
        this.userId = userId;
        this.userName = userName;
        this.userPwd = userPwd;
        this.userReg = userReg;
        this.userDetail = userDetail;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public Date getUserReg() {
        return userReg;
    }

    public void setUserReg(Date userRegister) {
        this.userReg = userRegister;
    }

    public UserDetail getUserDetail() {
        return userDetail;
    }

    public void setUserDetail(UserDetail userDetail) {
        this.userDetail = userDetail;
    }

}
