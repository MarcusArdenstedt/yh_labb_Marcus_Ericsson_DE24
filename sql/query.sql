SET search_path TO yrkesCo;

SELECT
    s.schoolname,
    p.program_name,
    cl.class_name,
    p.starts_date,
    p.ends_date
FROM
    School s 
INNER JOIN 
    "Program" p ON s.school_id = p.school_id
INNER JOIN
    "Class" cl ON p.program_id = cl.program_id;


-- finding all employee and what kind of work title they have.
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    sff.first_name,
    sff.last_name,
    emf.work_title,
    emf.started,
    emf.ended 
FROM
    School s 
INNER JOIN
    Staff sff ON s.school_id = sff.school_id
INNER JOIN
    Employee_info emf ON sff.staff_id = emf.staff_id;



-- The same course is starting each year from 2025 -> 2027 and which language the course gonna be in
SET search_path TO yrkesCo;
SELECT
    p.program_name,
    c.course_code,
    pc.starts_date,
    pc.ends_date,
    c.languages
FROM
    School s 
INNER JOIN
    "Program" p ON s.school_id = p.school_id
INNER JOIN
    Program_Course pc ON p.program_id = pc.program_id
INNER JOIN
    Course c ON pc.course_id = c.course_id;


SET search_path TO yrkesCo;
SELECT
    s.first_name,
    s.last_name,
    s.class_id,
    cl.class_name,
    p.program_name
FROM
    Student s
INNER JOIN
    "Class" cl ON s.class_id = cl.class_id
INNER JOIN
    "Program" p ON cl.program_id = p.program_id;