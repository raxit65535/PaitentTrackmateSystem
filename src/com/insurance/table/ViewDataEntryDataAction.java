/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.insurance.table;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;


import com.raxit.hibernate.HibernateUtil;

/** 
 * MyEclipse Struts
 * Creation date: 09-18-2013
 * 
 * XDoclet definition:
 * @struts.action path="/viewDataEntryData" name="viewDataEntryDataForm" input="insurance_table/viewDataEntryData.jsp" scope="request" validate="true"
 */
public class ViewDataEntryDataAction extends Action {
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
		ViewDataEntryDataForm viewDataEntryDataForm = (ViewDataEntryDataForm) form;// TODO Auto-generated method stub
		
		
		HttpSession insurance = request.getSession();
		String policy = (String)insurance.getAttribute("Admin");
		System.out.println(policy);
		
		org.hibernate.Session sess = HibernateUtil.getSessionFactory().openSession();
		org.hibernate.Transaction tr = sess.beginTransaction();

	
		Query q = sess.createQuery("FROM InsurancePojo where Policy = :p");
		q.setString("p",policy);
		
		
		List<InsurancePojo> list = (List<InsurancePojo>)q.list();
		
		request.getSession().setAttribute("data", list);
		
		
		tr.commit();
		return mapping.findForward("success");
		
		
		
	}
}