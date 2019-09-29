package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.pojo.User;
import com.springmvc.service.UserService;

@Controller
public class TestController {

	@Autowired
	UserService userService;
	@RequestMapping("/hello")
	public String hello(String a, Model model) {
		Integer id = Integer.parseInt(a);
		System.out.println(id);
		User user = userService.selectUserById(id);
		System.out.println(user);
		model.addAttribute("msg","终于成功了，操");
		model.addAttribute("user",user);
		return "test1";
	}
	
}
