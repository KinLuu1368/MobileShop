package com.kien.controller.logincontrol;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.kien.SessionService;
import com.kien.model.Account;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class AuthInterceptor implements HandlerInterceptor {
    @Autowired
    private SessionService session;
    
    @Override
    public boolean preHandle(@NonNull HttpServletRequest req, @NonNull HttpServletResponse resp, @NonNull Object handler) throws Exception {
        String uri = req.getRequestURI();
        System.out.println(uri);
        Account user = session.getAccount("user");
        
        String error = "";
        
        // chưa đăng nhập
        if(user == null) { 
        	error = "Please login!";
        }
        
        // không đúng vai trò
        else if(!user.isAdmin() && uri.startsWith("/admin/")) {
        	error = "Access denied!";
        }
        
        if(error.length() > 0) { // có lỗi
	        session.set("security-uri", uri);
	        resp.sendRedirect("/account/login?error=" + error);
	        return false;
        }
        return true;
    }
}