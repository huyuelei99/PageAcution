package com.baizhi.pai.dao;

import org.apache.ibatis.annotations.Param;

import com.baizhi.pai.entity.User;

public interface UserDao {

	User selectOne(@Param("user_name") String user_name, @Param("user_password") String user_password);

	void insert(User user);
	
	

}
