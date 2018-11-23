package com.baizhi.pai.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.baizhi.pai.entity.Auction;
import com.baizhi.pai.service.AuctionService;
import com.baizhi.pai.service.Auction_reService;

@Controller
public class AuctionController {
	@Autowired
	private AuctionService auService;
	
	
	
	private List<Auction> auList;
	private Auction auction;
	private int id;
	private int auction_id;
	
	
	

	@RequestMapping("/getAuctionAll")
	public String getAll(Auction auction,Map map) {
		auList = auService.getAll(auction);
		map.put("key", auList);
		return "main";
	}


	@RequestMapping("/delete")
	public String delete(int auction_id) {
		auService.delete(auction_id);
		return "redirect:/getAuctionAll.do";
	}


	@RequestMapping("/insert")
	public String insert(MultipartFile image, Auction auction)
			throws IllegalStateException, IOException {

		String fileName = image.getOriginalFilename();
		fileName = new Date().getTime() + "-" + fileName;

		auction.setAuction_pic(fileName);

		image.transferTo(new File(
				"D:\\apache-tomcat-6.0.29\\webapps\\PageAcution\\images\\"
						+ fileName));
		auService.insert(auction);
		return "redirect:/getAuctionAll.do";

	}


	@RequestMapping("/getOne")
	public String getOne(int auction_id, Map map) {
		auction = auService.selectOne(auction_id);
		map.put("aukey", auction);
		return "update";
	}
	@RequestMapping("/update")
	public String update(Auction auction,MultipartFile image,HttpServletRequest request) throws IllegalStateException, IOException{
		if(!"".equals(image.getOriginalFilename())){

			String relPath=request.getRealPath("/images");

			String newFileName=new Date().getTime()+"-"+image.getOriginalFilename();
			image.transferTo(new File(relPath+"/"+newFileName));

			auction.setAuction_pic(newFileName);
		}
		auService.update(auction);
		return "redirect:/getAuctionAll.do";
	}
	
	
	public int getAuction_id() {
		return auction_id;
	}
	public void setAuction_id(int auction_id) {
		this.auction_id = auction_id;
	}
	public Auction getAuction() {
		return auction;
	}
	public void setAuction(Auction auction) {
		this.auction = auction;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<Auction> getAuList() {
		return auList;
	}
	public void setAuList(List<Auction> auList) {
		this.auList = auList;
	}
	
	public AuctionService getAuService() {
		return auService;
	}

	public void setAuService(AuctionService auService) {
		this.auService = auService;
	}
	
	

}
