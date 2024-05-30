package com.kien.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kien.SessionService;
import com.kien.dao.AccountDAO;
import com.kien.model.Account;

@Controller
@RequestMapping("/admin/account")
public class AccountController {
	@Autowired
	AccountDAO dao;
	
	@Autowired
	SessionService session;
	
	@GetMapping("/index")
    public String index(Model model) {
        Account user = session.getAccount("user");
        List<Account> accounts = dao.findAll();
        model.addAttribute("user",user);
        model.addAttribute("items", accounts);
        return "/admin/Login/index";
    }
	
	@PostMapping("/create")
    public String create(@ModelAttribute("user") Account user) {
        dao.save(user);
        return "redirect:/admin/account/index";
    }

    @GetMapping("/edit/{username}")
    public String edit(@PathVariable("username") String username, Model model) {
        Account user = dao.findByUsername(username);
        model.addAttribute("user", user);
        List<Account> accounts = dao.findAll();
        model.addAttribute("items", accounts);
        return "/admin/Login/index";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("user") Account user) {
        dao.save(user);
        return "redirect:/admin/account/index";
    }

    @GetMapping("/remove/{username}")
    public String delete(@PathVariable("username") String username) {
    	Account user = dao.findByUsername(username);
        dao.delete(user);
        return "redirect:/admin/account/index";
    }
}
