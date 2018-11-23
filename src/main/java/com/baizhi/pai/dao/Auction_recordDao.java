package com.baizhi.pai.dao;

import java.util.List;

import com.baizhi.pai.entity.AuctionDTO;
import com.baizhi.pai.entity.Auction_record;

public interface Auction_recordDao {

	List<Auction_record> getAll(int auction_id);

	void insert(Auction_record auctionre);
	

	void delete(int auction_id);
	

	Auction_record selectOne(int auction_id);
}
