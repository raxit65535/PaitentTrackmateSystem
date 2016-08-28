package com.insurance.table;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Transaction;

import com.raxit.hibernate.HibernateUtil;

public class DeleteData {

	static int status=0;
	public static int deleteData(int id)
	{
		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		
		
		String hql = "DELETE FROM InsurancePojo " + "WHERE id = :i";
		Query query = session.createQuery(hql); 
		query.setInteger("i", id); 
		status = query.executeUpdate();
		t.commit();
		session.close();
		
		return status;
	}
	
}
