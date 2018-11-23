package com.baizhi.pai.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.pai.entity.Auction;
import com.baizhi.pai.entity.Auction_record;
import com.baizhi.pai.entity.User;
import com.baizhi.pai.service.AuctionService;
import com.baizhi.pai.service.Auction_reService;

@Controller
public class Auction_reController {
	
	@Autowired
	private Auction_reService auService;
	@Autowired
	private AuctionService auctionSe;
	
	
	@RequestMapping("/selectRecord")

	public String  selectRecord(int auction_id,Map map){
		Auction auction=auctionSe.selectOne(auction_id);
		map.put("auction", auction);
		List<Auction_record> recordList=auService.getAll(auction_id);
		map.put("recordList", recordList);
		return "jingpai";
	}
	
	@RequestMapping("/insertRecord")
	public String insert(Auction_record auctionre ,HttpSession session){

		User user=(User) session.getAttribute("user");
		auctionre.setUser_id(user.getUser_id());
		auService.insert(auctionre);
		session.setAttribute("auss", auctionre);
		return"redirect:/selectRecord.do?auction_id="+auctionre.getAuction_id();
	}
	

/*	@RequestMapping("/delete")
	public String delete(int auction_id){

		auService.delete(auction_id);

		auctionSe.delete(auction_id);
		
		return "redirect:/getAuctionAll.do";
		
	}*/
}
