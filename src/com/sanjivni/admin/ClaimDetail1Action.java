/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sanjivni.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;

import com.raxit.hibernate.HibernateUtil;
import com.sanjivni.doctor.PrescriptionPOJO;

/** 
 * MyEclipse Struts
 * Creation date: 09-22-2013
 * 
 * XDoclet definition:
 * @struts.action path="/claimDetail1" name="claimDetail1Form" input="admin/claimDetail1.jsp" scope="request" validate="true"
 */
public class ClaimDetail1Action extends Action {
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
		ClaimDetail1Form claimDetail1Form = (ClaimDetail1Form) form;// TODO Auto-generated method stub

		org.hibernate.Session sess = HibernateUtil.getSessionFactory().openSession();
		org.hibernate.Transaction tr = sess.beginTransaction();

		String status = "HREJECT";

		//String SQL_STRING = "FROM DoctorPOJO";
		//Query query = sess.createQuery(SQL_STRING);
		//ArrayList list = (ArrayList) query.list();
		Query q = sess.createQuery( "From PrescriptionPOJO where status = :s");
		q.setString("s",status);
		
		List<PrescriptionPOJO> check = (List<PrescriptionPOJO>)q.list();
		request.getSession().setAttribute("data", check);
		
		
		
		
		/*while(itr.hasNext()){
	        InsurancePojo inc = (InsurancePojo) itr.next();
	        System.out.println("--------------------");
	        System.out.println("id: "+ inc.getId());
	        System.out.println("name :"+inc.getName());
	        System.out.println("surname :"+inc.getSurname());
	        System.out.println("Email:"+inc.getEmail());
	        System.out.println("Phoneno:"+inc.getPhoneNo());
	        System.out.println("InsuranceNo:"+inc.getInsuranceNo());
	        System.out.println("ExpDate:"+inc.getExpireDate());
	        System.out.println("Policy:"+inc.getPolicy());
	        System.out.println("----------------------");
		}*/
		
		tr.commit();
		
		
		return mapping.findForward("success");
		
		
	}
}