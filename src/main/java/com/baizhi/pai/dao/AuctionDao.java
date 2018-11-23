package com.baizhi.pai.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhi.pai.entity.Auction;

public interface AuctionDao {

	List<Auction> getAll(Auction auction);
	

	void delete(int auction_id);
	

	Auction selectOne(int auction_id);
	

	void update(Auction auction);

	void insert(Auction auction);
	

	Auction selectByOne(int auction_id);
}
