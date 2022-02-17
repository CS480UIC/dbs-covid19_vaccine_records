Entities
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

Relationships:

**Maxima**  
    Patient to address: many-to-one  
    Patient to contact: one-to-one  
    Patient to primary_physician: one-to-one  
    Patient to medical_history: one-to-one  
    Patient to dose_1: many-to-one  
    Dose_1 to dose_2: one-to-one  
    Dose_2 to booster: one-to-one  
    
**Relationship Minima**  
    Patient Lives at address: zero-to-one  
    Patient communicates via contact: one-to-zero  
    Patient recieves dose_1: one-to-one  
    Patient accesses login: one-to-one  
    Patient owns medical_history: one-to-one  
    Patient visits primary_physician: one-to-zero  
    Dose_1 requires dose_2: one-to-one  
    Dose_2 recommends booster: one-to-zero  


Attributes
