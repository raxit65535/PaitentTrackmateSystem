package com.insurance.table;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.raxit.hibernate.HibernateUtil;

public class RistrictValidation {
	
	public static boolean Validate(String insuranceno , String policy)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		 
		//Query q = session.createQuery("from LICPojo where insuranceno = :n");
		org.hibernate.Query q = session.createQuery("from InsurancePojo where Policy = :p ");
		q.setString("p", policy);
		//q.setString("n", insuranceno);
		List<InsurancePojo > heli = (List<InsurancePojo>)q.list();
		System.out.println("going in for loop");
		for(InsurancePojo e1 : heli)
		{
			String tushar = e1.getInsuranceno();
			if(tushar.equals(insuranceno))
			{
				System.out.println("returning false");
				return false;
				
			}
			
			
		}
		System.out.println("returning success");
		
		return true;	

	}
	
	
	
}
