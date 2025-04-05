


-- Program and number of student in each class
SET search_path TO yrkesCo;
SELECT
    p.program_name,
    cl.class_name,
    sp.nr_student
FROM
    "Program" p
INNER JOIN
    SchoolProgramClass sp ON p.program_id = sp.program_id
INNER JOIN
    "Class" cl ON sp.class_id = cl.class_id;



-- school and it's program and when it starts and ends
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    cl.class_name,
    sp.starts_date,
    sp.ends_date
FROM
    School s
INNER JOIN
    SchoolProgramClass sp ON s.school_id = sp.school_id
INNER JOIN
    "Class" cl ON sp.class_id = cl.class_id;


-- Finding student and which classes they are in 
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    p.program_name,
    cl.class_name,
    st.first_name,
    st.last_name,
    cl.class_id
FROM
    School s
INNER JOIN
    SchoolProgramClass sp ON s.school_id = sp.school_id
INNER JOIN
    "Program" p ON sp.program_id = p.program_id
INNER JOIN
    "Class" cl ON sp.class_id = cl.class_id
INNER JOIN
    Student st ON cl.class_id = st.class_id;



-- standalonecourse, which city and which course student enrolls to 
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    a.address AS school_address,
    ct.city_name AS school_city,
    sac.course_code,
    st.first_name,
    last_name,
    starts_date,
    ends_date
FROM
    School s
INNER JOIN
    Enrollment em ON s.school_id = em.school_id
INNER JOIN
    Student st ON em.student_id = st.student_id
INNER JOIN
    Standalonecourse sac ON em.standalonecourse_id = sac.standalonecourse_id
INNER JOIN
    Address a ON s.address_id = a.address_id
INNER JOIN
    City ct ON a.city_id = ct.city_id;



-- Finding courses to each program and which school
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    p.program_id,
    p.program_name,
    c.course_code,
    cp.starts_date,
    cp.ends_date
FROM
    School s
INNER JOIN
    SchoolProgramClass spc ON s.school_id = spc.school_id
INNER JOIN 
    "Program" p ON spc.program_id = p.program_id
INNER JOIN 
    CourseProgram cp ON p.program_id = cp.program_id
INNER JOIN
    Course c ON cp.course_id = c.course_id;


SET search_path TO yrkesCo;
SELECT
    p.program_id,
    p.program_name,
    c.course_id,
    c.course_code,
    cp.starts_date,
    cp.ends_date
FROM
    "Program" p
INNER JOIN
    CourseProgram cp ON p.program_id = cp.program_id
INNER JOIN
    Course c ON cp.course_id = c.course_id;



-- teachers name, course and roll 
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    sac.course_code,
    sac.standalonecourse_id,
    t.teacher_id,
    sff.first_name,
    sff.last_name,
    sff.roll
FROM
    School s 
INNER JOIN
    TeacherAssignment ta ON s.school_id = ta.school_id
INNER JOIN
    Standalonecourse sac ON ta.standalonecourse_id = sac.standalonecourse_id
INNER JOIN
    Teacher t ON ta.teacher_id = t.teacher_id
INNER JOIN
    Staff sff ON t.staff_id = sff.staff_id; 



-- Get teacher and student in the standalonecourse
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    sac.standalonecourse_id,
    sac.course_code,
    sac.starts_date,
    sac.ends_date,
    t.teacher_id,
    sff.first_name,
    sff.last_name,
    sff.roll,
    st.student_id,
    st.first_name,
    st.last_name
FROM
    School s 
INNER JOIN
    Enrollment em ON s.school_id = em.school_id
INNER JOIN
    Standalonecourse sac ON em.standalonecourse_id = sac.standalonecourse_id
INNER JOIN
    Student st ON em.student_id = st.student_id
-- Here i have to make a join who has to fulfill two matching.
INNER JOIN
    TeacherAssignment ta ON sac.standalonecourse_id = ta.standalonecourse_id 
    AND em.school_id = ta.school_id
INNER JOIN
    Teacher t ON ta.teacher_id = t.teacher_id
INNER JOIN
    Staff sff ON t.staff_id = sff.staff_id;


-- class and it's educationale management
SET search_path To yrkesCo;
SELECT
    s.schoolname,
    p.program_id,
    p.program_name,
    cl.class_id,
    cl.class_name,
    em.management_id,
    em.staff_id,
    sff.first_name,
    sff.last_name,
    sff.email,
    sff.roll
