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

CREATE TABLE primary_physician(
	p_first_name VARCHAR(50) NOT NULL,
	p_last_name VARCHAR(50) NOT NULL,
	p_zip INT NOT NULL,
	p_state CHAR(2) NOT NULL,
	p_city VARCHAR(50) NOT NULL,
	p_phone_num INT NOT NULL,
	p_street_address INT NOT NULL,
	
	PRIMARY KEY(p_phone_num)
);


CREATE TABLE medical_history(
	notes VARCHAR(200),
	pre_existing_conditions VARCHAR(200),
	contracted_covid DATE,
);
