package com.baizhi.pai.entity;

import java.util.Date;

public class AuctionDTO {
	private  String user_name;//¾¹ÅÄÈË
	private Double auction_price;//¾ºÅÄ¼Û¸ñ
	private Date auction_time;
	public AuctionDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AuctionDTO(String user_name, Double auction_price, Date auction_time) {
		super();
		this.user_name = user_name;
		this.auction_price = auction_price;
		this.auction_time = auction_time;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Double getAuction_price() {
		return auction_price;
	}
	public void setAuction_price(Double auction_price) {
		this.auction_price = auction_price;
	}
	public Date getAuction_time() {
		return auction_time;
	}
	public void setAuction_time(Date auction_time) {
		this.auction_time = auction_time;
	}
	
	
	
}
