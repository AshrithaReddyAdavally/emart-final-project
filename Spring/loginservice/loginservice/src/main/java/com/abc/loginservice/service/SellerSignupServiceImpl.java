package com.abc.loginservice.service;

import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.BasicConfigurator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.loginservice.dao.SellerSignupDao;
import com.abc.loginservice.entity.CategoryEntity;
import com.abc.loginservice.entity.ItemEntity;
import com.abc.loginservice.entity.SellerSignupEntity;
import com.abc.loginservice.entity.SubCategoryEntity;

import com.abc.loginservice.pojo.CategoryPojo;
import com.abc.loginservice.pojo.ItemPojo;
import com.abc.loginservice.pojo.SellerSignupPojo;
import com.abc.loginservice.pojo.SubCategoryPojo;

@Service
public class SellerSignupServiceImpl implements SellerSignupService{

@Autowired
SellerSignupDao sellerSignupDao;
	
	@Override
	public SellerSignupPojo validateSeller(SellerSignupPojo sellerSignupPojo) {
		BasicConfigurator.configure();

		SellerSignupEntity sellerSignupEntity = sellerSignupDao.findByUsernameAndPassword(sellerSignupPojo.getUsername(),
				sellerSignupPojo.getPassword());

		if (sellerSignupEntity != null) {
			Set<ItemEntity> allItemsEntity = sellerSignupEntity.getAllItems();
			Set<ItemPojo> allItems = new HashSet<ItemPojo>();

			for (ItemEntity itemEntity : allItemsEntity) {
				SubCategoryEntity subCategoryEntity = itemEntity.getSubcategory();
				CategoryEntity categoryEntity = subCategoryEntity.getCategory();
				
				CategoryPojo categoryPojo = new CategoryPojo(
						categoryEntity.getId(), 
						categoryEntity.getName(),
						categoryEntity.getBrief()
						);
SubCategoryPojo subCategoryPojo = new SubCategoryPojo(
						subCategoryEntity.getId(),
						subCategoryEntity.getName(), 
						subCategoryEntity.getBrief(),
						subCategoryEntity.getGstPercent(),
						categoryPojo
						);
ItemPojo itemPojo = new ItemPojo(
		itemEntity.getId(), 
		itemEntity.getName(),
		itemEntity.getImage(),
		itemEntity.getPrice(), 
		itemEntity.getStock(), 
		itemEntity.getDescription(),
		itemEntity.getRemarks(),
		null, 
		subCategoryPojo
		);
allItems.add(itemPojo);
			}
			sellerSignupPojo = new SellerSignupPojo(
						sellerSignupEntity.getId(),
						sellerSignupEntity.getUsername(), 
						sellerSignupEntity.getPassword(),
						sellerSignupEntity.getCompany(), 
						sellerSignupEntity.getBrief(), 
						sellerSignupEntity.getGst(),
						sellerSignupEntity.getAddress(), 
						sellerSignupEntity.getEmail(),
						sellerSignupEntity.getWebsite(), 
						sellerSignupEntity.getContact(),
						allItems
						);


		}
		return sellerSignupPojo;
}
}
	

	
	

