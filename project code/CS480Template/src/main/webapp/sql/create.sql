CREATE database covid19_vaccine_records;

use covid19_vaccine_records;

CREATE TABLE patient(
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	dob DATE NOT NULL,
	gender CHAR(1) NOT NULL,
	patient_id INT UNIQUE NOT NULL AUTO_INCREMENT,
	
	PRIMARY KEY (patient_id)
);

CREATE TABLE contact(
	email_address VARCHAR(50) NOT NULL,
	phone_num INT NOT NULL,
	patient_id INT UNIQUE NOT NULL,
	
	PRIMARY KEY(patient_id),
	FOREIGN KEY(patient_id) REFERENCES patient(patient_id)

);