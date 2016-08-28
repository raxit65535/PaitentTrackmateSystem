package com.raxit.hibernate;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Doctor" , catalog = "test")
public class DoctorPOJO {
	
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)	
int id;
private String Name;
private String Department;
private String Designation;
private String Email;
private String Contact_No;
private String UUID;
private String image;


public String getDesignation() {
	return Designation;
}
public void setDesignation(String designation) {
	Designation = designation;
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getDepartment() {
	return Department;
}
public void setDepartment(String department) {
	Department = department;
}


public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getContact_No() {
	return Contact_No;
}
public void setContact_No(String contact_No) {
	Contact_No = contact_No;
}
public String getUUID() {
	return UUID;
}
public void setUUID(String uuid) {
	UUID = uuid;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}








}
