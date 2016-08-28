package com.sanjivni.admin;

import org.hibernate.Transaction;

import com.raxit.hibernate.DoctorPOJO;
import com.raxit.hibernate.HibernateUtil;

public class AddDoc {

	static int status=0;
	public static int adddoc(String name,String department,String email,String contactno,String designation,String uuid){
		//public static int register(String email,String password,String gender,String country,String name){

		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
	    
		
		DoctorPOJO dpojo = new DoctorPOJO();
		dpojo.setName(name);
		//dpojo.setTimingsFrom(timingfrom);
		//dpojo.setTimingsTo(timingto);
		dpojo.setDepartment(department);
		dpojo.setEmail(email);
		dpojo.setContact_No(contactno);
		dpojo.setDesignation(designation);
		//dpojo.setImagename(imagename);
		dpojo.setUUID(uuid);
		dpojo.setImage("demo.jpg");
		
		status =(Integer)session.save(dpojo);
		t.commit();
		session.close();
		return status;
		
	}
	
	
}
