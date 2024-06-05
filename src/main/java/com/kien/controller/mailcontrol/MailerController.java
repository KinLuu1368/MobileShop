package com.kien.controller.mailcontrol;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kien.SessionService;
import com.kien.dao.AccountDAO;
import com.kien.library.HashCodeSHA256;
import com.kien.model.Account;

import jakarta.mail.MessagingException;


@Controller
public class MailerController {
	@Autowired
	SessionService session;
	
	@Autowired
	AccountDAO dao;
	
    private final MailerService mailer;

    public MailerController(MailerService mailer) {
        this.mailer = mailer;
    }

    @ResponseBody
    @RequestMapping("/demo")
    public String demo(Model model) {
        mailer.queue("luukien323@gmail.com", "Subject", "Body");
        return "Mail của bạn sẽ được gửi đi trong giây lát";
    }
    
    @RequestMapping("/account/active")
    public String sendEmail() {
        try {
        	Account acc = session.getAccount("userRes");
        	String mail = acc.getEmail();
            String to = mail;
            String subject = "Active account";
            String code = generateRandomString();
            String body = "Your code is: " + code;
            
            
            String hashCode = HashCodeSHA256.hashSHA256(code);
            System.out.println(hashCode);
            session.set("codeActive", hashCode);
            
            
            mailer.send(to, subject, body);

            return "/account/active";
        } catch (MessagingException e) {
            return "Failed to send email: " + e.getMessage();
        }
    }
    
    @PostMapping("/account/active")
    public String activeAccount(@RequestParam("activationCode") String activationCode, Model model) {
    	try {
        	Account acc = session.getAccount("userRes");
        	String codeInput = HashCodeSHA256.hashSHA256(activationCode);
            
        	String codeSession = session.get("codeActive");
            System.out.println(codeSession);
            if (codeInput.equalsIgnoreCase(codeSession)) {
            	dao.save(acc);
            	return "redirect:/Assignment/home";
            } else {
            	model.addAttribute("message", "invalid code");
            	return "/account/active";
            }
        } catch (Exception e) {
            return e.getMessage();
        }
    }
    
    public static String generateRandomString() {
        Random random = new Random();
        StringBuilder stringBuilder = new StringBuilder();

        for (int i = 0; i < 6; i++) {
            int randomNumber = random.nextInt(10); // Sinh số ngẫu nhiên từ 0 đến 9
            stringBuilder.append(randomNumber);
        }

        return stringBuilder.toString();
    }
}
