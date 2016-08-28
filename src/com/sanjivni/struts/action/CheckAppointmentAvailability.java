package com.sanjivni.struts.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.raxit.hibernate.AppointmentsPOJO;
import com.raxit.hibernate.HibernateUtil;

public class CheckAppointmentAvailability {
	
	
	public static boolean check(String uuid,String department,String time , String date)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = session.beginTransaction();
		Query q = session.createQuery("from AppointmentsPOJO");
		//q.setString("p",);
		
		List<AppointmentsPOJO> check = (List<AppointmentsPOJO>)q.list();
		
		
		for(AppointmentsPOJO r : check)
		{
			String _uu = r.getDoctoruuid();
			String _dp = r.getDepartment();
			String _t = r.getTime();
			String _s = r.getStatus();
			String _d = r.getDate();
			if(_uu.equals(uuid) && _dp.equals(department) && _t.equals(time) && _d.equals(date) && _s.equals("1"))	
			{
				return false;
			}
		}
		
		return true;
	}
	
	

}
