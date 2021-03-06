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

import com.raxit.hibernate.HibernateUtil;
import com.sanjivni.doctor.PrescriptionPOJO;
import com.sanjivni.struts.form.SearchDischargeHistoryForm;

/** 
 * MyEclipse Struts
 * Creation date: 10-09-2013
 * 
 * XDoclet definition:
 * @struts.action path="/searchDischargeHistory" name="searchDischargeHistoryForm" input="/Search_dischargeHistory/searchDischargeHistory.jsp" scope="request" validate="true"
 */
public class SearchDischargeHistoryAction extends Action {
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
		SearchDischargeHistoryForm searchDischargeHistoryForm = (SearchDischargeHistoryForm) form;// TODO Auto-generated method stub
		
		String _search= searchDischargeHistoryForm.getSearch();
		String _value = searchDischargeHistoryForm.getValue();
		
		HttpSession paitent = request.getSession();
		String ino = (String)paitent.getAttribute("Insuranceno");
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = session.beginTransaction();
		
		if(_search.equals("AdmitDate"))
		{
			Query q = session.createQuery( "From PrescriptionPOJO where admitdate = :v AND insuranceno = :i ");
			q.setString("v",_value);
			q.setString("i",ino);
			
			List<PrescriptionPOJO> check = (List<PrescriptionPOJO>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
			
		}
		
		else if(_search.equals("DischargeDate"))
		{
			Query q = session.createQuery( "From PrescriptionPOJO where dischargedate = :v AND insuranceno = :i ");
			q.setString("v",_value);
			q.setString("i",ino);
			
			List<PrescriptionPOJO> check = (List<PrescriptionPOJO>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
			
		}
		else if(_search.equals("Doctor"))
		{
			Query q = session.createQuery( "From PrescriptionPOJO where doctor = :v AND insuranceno = :i ");
			q.setString("v",_value);
			q.setString("i",ino);
			
			List<PrescriptionPOJO> check = (List<PrescriptionPOJO>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
			
		}
		
		Query q = session.createQuery( "From PrescriptionPOJO where department = :v AND insuranceno = :i ");
		q.setString("v",_value);
		q.setString("i",ino);
		
		List<PrescriptionPOJO> check = (List<PrescriptionPOJO>)q.list();
		request.getSession().setAttribute("data", check);
		
		System.out.println("search complete...");
		
		
		return mapping.findForward("success");
		
		
		
	}
}