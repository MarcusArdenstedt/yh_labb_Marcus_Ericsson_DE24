# Logical model

**Entity and attribute**

***Orginazer***
- orginazer_id (PK)
- organizer_name
- phone
- email
- address_id


***School***
- school_id (PK)
- address_id (FK)
- orginazer_id (FK)
- schoolname
- phone
- email
- open_date

***Address***
- address_id (PK)
- address
- postal_code
- city (FK)


***City***
- city_id (PK)
- city_name

***School_Student***
- school_id (FK)
- student_id (FK)
- composite primary key (school_id, student_id)



***Program***
- program_id (PK)
- school_id (FK)
- program_name

***Program_Course***
- program_id (FK)
- course_id (FK)
- starts_date
- ends_date


***Course***
- cours_id (PK)
- course_code (FK)
- language


***Course_info***
- course_code (PK)
- course_name
- credits
- description



***Teacher***
- teacher_id (PK)
- consultant_id (FK)
- employee_id (FK)
- first_name
- last_name
- phone
- email

***Teacher_Course***
- teacher_course_id (PK)
- teacher_id (FK)
- course_id (FK)
- starts_date
- ends_date


***Teacher_Standalonecourse***
- teacher_standalonecourse_id (PK)
- teacher_id (FK)
- standalonecourse_id (FK)
- starts_date
- ends_date


***Standalonecourse***
- standalonecourse_id (PK)
- Language
- course_code (FK)

***SchoolStandalonecourse***
- school_id (FK)
- standalonecourse_id (FK)
- composite primary key (school_id, standalonecourse_id)

***Enrollment***
- enrollment_id (PK)
- standalonecourse_id (FK)
- student_id (FK)
- enrollment_date
- grade

***Student***
- student_id (PK)
- class_id (FK)
- first_name
- last_name


***Student_info***
- social_security_nr (PK)
- student_id (FK)
- address_id (FK)
- phone
- email

***Class***
- class_id (PK)
- class_name
- program_id (FK)
- management_id (FK)
- school_id (FK)



***Staff***
- staff_id (PK)
- employee_id (FK)
- school_id (FK)
- first_name
- last_name
- phone
- email
- work_title


***Educational_management***
- management_id (PK)
- employee_id (FK)
- first_name
- last_name

***Employee_info***
- employee_id (PK)
- social_security_nr  
- address_id (FK)
- salary
- started
- ended


***Consultant***
- consultant_id (PK)
- fee_per_hour
- work title
- organization_nr (FK)



***Consultan_company***
- organization_nr (PK)
- address_id (FK)
- company_name
- f-tax
- phone
- email


**Logical model ERD**

<img src = "assets/yh_logical_erd.png">

**Relational schema notation**
- Organizer (<u>organizer_id</u>, organizer_name, phone, email, address_id, FK address_id -> Address)

- School (<u>school_id</u>, address_id, schoolname, phone, email, organizer_id, open_date, FK: address_id -> Address, Fk: organizer_id -> Organizer)

- Program (<u>program_id</u>, school_id, program_name, starts_date, ends_date, FK: school_id -> School)

- Class (<u>class_id</u>, class_name, staff_id, school_id, FK: staff_id -> Staff, FK: school_id -> School)

- Student (<u>student_id</u>, first_name, last_name, class_id, FK: class_id -> Class)

- Student_info (<u>social_security_nr</u>, student_id, address_id, phone, email, FK: student_id -> Student, FK: address_id -> Address)

- Address (<u>address_id</u>, address, postal_code, city_id, FK: city_id -> City)

- City (<u>city_id</u>, city_name)

- Course_info (<u>course_code</u>, course_name, credits, description)

- Course (<u>course_id</u>, course_code, language)

- Standalonecourse (<u>standalonecourse_id</u>, language, course_code, FK course_code -> Course_info)

- Teacher (<u>teacher_id</u>, consultant_id, employee_id, first_name, last_name, phone, email, FK: employee_id -> Employee_id)

- Staff (<u>staff_id</u>, school_id, first_name, last_name, phone, email, work_title, FK: employee_id -> Employee_id, FK: school_id -> School)

- Consultant (<u>consultant_id</u>, fee_per_hour, organizer_nr, staff_id, teacher_id, FK organizer_nr -> Consultant_company, FK: teacher_id -> Teacher)

Consultant_company (<u>organization_nr</u>, company_name, f_tax, phone, email, address_id, FK: address_id -> Addrsss)

Employee_info (<u>employee_id</u>,social_security_nr, address_id, salery_per_moth, started, FK: address_id -> Address)

Educational_management (<u>management_id</u>, employee_id, first_name, last_name, phone, email, FK: employee_id -> Employee_info)

Enrollment (<u>enrollment_id</u>, standalonecourse_id, student_id, enrollment_date, grade, FK: standalonecourse_id -> Standalonecourse, FK: student_id -> Student) 

Program_Course (<u>programcourse_id</u>, program_id, course_id, starts_date, ends_date, FK program_id -> Program, FK: course_id -> Course)



Teacher_Course (<u>teacher_course_id</u>, teacher_id, course_id, FK: teacher_id -> Teacher, FK: course_id -> Course)


**Function dependency**

- organizer_id -> (organizer_name, phone, email, address_id)

- school_id -> (address_id, schoolname, phone, email, organizer_id, open_date)

- program_id -> (school_id, class_id, program_name, starts_date, ends_date)

- class_id -> (class_name, program_id, management_id, school_id)

- student_id -> (first_name, last_name, class_id)

- social_security_nr -> (student_id, address_id, phone, email)

- standalonecourse_id -> (language, course_code)

- course_id -> (course_code, language)

- teacher_id -> (consultant_id, employee_id, first_name, last_name, phone, email)

- teacher_course_id -> (teacher_id, course_id, starts_date, ends_date) 

- teacher_standalonecourse_id -> (teacher_id, standalonecourse_id, starts_date, ends_date)

- staff_id -> (school_id, first_name, last_name, phone, email, work_title, roll)

- consultant_id -> (fee_per_hour, work_title, organization_nr, staff_id)

- organization_nr -> (company_name, f_tax, phone, email, address_id)

- employee_id -> (social_security_nr, staff_id, address_id, salery_per_month, started, ended)

- management_id -> (employee_id, first_name, last_name, phone, email)

- address_id -> (address, postal_code, city_id)

- city_id -> city_name


**Trivially**

- (school_id, student_id) -> (school_id, student_id)

- (school_id, standalonecourse_id) -> (school_id, standalonecourse_id)
