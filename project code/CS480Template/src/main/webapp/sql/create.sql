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
	FOREIGN KEY(patient_id)
		REFERENCES patient(patient_id)
		ON DELETE CASCADE

);

CREATE TABLE primary_physician(
	patient_id INT UNIQUE NOT NULL,
	p_first_name VARCHAR(50) NOT NULL,
	p_last_name VARCHAR(50) NOT NULL,
	p_zip INT NOT NULL,
	p_state CHAR(2) NOT NULL,
	p_city VARCHAR(50) NOT NULL,
	p_phone_num INT NOT NULL,
	p_street_address INT NOT NULL,
	
	PRIMARY KEY(p_phone_num),
	FOREIGN KEY(patient_id)
		REFERENCES patient(patient_id)
		ON DELETE CASCADE
);


CREATE TABLE medical_history(
	notes VARCHAR(200),
	pre_existing_conditions VARCHAR(200),
	contracted_covid DATE,
);

CREATE TABLE dose_2(
	type_2 VARCHAR(10) NOT NULL CHECK(type_2 IN ('Moderna', 'Pfizer', 'J&J')),
	lot_num_2 VARCHAR(10) NOT NULL,
	dose_2_date DATE NOT NULL,
	location_2 VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (lot_num_2, dose_2_date)
)

CREATE TABLE booster(
	lot_num_2 VARCHAR(10) NOT NULL,
	dose_2_date DATE NOT NULL,
	type_b VARCHAR(10) NOT NULL CHECK(type_2 IN ('Moderna', 'Pfizer', 'J&J')),
	lot_num_b VARCHAR(10) NOT NULL,
	dose_b_date DATE NOT NULL,
	location_b VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (lot_num_b, dose_b_date),
	FOREIGN KEY (lot_num_2, dose_2_date)
		REFERENCES dose_2(lot_num_2, dose_2_date)
		ON UPDATE CASCADE
		ON DELETE CASCADE
)