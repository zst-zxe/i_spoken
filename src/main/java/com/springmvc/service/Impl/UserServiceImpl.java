package com.springmvc.service.Impl;

import com.springmvc.mapper.FundsMapper;
import com.springmvc.pojo.Funds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.mapper.UserMapper;
import com.springmvc.pojo.User;
import com.springmvc.service.UserService;

import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserMapper userMapper;

	@Autowired
	private FundsMapper fundsMapper;
	
	public User selectUserById(Integer userid) {
		return userMapper.selectByPrimaryKey(userid);
	}

	@Override
	public int insertUser(User user) {
		return userMapper.insert(user);
	}

	@Override
	public User selectUserByName(String username) {
		return userMapper.selectByName(username);
	}

	@Override
	public int updateUser(User user) {
		return userMapper.updateByPrimaryKeySelective(user);
	}


}
