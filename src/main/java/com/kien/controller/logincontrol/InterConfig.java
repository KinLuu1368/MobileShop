package com.kien.controller.logincontrol;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.lang.NonNull;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterConfig implements WebMvcConfigurer{
	@Autowired
	AuthInterceptor auth;
	
	@Override
	public void addInterceptors(@NonNull InterceptorRegistry registry) {
		registry.addInterceptor(auth)
		.addPathPatterns("/account/edit", "/admin/**")
		.excludePathPatterns("/assets/**", "/admin/home/index");
	}
}
