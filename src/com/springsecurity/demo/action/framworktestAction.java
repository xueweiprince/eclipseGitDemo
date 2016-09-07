package com.springsecurity.demo.action;

import java.security.Principal;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/security")
public class framworktestAction {

	@RequestMapping(value="deploy")
	public void test(){
		System.out.println("------------startasdfds----------");
		System.out.println("------------end------------");
	}
	
	/**
	 * 获取当前登录用户
	 */
	@RequestMapping(value="currentUser")
	public void getCurrentUser(){
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(principal instanceof UserDetails){
			String userName=((UserDetails)principal).getUsername();
			String passWord=((UserDetails)principal).getPassword();
			System.out.println(userName+"\t"+passWord);
		}
		if(principal instanceof Principal){
			String userName=((Principal)principal).getName();
			System.out.println(userName);
		}
	}
	
	@RequestMapping(value="login")
	public boolean login(){
		System.out.println("------------start----------");
		System.out.println("------------end------------");
		return true;
	}
	
}
