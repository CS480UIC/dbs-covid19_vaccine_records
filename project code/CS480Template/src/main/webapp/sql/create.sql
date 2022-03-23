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

CREATE TABLE address(
    patient_id INT UNIQUE NOT NULL,
    street_address VARCHAR(50) NOT NULL,
    zip_code INT NOT NULL,
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL,
    
    PRIMARY KEY(patient_id, street_address),
    FOREIGN KEY(patient_id)
		REFERENCES patient(patient_id)
		ON DELETE CASCADE
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
    patient_id INT NOT NULL UNIQUE,
	notes VARCHAR(200),
	pre_existing_conditions VARCHAR(200),
	contracted_covid DATE,
    
    PRIMARY KEY(patient_id),
	FOREIGN KEY(patient_id)
		REFERENCES patient(patient_id)
		ON DELETE CASCADE
);

CREATE TABLE dose_1(
    patient_id INT NOT NULL UNIQUE,
    type_1 VARCHAR(10) NOT NULL CHECK(type_1 IN ('Moderna', 'Pfizer', 'J&J')),
	lot_num_1 VARCHAR(10) NOT NULL,
	dose_1_date DATE NOT NULL,
	location_1 VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (patient_id, lot_num_1, dose_1_date),
	FOREIGN KEY(patient_id)
		REFERENCES patient(patient_id)
		ON DELETE CASCADE

);

CREATE TABLE dose_2(
	type_2 VARCHAR(10) NOT NULL CHECK(type_2 IN ('Moderna', 'Pfizer', 'J&J')),
	lot_num_2 VARCHAR(10) NOT NULL,
	dose_2_date DATE NOT NULL,
	location_2 VARCHAR(50) NOT NULL,
	lot_num_1 VARCHAR(10) NOT NULL,
	dose_1_date DATE NOT NULL,
    
	PRIMARY KEY (lot_num_2, dose_2_date, lot_num_1, dose_1_date),
    FOREIGN KEY (lot_num_1, dose_1_date)
		REFERENCES dose_1(lot_num_1, dose_1_date)
		ON UPDATE CASCADE
		ON DELETE CASCADE
)

CREATE TABLE booster(
	lot_num_2 VARCHAR(10) NOT NULL,
	dose_2_date DATE NOT NULL,
	type_b VARCHAR(10) NOT NULL CHECK(type_2 IN ('Moderna', 'Pfizer', 'J&J')),
	lot_num_b VARCHAR(10) NOT NULL,
	dose_b_date DATE NOT NULL,
	location_b VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (lot_num_b, dose_b_date, lot_num_2, dose_2_date),
	FOREIGN KEY (lot_num_2, dose_2_date)
		REFERENCES dose_2(lot_num_2, dose_2_date)
		ON UPDATE CASCADE
		ON DELETE CASCADE
)
