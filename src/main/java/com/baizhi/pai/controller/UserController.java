package com.baizhi.pai.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.pai.entity.User;
import com.baizhi.pai.service.UserService;





@Controller

public class UserController {
	@Autowired
	private UserService userService;
	private User user;
	
	/**
	 * getOne��ʾ��½
	 * @param user_name
	 * @param user_password
	 * @param kap
	 * @param session
	 * @param map
	 * @return
	 */
	@RequestMapping("/getUserOne")
	public String getOne(String user_name, String user_password, String kap,
			HttpSession session, Map map) {

		String aa = (String) session.getAttribute("kapq");
		user = userService.selectOne(user_name, user_password);
		session.setAttribute("user", user);
		System.out.println(user);

		if (aa.equalsIgnoreCase(kap)) {
			return "redirect:/getAuctionAll.do";
		} else {
			map.put("error", "cuowu");
			return "login";
		}

	}
	
	

	public  String getAll(){
		return "";
	}
	/**
	 * ��ʾע��
	 * @param user
	 * @return
	 */
	@RequestMapping("/regist")
	public String regist(User user,HttpSession session,String kap){

		String aa =(String) session.getAttribute("kapq");
		if(aa.equalsIgnoreCase(kap)){
			userService.insert(user);
			session.setAttribute("user", user);
			return "redirect:/getAuctionAll.do";
		}else{
			return "regist";
		}
			
	}

	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {


		session.removeAttribute("user");
		return "login";
	}
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	
	
}
