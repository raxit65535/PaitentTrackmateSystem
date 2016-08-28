package com.insurance.table;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Insurance")
public class InsurancePojo {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	private String Name;
	private String Email;
	private String Phoneno;
	private String Address;
	private String Gender;
	private String DOB;
	private String IdProof;
	private String Proofvalue;
	private String Insuranceno;
	private String ExpireDate;
	private String Policy;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhoneno() {
		return Phoneno;
	}
	public void setPhoneno(String phoneno) {
		Phoneno = phoneno;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dob) {
		DOB = dob;
	}
	public String getIdProof() {
		return IdProof;
	}
	public void setIdProof(String idProof) {
		IdProof = idProof;
	}

	
	
	
	public String getProofvalue() {
		return Proofvalue;
	}
	public void setProofvalue(String proofvalue) {
		Proofvalue = proofvalue;
	}
	public String getInsuranceno() {
		return Insuranceno;
	}
	public void setInsuranceno(String insuranceno) {
		Insuranceno = insuranceno;
	}
	public String getExpireDate() {
		return ExpireDate;
	}
	public void setExpireDate(String expireDate) {
		ExpireDate = expireDate;
	}
	public String getPolicy() {
		return Policy;
	}
	public void setPolicy(String policy) {
		Policy = policy;
	}
	
		
	

}
