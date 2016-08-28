package com.sanjivni.struts.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.insurance.table.InsurancePojo;
import com.raxit.hibernate.HibernateUtil;
import com.raxit.hibernate.PaitentPOJO;

public class RistrictRepeatUser {
	
	
	public static boolean checkDb(String insurance_name,String insurance_id)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = session.beginTransaction();
		Query q = session.createQuery("from InsurancePojo where Policy = :p");
		q.setString("p",insurance_name);
		
		List<InsurancePojo> check = (List<InsurancePojo>)q.list();
		
		
		for(InsurancePojo r : check)
		{
			String pk = r.getInsuranceno();
			if(pk.equals(insurance_id))
			{
				return true;
			}
		}
		
		return false;
	}
	
	
	
	
	
	
	public static boolean repeatuser(String policy,String insuranceno)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("From PaitentPOJO where Policy = :i");
		q.setString("i", policy);
		System.out.println("getting the list");
		List<PaitentPOJO> nice = (List<PaitentPOJO>)q.list();
		System.out.println("going in for loop");
		for(PaitentPOJO et : nice)
		{
				String foo = et.getInsuranceno();
				if(foo.equals(insuranceno))
				{
					System.out.println("returning false");
					return false;
				}
		}
			System.out.println("returning true");
			return true;
	}
	
	
	
	public static boolean Email(String insurance_name,String email)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = session.beginTransaction();
		Query q = session.createQuery("from PaitentPOJO where Policy = :p");
		q.setString("p",insurance_name);
		
		List<PaitentPOJO> check = (List<PaitentPOJO>)q.list();
		
		
		for(PaitentPOJO r : check)
		{
			String pk = r.getEmail();
			if(pk.equals(email))
			{
				return false;
			}
		}
		
		return true;
	}
	
	

}
