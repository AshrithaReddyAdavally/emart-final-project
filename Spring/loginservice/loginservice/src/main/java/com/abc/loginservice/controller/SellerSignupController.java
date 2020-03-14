package com.abc.loginservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.abc.loginservice.pojo.SellerSignupPojo;
import com.abc.loginservice.service.SellerSignupService;
@CrossOrigin
@RestController
@RequestMapping("emart")
public class SellerSignupController {

@Autowired
SellerSignupService sellerSignupService;
@GetMapping("/validateSeller")
SellerSignupPojo validateSeller(@RequestHeader("Authorization") String Data) {
	
	String token[] = Data.split(":");
	SellerSignupPojo sellerSignupPojo = new SellerSignupPojo( );
	sellerSignupPojo.setUsername(token[0]);
	sellerSignupPojo.setPassword(token[1]);
	
	return sellerSignupService.validateSeller(sellerSignupPojo);
}
}
