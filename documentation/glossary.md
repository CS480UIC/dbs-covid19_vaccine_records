**Entities**
1. patient
    synonyms: person
    description: basic information of the patient/person who is receiving the vaccine

2. address
    synonyms: location, home, residence
    description: information on the patients home/residence

3. contact
    synonyms: coorespondence, communication
    description: patients main contact information - phone and email

4. primary_physician
    synonyms: main_doctor, doctor, md, med_practitioner
    description: information on the patients primary doctor - full name, phone, address, zip

5. dose_1
    synonyms:first_dose, vaccine_dose_1
    description: information on the patients first dose for the covid-19 vaccine - tyep (JJ VS Pfiezer vs Moderna), date, lot number, location

6. dose_2
    synonyms:second_dose, vaccine_dose_2
    description: information on the patients second dose for the covid-19 vaccine - type (JJ VS Pfiezer vs Moderna), date, lot number, location - if JJ, then information will be repeated

7. booster
    synonyms: booster_dose, booster_injection
    description:information on the patients first dose for the covid-19 vaccine - tyep (JJ VS Pfiezer vs Moderna), date, lot number, location

8. medical_history
    synonyms: health_records, past_health
    description: information on a patients medical history - if they contracted covid, preexisiting conditions, any other notes (i.e. are the immunosuppressed)

9. login
    synonyms: logon, credentials, user_identification
    description: users login information

**Relationships:**

**Relationship Maxima**  
    patient to address: many-to-one  
    patient to contact: one-to-one  
    patient to primary_physician: one-to-one  
    patient to medical_history: one-to-one  
    patient to dose_1: many-to-one  
    dose_1 to dose_2: one-to-one  
    dose_2 to booster: one-to-one  
    
**Relationship Minima**  
    patient Lives at address: zero-to-one  
    patient communicates via contact: one-to-zero  
    patient recieves dose_1: one-to-one  
    patient accesses login: one-to-one  
    patient owns medical_history: one-to-one  
    patient visits primary_physician: one-to-zero  
    dose_1 requires dose_2: one-to-one  
    dose_2 recommends booster: one-to-zero  


**Attributes**  
    Entity: patient  
    first_name  many-to-one  
    last_name   many-to-one  
    dob         many-to-one  
    gender      many-to-one  
    patient_id  one-to-one  
    
    Entity: address  
    street_address  many-to-one  
    zip             many-to-one  
    city            many-to-one  
    state           many-to-one  
    
    Entity: contact
    email_address   one-to-many  
    phone_num       one-to-many  
    
    Entity: primary_physician  
    p_street_address  many-to-one  
    p_zip             many-to-one  
    p_first_name      many-to-one  
    p_last_name       many-to-one  
    p_phone_num       one-to-one  
    
    Entity: login  
    username    one-to-one  
    password    many-to-one  
    
    Entity: dose_1  
    type_1      many-to-one  
    lot_num_1   many-to-one  
    location_1  many-to-one  
    dose_1_date many-to-one  
    
    Entity: dose_2  
    type_2      many-to-one  
    lot_num_2   many-to-one  
    dose_2_date many-to-one  
    location_2  many-to-one  
    
    Entity: booster  
    type_b      many-to-one  
    lot_num_b   many-to-one  
    dose_b_date many-to-one  
    location_b  many-to-one  
    
