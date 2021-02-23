package org.shiyq.controller;

import org.shiyq.pojo.User;
import org.shiyq.pojo.UserAddr;
import org.shiyq.pojo.UserDetail;
import org.shiyq.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * @author shiyq
 * @create 2021-02-08 9:35
 */
@Controller
@RequestMapping("/user")
public class UserController {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    /**
     * 进入首页
     */
    @RequestMapping
    public String toJsp(){
        return "redirect:/goods/all/recent/1";
    }

    /**
     * 进入登录页面
     * @return  返回注册页面
     */
    @RequestMapping("/login")
    public String toLoginJsp(){
        return "login";
    }

    /**
     * 进入注册页面
     * @return  返回注册页面
     */
    @RequestMapping("/register")
    public String toRegisterJsp(){
        return "register";
    }

    /**
     * 用户登录
     * @param userName  获取用户输入的用户名
     * @param userPwd   获取用户输入的密码
     * @param session   获取session，登录成功则写入用户对象
     * @param model     返回提示信息
     * @return  失败再次返回登录页面，成功则进入首页
     */
    @RequestMapping("/useLogin")
    public String userLogin(@RequestParam("userName")String userName,
                            @RequestParam("userPwd")String userPwd,
                            HttpSession session,
                            Model model){
        User user = userService.findUserByUserName(userName);
        if (user == null){
            model.addAttribute("msg1", "用户名错误或不存在！");
            return "login";
        } else{
            if (!userPwd.equals(user.getUserPwd())){
                model.addAttribute("msg2", "密码错误！");
                return "login";
            } else{
                session.setAttribute("user", user);
                session.setAttribute("allRegDays", userService.getAllRegDays(user.getUserReg()));
                return "redirect:/goods/all/recent/1";
            }
        }
    }

    /**
     * 用户注册
     * @param userName  用户名
     * @param userPwd   用户密码
     * @param rePwd     确认密码
     * @param model     返回提示信息
     * @return  失败再次返回注册页面，成功则返回登录页面
     */
    @RequestMapping("/userRegister")
    public String userRegister(@RequestParam("userName")String userName,
                               @RequestParam("userPwd")String userPwd,
                               @RequestParam("rePwd")String rePwd,
                               Model model){
        if (userService.findUserByUserName(userName) != null){
            model.addAttribute("msg_name", "用户名已存在");
            return "register";
        }else {
            if (!userPwd.equals(rePwd)){
                model.addAttribute("msg_pwd", "请重新确认密码");
                model.addAttribute("userName", userName);
                model.addAttribute("userPwd", userPwd);
                return "register";
            }else {
                // TODO 这里是不是不应该通过new的方式创建对象，而应该通过Spring注入？怎么做？
                User user = new User(userName, userPwd, new java.sql.Date(new Date().getTime()));
                userService.saveUser(user);
                return "login";
            }
        }
    }

    /**
     * 用户登出
     * @param session   从session中移除用户对象
     * @return  返回首页
     */
    @RequestMapping("/userLoginOut")
    public String userLoginOut(HttpSession session){
        session.removeAttribute("user");
        return "redirect:/goods/all/recent/1";
    }

    /**
     * 查询用户详细信息
     * @param userId    用户id
     * @param model     写入传值
     * @return  返回
     */
    @RequestMapping("/userInfo/{userId}")
    public String showUserInfo(@PathVariable int userId,
                               Model model){
        List<UserAddr> userAddrList = userService.findUserAddrById(userId);
        model.addAttribute("userAddrList",userAddrList);
        return "me-info";
    }

    /**
     * 更新用户详细信息
     * @param userDetail    新的用户信息
     * @return  返回
     */
    @RequestMapping("/userUpdate")
    public String updateUserInfo(@ModelAttribute UserDetail userDetail,
                                 @RequestParam("file") CommonsMultipartFile file,
                                 HttpSession session,
                                 HttpServletRequest request){
        // 更新数据库
        userService.updateUserDetail(userDetail, file, request);
        // 更新session中的user对象
        User user = (User) session.getAttribute("user");
        user.setUserDetail(userService.findUserDetailById(userDetail.getDetailId()));
        session.setAttribute("user", user);
        // 返回
        return "redirect:/user/userInfo/"+userDetail.getDetailId();
    }

    /**
     * 进入用户详情修改页面
     * @return 返回
     */
    @RequestMapping("/userModify")
    public String toModifyJsp(){
        return "me-info-modify";
    }
}
