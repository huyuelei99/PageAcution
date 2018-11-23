package com.baizhi.pai.service;

import java.util.Date;
import java.util.List;



import com.baizhi.pai.entity.Auction;

public interface AuctionService {

	List<Auction> getAll(Auction auction);


	void delete(int auction_id);

	Auction selectOne(int auction_id);


	void update(Auction auction);
	

		void insert(Auction auction);
}
