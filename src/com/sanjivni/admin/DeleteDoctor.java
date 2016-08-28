package com.sanjivni.admin;

import org.hibernate.Query;
import org.hibernate.Transaction;

import com.raxit.hibernate.HibernateUtil;

public class DeleteDoctor {
	static int status=0;
	public static int deletDoctor(int id)
	{
		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		String hql = "DELETE FROM DoctorPOJO " + "WHERE id = :doct_id";
		Query query = session.createQuery(hql); 
		query.setInteger("doct_id", id); 
		status = query.executeUpdate();
		t.commit();
		session.close();
		
		return status;
	}
}
