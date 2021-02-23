package org.shiyq.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author shiyq
 * @create 2021-02-23 10:54
 */
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();

        // 如果请求的是login、userLogin、register、userRegister、/all、/single，则放行
        String action = request.getRequestURI();
        if (action.contains("/css") || action.contains("/images") || action.contains("/upload") || action.contains("/common")
                || action.contains("/all") || action.contains("/single")
                || action.contains("ogin") || action.contains("egister"))
            return true;
        // 如果已登录，放行
        if (session.getAttribute("user") != null)
            return true;
        // 未登录，转发到登录页面
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
        return false;
    }
}
