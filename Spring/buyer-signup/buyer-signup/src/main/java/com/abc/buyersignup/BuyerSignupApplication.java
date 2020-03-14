package com.abc.buyersignup;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
@EnableEurekaClient
@SpringBootApplication
public class BuyerSignupApplication {

	public static void main(String[] args) {
		SpringApplication.run(BuyerSignupApplication.class, args);
	}

}
