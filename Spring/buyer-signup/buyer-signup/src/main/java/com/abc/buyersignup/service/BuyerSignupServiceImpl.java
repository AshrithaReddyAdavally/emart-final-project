package com.abc.buyersignup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.buyersignup.dao.BuyerSignupDao;
import com.abc.buyersignup.entity.BuyerSignupEntity;
import com.abc.buyersignup.pojo.BuyerSignupPojo;
@Service
public class BuyerSignupServiceImpl implements BuyerSignupService{
@Autowired
BuyerSignupDao buyerSignupDao;
	
	
	@Override
	public BuyerSignupPojo addBuyer(BuyerSignupPojo buyerSignupPojo) {
	BuyerSignupEntity	buyerSignupEntity = new BuyerSignupEntity(
				buyerSignupPojo.getId(),
				buyerSignupPojo.getUsername(),
				buyerSignupPojo.getPassword(), 
				buyerSignupPojo.getEmail(),
				buyerSignupPojo.getMobile(),
				buyerSignupPojo.getDate()
				);
	buyerSignupDao.save(buyerSignupEntity);	
	return buyerSignupPojo;
	}
	
	 
}
