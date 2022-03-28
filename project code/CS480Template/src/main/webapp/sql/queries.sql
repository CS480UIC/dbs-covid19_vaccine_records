CREATE VIEW numeric_aggregate AS
SELECT COUNT(*)
FROM patient
WHERE gender = �F�;

CREATE VIEW string_aggregate AS
SELECT * 
FROM primary_physician
WHERE p_last_name = �Lewis�
ORDER BY p_state DESC;

CREATE VIEW dose_2_date_aggregate AS
SELECT dose_2_date
FROM dose_2;

CREATE VIEW dose_1_group_aggregate AS
SELECT type_1
FROM dose_1
GROUP BY(lot_num_1);


CREATE VIEW gmail_email AS
Select email_address
FROM Contact
LIKE �%@gmail.com�
ORDER BY email_address;

CREATE VIEW physicians_illinois AS
SELECT p_last_name, p_first_name
FROM primary_physician
WHERE p_state <> �IL�
ORDER BY p_last_name;

CREATE VIEW address_chicago AS
SELECT *
FROM address
WHERE city = "Chicago";

CREATE VIEW dose_1_moderna AS
SELECT *
FROM dose_1
WHERE type_1 = "Moderna"
ORDER BY patient_id;



CREATE VIEW complex_exist AS
SELECT state
FROM address 
WHERE EXISTS (SELECT patient_id FROM patient);

CREATE VIEW complex_join AS
SELECT mh.notes, pp.p_last_name
FROM medical_history mh JOIN primary_physician pp USING(patient_id)
WHERE mh.contracted_covid IN (�2020-08-15�) AND pp.p_zip = 60607
GROUP BY pp.p_last_name, mh.notes
ORDER BY pp.p_last_name;
