package com.baizhi.pai.service;

import com.baizhi.pai.entity.User;

public interface UserService {
    //登陆功能
    User selectOne (String user_name,String user_password);
    //注册功能
    void insert(User user);
}
