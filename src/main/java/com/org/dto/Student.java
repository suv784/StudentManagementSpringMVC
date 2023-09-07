package com.org.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student {  
	@Id
	private int roll; 
	private String name; 
	private String StudyClass;  
	private String address;
	private int age; 
	private double fee;
	public int getRoll() {
		return roll;
	}
	public void setRoll(int roll) {
		this.roll = roll;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStudyClass() {
		return StudyClass;
	}
	public void setStudyClass(String studyClass) {
		StudyClass = studyClass;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	} 
	public double getFee() {
		return fee;
	}
	public void setFee(double fee) {
		this.fee = fee;
	}  
	
	
	

}
