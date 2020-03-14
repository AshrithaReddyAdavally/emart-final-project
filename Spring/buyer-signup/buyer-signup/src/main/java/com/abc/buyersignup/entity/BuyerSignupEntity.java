package com.abc.buyersignup.entity;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="buyer_signup_table")
public class BuyerSignupEntity {
	
			@Id
			@GeneratedValue(strategy = GenerationType.IDENTITY)
			@Column(name="buyer_id")
			Integer id;
			@Column(name="buyer_username")
			String username;
			@Column(name="buyer_password")
			String password;
			@Column(name="buyer_email")
			String email;
			@Column(name="buyer_mobile")
			long mobile;
			@Column(name="buyer_date")
			Date date;
			public Integer getId() {
				return id;
			}
			public void setId(Integer id) {
				this.id = id;
			}
			public String getUsername() {
				return username;
			}
			public void setUsername(String username) {
				this.username = username;
			}
			public String getPassword() {
				return password;
			}
			public void setPassword(String password) {
				this.password = password;
			}
			public String getEmail() {
				return email;
			}
			public void setEmail(String email) {
				this.email = email;
			}
			public long getMobile() {
				return mobile;
			}
			public void setMobile(long mobile) {
				this.mobile = mobile;
			}
			public Date getDate() {
				return date;
			}
			public void setDate(Date date) {
				this.date = date;
			}
			public BuyerSignupEntity(Integer id, String username, String password, String email, long mobile,
					Date date) {
				super();
				this.id = id;
				this.username = username;
				this.password = password;
				this.email = email;
				this.mobile = mobile;
				this.date = date;
			}
			public BuyerSignupEntity() {
				super();
				// TODO Auto-generated constructor stub
			}
			@Override
			public String toString() {
				return "BuyerSignupEntity [id=" + id + ", username=" + username + ", password=" + password + ", email="
						+ email + ", mobile=" + mobile + ", date=" + date + "]";
			}
			
			
}
