package com.kien;
import org.springframework.stereotype.Service;

import com.kien.model.Account;

import jakarta.servlet.http.HttpSession;

@Service
public class SessionService {
    private HttpSession session;

    public Account getAccount(String key) {
        return (Account) session.getAttribute(key);
    }
    
    public void setAccount(String key, Account value) {
        session.setAttribute(key, value);
    }
    
    public SessionService(HttpSession session) {
        this.session = session;
    }

    public String get(String key) {
        return (String) session.getAttribute(key);
    }

    public void set(String key, String value) {
        session.setAttribute(key, value);
    }
    
    
    
    
}