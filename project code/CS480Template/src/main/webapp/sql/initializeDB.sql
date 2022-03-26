LOAD DATA LOCAL INFILE 'C:/Users/William/Desktop/CS480template/CS480Template/src/main/webapp/csvs/Patient Responses.csv' 
INTO TABLE patient 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@stamp, @pid,@fName, @lName, @dob, @gender, @email)
set first_name=@fName,last_name=@lName,dob=str_to_date(@dob,'%m/%d/%Y'),patient_id=@pid;

LOAD DATA LOCAL INFILE 'C:/Users/William/Desktop/CS480template/CS480Template/src/main/webapp/csvs/Address (Responses).csv' 
INTO TABLE address
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@stamp, @address, @zipcode, @city, @state, @pid, @fullname)
set patient_id=@pid,street_address=@address,zip_code=@zipcode,city=@city,state=@state;

#Issue: phone number must be integer type to store numbers larger than 7 digits or string
LOAD DATA LOCAL INFILE 'C:/Users/William/Desktop/CS480template/CS480Template/src/main/webapp/csvs/Contact Responses.csv' 
INTO TABLE contact
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 ROWS
(@stamp, @pid, @fullName, @email, @pNumber)
set email_address=@email, phone_num=@pNumber, patient_id=@pid;

LOAD DATA LOCAL INFILE 'C:/Users/William/Desktop/CS480template/CS480Template/src/main/webapp/csvs/Dose 1.csv' 
INTO TABLE dose_1
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 ROWS
(@stamp, @fullname, @pid, @dType, @lNumber, @dateOfDose, @location)
set patient_id=@pid, type_1=@dType, lot_num_1=@lNumber, dose_1_date=str_to_date(@dateOfDose,'%m/%d/%Y'), location_1=@location;

LOAD DATA LOCAL INFILE 'C:/Users/William/Desktop/CS480template/CS480Template/src/main/webapp/csvs/Medical History.csv' 
INTO TABLE medical_history
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 ROWS
(@stamp, @notes, @preConditions, @contractedDate, @pid)
set patient_id=@pid, notes=@notes, pre_existing_conditions=@preConditions, contracted_covid=str_to_date(@contractedDate,'%m/%d/%Y');

#Issue: street address should be char
LOAD DATA LOCAL INFILE 'C:/Users/William/Desktop/CS480template/CS480Template/src/main/webapp/csvs/Primary Physician.csv' 
INTO TABLE primary_physician
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 ROWS
(@stamp, @fName, @lName, @zipcode, @phoneNum, @address, @city, @state, @pid)
set patient_id=@pid, p_first_name=@fName, p_last_name=@lName, p_zip=@zipcode, p_state=@state, p_city=@city, p_phone_num=@phoneNum, p_street_address=@address;
