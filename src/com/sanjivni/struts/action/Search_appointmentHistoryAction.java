/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sanjivni.struts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.raxit.hibernate.AppointmentsPOJO;
import com.raxit.hibernate.HibernateUtil;
import com.sanjivni.doctor.PrescriptionPOJO;
import com.sanjivni.struts.form.Search_appointmentHistoryForm;

/** 
 * MyEclipse Struts
 * Creation date: 10-09-2013
 * 
 * XDoclet definition:
 * @struts.action path="/search_appointmentHistory" name="search_appointmentHistoryForm" input="/paitent/search_appointmentHistory.jsp" scope="request" validate="true"
 */
public class Search_appointmentHistoryAction extends Action {
	/*
	 * Generated Methods
	 */
	

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		Search_appointmentHistoryForm search_appointmentHistoryForm = (Search_appointmentHistoryForm) form;// TODO Auto-generated method stub
		
		
		String _search = search_appointmentHistoryForm.getSearch();
		String _value = search_appointmentHistoryForm.getValue();
		String status = "1";
		
		HttpSession paitent = request.getSession();
		String ino =(String)paitent.getAttribute("Insuranceno");
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = session.beginTransaction();
		
		if(_search.equals("Date"))
		{
			Query q = session.createQuery( "From AppointmentsPOJO where date = :v AND insuranceno = :i AND status = :s ");
			q.setString("v",_value);
			q.setString("i",ino);
			q.setString("s", status);
			
			List<AppointmentsPOJO> check = (List<AppointmentsPOJO>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
			
		}
		else if(_search.equals("Time"))
		{
			Query q = session.createQuery( "From AppointmentsPOJO where time = :v AND insuranceno = :i AND status = :s");
			q.setString("v",_value);
			q.setString("i",ino);
			q.setString("s", status);
			
			List<AppointmentsPOJO> check = (List<AppointmentsPOJO>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
			
		}
		else if(_search.equals("Doctor"))
		{
			Query q = session.createQuery( "From AppointmentsPOJO where doctor = :v AND insuranceno = :i AND status = :s");
			q.setString("v",_value);
			q.setString("i",ino);
			q.setString("s", status);
			
			List<AppointmentsPOJO> check = (List<AppointmentsPOJO>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
			
		}
		
		Query q = session.createQuery( "From AppointmentsPOJO where department = :v AND insuranceno = :i AND status = :s");
		q.setString("v",_value);
		q.setString("i",ino);
		q.setString("s", status);
		
		List<AppointmentsPOJO> check = (List<AppointmentsPOJO>)q.list();
		request.getSession().setAttribute("data", check);
		
		System.out.println("search complete...");
		
		
		return mapping.findForward("success");
	}
}