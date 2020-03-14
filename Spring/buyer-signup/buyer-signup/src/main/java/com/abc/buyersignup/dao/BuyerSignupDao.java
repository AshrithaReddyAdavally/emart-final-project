package com.abc.buyersignup.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abc.buyersignup.entity.BuyerSignupEntity;
@Repository
public interface BuyerSignupDao extends JpaRepository<BuyerSignupEntity,Integer>{

}
