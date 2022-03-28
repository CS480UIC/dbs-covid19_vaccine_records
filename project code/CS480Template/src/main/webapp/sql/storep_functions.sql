CREATE PROCEDURE patients_after_1998 AS
SELECT *
FROM patient
WHERE DATE(dob) >= '01-01-1998'
GO;

CREATE PROCEDURE physician_zip_60606 AS
SELECT *
FROM primary_physician
WHERE p_zip = 60606
GO;




CREATE FUNCTION find_first_name(d DATE)
RETURNS VARCHAR(50)
READS SQL DATA

BEGIN

	SELECT first_name
	FROM patient
	WHERE dob = d;

END;


CREATE FUNCTION find_contracted_covid
RETURNS DATE
READS SQL DATA

BEGIN
	SELECT contracted_covid
	FROM medical_history
	WHERE contracted_covid IS NOT NULL;
END;