package com.springmvc.service;

import com.springmvc.pojo.Funds;
import com.springmvc.pojo.User;

import java.util.Map;

public interface UserService {

	public User selectUserById(Integer userid);
	public int insertUser(User user);
	public User selectUserByName(String username);
	int updateUser(User user);


}
