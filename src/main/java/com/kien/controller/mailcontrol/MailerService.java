package com.kien.controller.mailcontrol;

import jakarta.mail.MessagingException;

public interface MailerService {
	void send(MailInfo mail) throws MessagingException;
	
	void send(String to, String subject, String body) throws MessagingException;
	
	/**
		* Xếp mail vào hàng đợi
		* @param mail thông tin email
	*/
	
	void queue(MailInfo mail);
	/**
	* Tạo MailInfo và xếp vào hàng đợi
	* @param to email người nhận
	* @param subject tiêu đề email
	* @param body nội dung email
	*/
	void queue(String to, String subject, String body);
}
