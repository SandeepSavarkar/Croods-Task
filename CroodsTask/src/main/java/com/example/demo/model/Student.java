package com.example.demo.model;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Student")
public class Student {

	@Id
	private String name;
	private String mobile;
	private Date dob;
	private String hobbies;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Date getDob() {
		return dob;
	}
	
	public String getHobbies() {
		return hobbies;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", mobile=" + mobile + ", dob=" + dob + ", hobbies=" + hobbies + "]";
	}
	
	
}
