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
	
	//��ѯȫ��
	public List<Auction> getAll(Auction auction) {
		 return auctionDao.getAll(auction);
	}
	
	//ɾ��ĳ��
	public void delete(int auction_id) {
			auctionDao.delete(auction_id);
			
		}
	
	//�������Ʒ
		@Override
		public void insert(Auction auction) {
			auctionDao.insert(auction);	
		}	
	
	//��ѯĳ������Ʒ
	@Override
	public Auction selectOne(int auction_id) {
		return  auctionDao.selectOne(auction_id);
	}

	//�޸�ĳ������Ʒ
	@Override
	public void update(Auction auction) {
		// TODO Auto-generated method stub
		auctionDao.update(auction);
	}
	
	
	

}
