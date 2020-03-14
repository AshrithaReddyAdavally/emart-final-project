package com.abc.buyersignup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.abc.buyersignup.pojo.BuyerSignupPojo;
import com.abc.buyersignup.service.BuyerSignupService;

@CrossOrigin
@RestController
@RequestMapping("emart")
public class BuyerSignupController {

@Autowired
BuyerSignupService buyerSignupService;
@PostMapping ("/buyer")
BuyerSignupPojo addBuyer(@RequestBody BuyerSignupPojo buyerSignupPojo) {
	return buyerSignupService.addBuyer(buyerSignupPojo);
}
}
