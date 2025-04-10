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






-- Here you get which educational management is responsible to which class,
-- And 2027 the haven't get any educational management.
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    p.program_name,
    class_name,
    em.first_name,
    em.last_name
FROM
    School s  
LEFT JOIN
    "Program" p ON s.school_id = p.school_id
LEFT JOIN
    "Class" cl ON p.program_id = cl.program_id
LEFT JOIN
    Educational_management em ON cl.management_id = em.management_id
WHERE
    em.first_name = 'Jennifer';







-- inforamtion about educational management Jennfifer Axelson
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    sff.first_name,
    sff.last_name,
    ep.salary_per_month,
    a.address,
    a.postal_code,
    ct.city_name
FROM
    School s  
LEFT JOIN
    Staff sff ON s.school_id = sff.school_id
LEFT JOIN
    Employee_info ep ON sff.employee_id = ep.employee_id
INNER JOIN
    Address a ON ep.address_id = a.address_id
INNER JOIN
    City ct ON a.city_id = ct.city_id
WHERE
    sff.first_name = 'Jennifer';








--- Teacher and which standalonecourse they had.
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    t.first_name,
    t.last_name,
    tsc.teacher_standalonecourse_id,
    sac.course_code,
    sac.languages,
    tsc.starts_date,
    tsc.ends_date
FROM
    School s
INNER JOIN
    Teacher t ON s.school_id = t.school_id
INNER JOIN
    Teacher_Standalonecourse tsc ON t.teacher_id = tsc.teacher_id
INNER JOIN
    Standalonecourse sac ON tsc.standalonecourse_id = sac.standalonecourse_id;







-- Teacher and student in standalonecourse
SET search_path TO yrkesCo;
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    sac.course_code,
    em.enrollment_date,
    em.grade,
    t.first_name,
    t.last_name,
    t.teacher_id
FROM
    Student s
LEFT JOIN
    Enrollment em ON s.student_id = em.student_id
LEFT JOIN
    Standalonecourse sac ON em.standalonecourse_id = sac.standalonecourse_id
LEFT JOIN
    Teacher_Standalonecourse tsc ON sac.standalonecourse_id = tsc.standalonecourse_id
LEFT JOIN
    Teacher t ON tsc.teacher_id = t.teacher_id;




-- average salary for educational management i each school
SET search_path TO yrkesCo;
SELECT
    s.schoolname,
    ROUND(AVG(ei.salary_per_month), 2) AS gensomsnitt_lön_utbildningsledare
FROM
    School s
LEFT JOIN
    Staff sff ON s.school_id = sff.school_id
LEFT JOIN
    Employee_info ei ON sff.employee_id = ei.employee_id
WHERE
    sff.work_title LIKE '%Utb%'
GROUP BY
    s.schoolname;

