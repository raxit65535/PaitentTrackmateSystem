package com.sanjivni.struts.action;

import org.hibernate.Transaction;

import com.raxit.hibernate.HibernateUtil;
import com.raxit.hibernate.PaitentPOJO;


public class RepeatPaitent {

	static int status=0;
	public static int registerpaitent(String name ,String email ,String pass ,String cpass, String phoneno ,String gender,String dob ,String idproof ,String value ,String policy ,String insuranceno,String uid )
	{
		//public static int register(String email,String password,String gender,String country,String name){

		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
	    
		
		PaitentPOJO ppojo = new PaitentPOJO();
		ppojo.setName(name);
		ppojo.setEmail(email);
		ppojo.setPass(pass);
		ppojo.setCpass(cpass);
		ppojo.setPhoneno(phoneno);
		ppojo.setGender(gender);
		ppojo.setDob(dob);
		ppojo.setIdproof(idproof);
		ppojo.setValue(value);
		ppojo.setPolicy(policy);
		ppojo.setInsuranceno(insuranceno);
		
		ppojo.setUID(uid);
		ppojo.setStatus("1");
		ppojo.setImage("demo.jpg");
		
		status =(Integer)session.save(ppojo);
		t.commit();
		session.close();
		return status;
		
	}
	
	
}
