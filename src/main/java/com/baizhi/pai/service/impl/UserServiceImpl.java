package com.baizhi.pai.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.pai.dao.UserDao;
import com.baizhi.pai.entity.User;
import com.baizhi.pai.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	@Override
	//登陆功能
	public User selectOne(String user_name, String user_password) {
		return  userDao.selectOne(user_name, user_password); 
	}
	/**
	 * 表示注册
	 */
	public void insert(User user) {
		userDao.insert(user);

	}
	
	
	
	
	
	
	
	
	
	
	
	
}
