package dose1.domain;

import java.sql.Date;

/**
 * Patient object
 * 
 * @author Aayush Makharia
 * 
 */
public class dose1 {
	/*
	 * Correspond to the user table
	 */
	
	private Integer patient_id;
	private String dose_type;
	private String lot_num; 
	private String location; 
	private Date dateOfDose;



	public Integer getPatient_id() {
		return patient_id;
	}



	public void setPatient_id(Integer patient_id) {
		this.patient_id = patient_id;
	}



	public String getdose_type() {
		return dose_type;
	}



	public void setdose_type(String dose_type) {
		this.dose_type = dose_type;
	}



	public String getlot_num() {
		return lot_num;
	}



	public void setlot_num(String lot_num) {
		this.lot_num = lot_num;
	}

	public String getlocation() {
		return location;
	}

	public void setlocation(String location) {
		this.location = location;
	}


	public Date getDoseDate() {
		return dateOfDose;
	}



	public void setDoseDate(Date dateOfDose) {
		this.dateOfDose = dateOfDose;
	}


}
