package com.baizhi.pai.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.pai.dao.AuctionDao;
import com.baizhi.pai.entity.Auction;
import com.baizhi.pai.service.AuctionService;
@Service
public class AuctionServiceImpl implements AuctionService {
	@Autowired
	private AuctionDao auctionDao;
	
	//查询全部
	public List<Auction> getAll(Auction auction) {
		 return auctionDao.getAll(auction);
	}
	
	//删除某个
	public void delete(int auction_id) {
			auctionDao.delete(auction_id);
			
		}
	
	//添加拍卖品
		@Override
		public void insert(Auction auction) {
			auctionDao.insert(auction);	
		}	
	
	//查询某个拍卖品
	@Override
	public Auction selectOne(int auction_id) {
		return  auctionDao.selectOne(auction_id);
	}

	//修改某个拍卖品
	@Override
	public void update(Auction auction) {
		// TODO Auto-generated method stub
		auctionDao.update(auction);
	}
	
	
	

}
