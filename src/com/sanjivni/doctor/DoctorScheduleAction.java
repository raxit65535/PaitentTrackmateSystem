/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sanjivni.doctor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;

import com.raxit.hibernate.AppointmentsPOJO;
import com.raxit.hibernate.HibernateUtil;

/** 
 * MyEclipse Struts
 * Creation date: 09-28-2013
 * 
 * XDoclet definition:
 * @struts.action path="/doctorSchedule" name="doctorScheduleForm" input="doctor/doctorSchedule.jsp" scope="request" validate="true"
 */
public class DoctorScheduleAction extends Action {
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
		DoctorScheduleForm doctorScheduleForm = (DoctorScheduleForm) form;// TODO Auto-generated method stub
		org.hibernate.Session sess = HibernateUtil.getSessionFactory().openSession();
		org.hibernate.Transaction tr = sess.beginTransaction();

		HttpSession doctor = request.getSession();
		String uuid = (String)doctor.getAttribute("UUID");

		//String SQL_STRING = "FROM DoctorPOJO";
		//Query query = sess.createQuery(SQL_STRING);
		//ArrayList list = (ArrayList) query.list();
		Query q = sess.createQuery( "From AppointmentsPOJO where doctoruuid = :u and status = :s");
		q.setString("u",uuid);
		q.setString("s", "1");
		List< AppointmentsPOJO> check = (List< AppointmentsPOJO>)q.list();
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