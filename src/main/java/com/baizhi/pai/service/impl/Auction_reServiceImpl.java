package com.baizhi.pai.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.pai.dao.Auction_recordDao;
import com.baizhi.pai.entity.AuctionDTO;
import com.baizhi.pai.entity.Auction_record;
import com.baizhi.pai.service.Auction_reService;

@Service
public class Auction_reServiceImpl implements Auction_reService {
	
	@Autowired
	private Auction_recordDao auDao;
	
	@Override
	public List<Auction_record> getAll(int auction_id) {
		return auDao.getAll(auction_id);
	}

	@Override
	public void insert(Auction_record auctionre) {
		auDao.insert(auctionre);
	}
	
	//É¾³ý¾ºÅÄ¼ÇÂ¼
	public void delete(int auction_id){
		auDao.delete(auction_id);
	}
	
	//²éÑ¯µ¥¸ö¾ºÅÄ¼ÇÂ¼
	public Auction_record selectOne(int auction_id){
		return auDao.selectOne(auction_id);
	}
}
