/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sanjivni.doctor;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 09-21-2013
 * 
 * XDoclet definition:
 * @struts.form name="doctorPrescription1Form"
 */
public class DoctorPrescription1Form extends ActionForm {
	/*
	 * Generated Methods
	 */
	private String insuranceno;
	
	
	
	
	public String getInsuranceno() {
		return insuranceno;
	}

	public void setInsuranceno(String insuranceno) {
		this.insuranceno = insuranceno;
	}

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}
}