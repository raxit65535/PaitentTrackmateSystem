package com.insurance.table;

import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import javax.transaction.Transaction;

import org.hibernate.Session;

import com.raxit.hibernate.HibernateUtil;

public class DateEntryInsert {
	static int status=0;
	static int status1=0;
	public static int Insert(String name,String email, String phoneno ,String address , String gender , String dob , String idproof ,String value , String policy , String insuranceno, String expdate) 
	{
		org.hibernate.Session session = HibernateUtil.getSessionFactory().openSession();
		org.hibernate.Transaction t =  session.beginTransaction();
		
		InsurancePojo ob1 = new InsurancePojo();
		ob1.setName(name);
		ob1.setEmail(email);
		ob1.setPhoneno(phoneno);
		ob1.setAddress(address);
		ob1.setGender(gender);
		ob1.setDOB(dob);
		ob1.setIdProof(idproof);
		ob1.setProofvalue(value);
		ob1.setInsuranceno(insuranceno);
		ob1.setExpireDate(expdate);
		ob1.setPolicy(policy);
		
		status = (Integer) session.save(ob1);
		t.commit();
		session.close();
		
		return status;
	}
	

}