FROM
    School s 
INNER JOIN 
    SchoolProgramClass sp ON s.school_id = sp.school_id
INNER JOIN
    "Program" p ON sp.program_id = p.program_id
INNER JOIN
    "Class" cl ON sp.class_id = cl.class_id
INNER JOIN
    EducationalManagement em ON cl.class_id = em.class_id
INNER JOIN
    Staff sff ON em.staff_id = sff.staff_id;



-- program, class with educaional management and student
SET search_path To yrkesCo;
SELECT
    s.schoolname,
    p.program_id,
    p.program_name,
    cl.class_id,
    cl.class_name,
    em.management_id,
    em.staff_id,
    sff.first_name,
    sff.last_name,
    st.student_id,
    st.first_name,
    st.last_name
FROM
    School s 
INNER JOIN 
    SchoolProgramClass sp ON s.school_id = sp.school_id
INNER JOIN
    "Program" p ON sp.program_id = p.program_id
INNER JOIN
    "Class" cl ON sp.class_id = cl.class_id
INNER JOIN
    EducationalManagement em ON cl.class_id = em.class_id
INNER JOIN
    Staff sff ON em.staff_id = sff.staff_id
INNER JOIN
    Student st ON cl.class_id = st.class_id;


-- information about a student who takes standalonecourse
SET search_path TO yrkesCo;
SELECT
    st.first_name,
    st.last_name,
    sf.social_security_nr,
    sf.phone,
    sf.email,
    st.class_id
FROM
    School s
INNER JOIN
    Enrollment em ON s.school_id = em.school_id
INNER JOIN
    Student st ON em.student_id = st.student_id
INNER JOIN
    Student_info sf ON st.student_id = sf.student_id; 



-- All students and the information on each student
SET search_path TO yrkesCo;
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    s.class_id,
    sf.social_security_nr,
    sf.email,
    sf.phone,
    a.address,
    a.address_id,
    ct.city_name
FROM
    Student s
INNER JOIN
    Student_info sf ON s.student_id = sf.student_id
INNER JOIN
    Address a ON sf.address_id = a.address_id
INNER JOIN
    City ct ON a.city_id = ct.city_id;





-- Program with courses in school in Gothenburg
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    s.organizer_id,
    c.course_code,
    cif.course_name,
    cif.credits,
    p.program_name,
    p.nr_active
FROM
    Course c 
INNER JOIN
    CourseProgram cp ON c.course_id = cp.course_id
INNER JOIN
    "Program" p ON cp.program_id = p.program_id
INNER JOIN
    Course_info cif ON c.course_code = cif.course_code
INNER JOIN
    SchoolProgramClass spc ON p.program_id =spc.program_id
INNER JOIN
    School s ON spc.school_id = s.school_id
WHERE s.school_id = 2;




-- educational management info
SET search_path TO yrkesCo;
SELECT
    s.school_id,
    s.schoolname,
    s.open_date,
    sff.staff_id,
    sff.first_name,
    sff.last_name,
    a.address,
    ct.city_name,
    sff.work_title,
    ei.social_security_nr,
    salary_per_month
FROM
    School s 
INNER JOIN
    Staff sff ON s.school_id = sff.school_id
INNER JOIN
    Employee_info ei ON sff.staff_id = ei.staff_id
INNER JOIN
    Address a ON ei.address_id = a.address_id
INNER JOIN
    City ct ON a.city_id = ct.city_id
WHERE
    work_title LIKE '%ed%';




-- consultant teacher and the information about them.
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    s.phone,
    s.email,
    sff.staff_id,
    sff.first_name,
    sff.last_name,
    sff.work_title,
    sff.roll,
    ct.fee_per_hour,
    ct.organization_nr,
    cc.company_name,
    cc.f_tax,
    cc.phone,
    cc.email,
    a.address,
    cy.city_name
FROM
    School s 
INNER JOIN
    Staff sff ON s.school_id = sff.school_id
INNER JOIN
    Consultant ct ON sff.staff_id = ct.staff_id
INNER JOIN
    Consultant_company cc ON ct.organization_nr = cc.organization_nr
INNER JOIN
    Address a ON cc.address_id = a.address_id
INNER JOIN
    City cy ON a.city_id = cy.city_id
WHERE
    sff.work_title LIKE '%lära%';