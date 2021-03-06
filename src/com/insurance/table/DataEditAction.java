/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.insurance.table;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.raxit.hibernate.HibernateUtil;

/** 
 * MyEclipse Struts
 * Creation date: 09-18-2013
 * 
 * XDoclet definition:
 * @struts.action path="/dataEdit" name="dataEditForm" input="insurance_table/dataEdit.jsp" scope="request" validate="true"
 */
public class DataEditAction extends Action {
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
		DataEditForm dataEditForm = (DataEditForm) form;// TODO Auto-generated method stub
		
		String _name = dataEditForm.getName();
		String _surname = dataEditForm.getSurname();
		String _email = dataEditForm.getEmail();
		String _phoneno = dataEditForm.getPhoneno();
		String _expdate = dataEditForm.getExpdate();
		String _insuranceid = dataEditForm.getInsuranceid();
		
		
		System.out.println(_name);
		System.out.println(_surname);
		System.out.println(_email);
		System.out.println(_phoneno);
		System.out.println(_expdate);
		System.out.println(_insuranceid);
		
		try{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("UPDATE InsurancePojo set Name = :n , Email = :e ,Phoneno= :p ,ExpireDate = :exp where Insuranceno='"+_insuranceid+"'");
		q.setString("n", _name);
		q.setString("e", _email);
		q.setString("p", _phoneno);
		q.setString("exp", _expdate);
		int row=q.executeUpdate();
		  System.out.println("Number of row updated "+row);
		  session.getTransaction().commit();
		  return mapping.findForward("success");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return mapping.findForward("failure");
	}
}