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

**Supertype**
    patient

**Subtype**
    patient visits primary_physician - primary_physician can also be a patient

**Dependent Entities**
    No dependent entities

**Relationships:**

**Relationship Maxima**  
    patient lives at address: many-to-one 
    patient communicates via contact: one-to-one  
    patient visits primary_physician: one-to-one  
    patient owns medical_history: one-to-one  
    patient accesses login: one-to-one
    patient recieves dose_1: many-to-one  
    dose_1 requires dose_2: one-to-one  
    dose_2 reccomends booster: one-to-one  
    
**Relationship Minima**  
    patient lives at address: zero-to-one  
    patient communicates via contact: one-to-zero  
    patient recieves dose_1: one-to-one  
    patient accesses login: one-to-one  
    patient owns medical_history: one-to-one  
    patient visits primary_physician: one-to-zero  
    dose_1 requires dose_2: one-to-one  
    dose_2 recommends booster: one-to-zero

**Dependency Relationships**
    No dependency relationships

**Foreign Keys Implement Dependency Relationship**
    Not applicable, no dependency relationships

**Attributes**  

**Attribute Maxima**
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
    p_city            many-to-one
    p_state           many-to-one
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
    
    Entity: medical_history
    notes                        many-to-one
    pre_existing_conditions      many-to-many
    contracted_covid             many-to-one
    
**Attribute Minima**
    Entity: patient  
    first_name  required  
    last_name   required 
    dob         required  
    gender      required  
    patient_id  required  
    
    Entity: address  
    street_address  required  
    zip             required  
    city            required 
    state           required  
    
    Entity: contact
    email_address   optional  
    phone_num       required  
    
    Entity: primary_physician  
    p_street_address  optional  
    p_zip             optional  
    p_first_name      optional  
    p_last_name       optional  
    p_phone_num       optional  
    
    Entity: login  
    username    required  
    password    required  
    
    Entity: dose_1  
    type_1      required  
    lot_num_1   required  
    location_1  required  
    dose_1_date required  
    
    Entity: dose_2  
    type_2      required  
    lot_num_2   required  
    dose_2_date required 
    location_2  required 
    
    Entity: booster  
    type_b      required  
    lot_num_b   required  
    dose_b_date required  
    location_b  required 
    
    Entity: medical_history
    notes                        optional
    pre_existing_conditions      optional
    contracted_covid             optional

**Attribute Types and Cardinality**
    Entity: patient  
    first_name  varchar(50) NOT NULL 
    last_name   varchar(50) NOT NULL 
    dob         date NOT NULL
    gender      char(1) NOT NULL
    patient_id  INT UNIQUE NOT NULL
    
    Entity: address  
    street_address  varchar(50) NOT NULL  
    zip             INT NOT NULL  
    city            varchar(50) NOT NULL   
    state           char(2) NOT NULL
    
    Entity: contact
    email_address   varchar(50) NOT NULL  
    phone_num       INT NOT NULL 
    
    Entity: primary_physician  
    p_street_address  varchar(50) NULL 
    p_zip             INT NOT NULL
    p_city            varchar(50) NOT NULL
    p_state           char(2) NOT NULL
    p_first_name      varchar(50) NOT NULL 
    p_last_name       varchar(50) NOT NULL
    p_phone_num       INT NOT NULL
    
    Entity: login  
    username    varchar(20) UNIQUE NOT NULL
    password    varchar(20) NOT NULL
    
    Entity: dose_1  
    type_1      varchar(10) NOT NULL 
    lot_num_1   varchar(10) NOT NULL
    location_1  varchar(50) NOT NULL
    dose_1_date date NOT NULL
    
    Entity: dose_2  
    type_2      varchar(10) NOT NULL 
    lot_num_2   varchar(10) NOT NULL 
    dose_2_date date NOT NULL
    location_2  varchar(50) NOT NULL 
    
    Entity: booster  
    type_b      varchar(10) NOT NULL   
    lot_num_b   varchar(10) NOT NULL 
    dose_b_date date NOT NULL
    location_b  varchar(50) NOT NULL 
    
    Entity: medical_history
    notes                        varchar(200) 
    pre_existing_conditions      varchar(200)
    contracted_covid             date

**Plural Attributes**
    The plural attribute that we implemented is phone_num in contact. We decided it was a plural attribute because many patients can have multiple phone numbers (i.e. home and cell). We made another entity and labeled it "contact_phone_num" that contains patient_id (primary and foreign key that references the patient_id in the contact entity) and phone_num (primary key) to accommodate that.
