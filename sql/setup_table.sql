Create SCHEMA IF NOT EXISTS yrkesCo;

SET search_path TO yrkesCo;

DROP TABLE IF EXISTS City CASCADE;
DROP TABLE IF EXISTS Address CASCADE;
DROP TABLE IF EXISTS School CASCADE;
DROP TABLE IF EXISTS Course CASCADE;
DROP TABLE IF EXISTS SchoolProgramClass CASCADE;
DROP TABLE IF EXISTS Schoolname CASCADE;
DROP TABLE IF EXISTS Organizer CASCADE;
DROP TABLE IF EXISTS CourseProgram CASCADE;
DROP TABLE IF EXISTS Standalonecourse CASCADE;
DROP TABLE IF EXISTS Course_info CASCADE;
DROP TABLE IF EXISTS Staff CASCADE;
DROP TABLE IF EXISTS Teacher CASCADE;
Drop TABLE if EXISTS "Program" CASCADE;
Drop TABLE if EXISTS Consultant CASCADE;
Drop TABLE if EXISTS Consultant_company CASCADE;
Drop TABLE if EXISTS educationalmanagement CASCADE;
Drop TABLE if EXISTS employee_info CASCADE;
Drop TABLE if EXISTS Enrollment CASCADE;
Drop TABLE if EXISTS Student CASCADE;
Drop TABLE if EXISTS Student_info CASCADE;
Drop TABLE if EXISTS TeacherAssignment CASCADE;
Drop TABLE if EXISTS TeacherCourse CASCADE;
Drop TABLE if EXISTS "Class" CASCADE;




CREATE TABLE IF NOT EXISTS City (
    city_id SERIAL PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Address (
    address_id SERIAL PRIMARY KEY,
    city_id INTEGER NOT NULL,
    address VARCHAR(255) NOT NULL,
    postal_code CHAR(5),
    FOREIGN KEY (city_id) REFERENCES City (city_id) ON DELETE CASCADE 
);

CREATE TABLE IF NOT EXISTS Organizer (
    organizer_id SERIAL PRIMARY KEY,
    organizer_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL CHECK (email LIKE '%@%'),
    address_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES Address (address_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS School (
    school_id SERIAL PRIMARY KEY,
    organizer_id INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    schoolname VARCHAR(100) NOT NULL,
    phone  VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
    open_date DATE NOT NULL,
    FOREIGN KEY (address_id) REFERENCES Address (address_id) ON DELETE CASCADE,
    FOREIGN KEY (organizer_id) REFERENCES Organizer (organizer_id) ON DELETE CASCADE
);

 
CREATE TABLE IF NOT EXISTS "Program" (
    program_id SERIAL PRIMARY KEY,
    program_name VARCHAR(100) NOT NULL,
    nr_active INTEGER
);

CREATE TABLE IF NOT EXISTS Course_info (
    course_code VARCHAR(25) PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INTEGER NOT NULL,
    descriptions TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Course (
    course_id SERIAL PRIMARY KEY,
    course_code VARCHAR(25) NOT NULL,
    FOREIGN KEY (course_code) REFERENCES Course_info (course_code) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Standalonecourse (
    standalonecourse_id SERIAL PRIMARY KEY,
    course_code VARCHAR(25) NOT NULL,
    starts_date DATE NOT NULL,
    ends_date DATE NOT NULL,
    FOREIGN KEY (course_code) REFERENCES Course_info (course_code) ON DELETE CASCADE
);



CREATE TABLE IF NOT EXISTS Staff (
    staff_id SERIAL PRIMARY KEY,
    school_id INTEGER NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
    work_title VARCHAR(50) NOT NULL,
    roll VARCHAR(25) NOT NULL,
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE
); 

CREATE TABLE IF NOT EXISTS Consultant_company (
    organization_nr VARCHAR(11) PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    f_tax BOOLEAN NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
    address_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES Address (address_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Consultant (
    consultant_id SERIAL PRIMARY KEY,
    fee_per_hour INTEGER NOT NULL,
    organization_nr VARCHAR(11) NOT NULL,
    staff_id INTEGER NOT NULL,
    FOREIGN KEY (organization_nr) REFERENCES Consultant_company (organization_nr) ON DELETE CASCADE,
    FOREIGN KEY (staff_id) REFERENCES Staff (staff_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Employee_info (
    social_security_nr VARCHAR(15) PRIMARY KEY,
    staff_id INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    salary_per_month INTEGER NOT NULL,
    started DATE NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES Staff (staff_id) ON DELETE CASCADE,
    FOREIGN KEY (address_id) REFERENCES Address (address_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Teacher (
    teacher_id SERIAL PRIMARY KEY,
    staff_id INTEGER NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES Staff (staff_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS EducationalManagement (
    management_id SERIAL PRIMARY KEY,
    staff_id INTEGER NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES Staff (staff_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS "Class" (
    class_id SERIAL PRIMARY KEY,
    management_id INTEGER,
    class_name VARCHAR(50),
    FOREIGN KEY (management_id) REFERENCES EducationalManagement (management_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    class_id INTEGER,
    FOREIGN KEY (class_id) REFERENCES "Class" (class_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Student_info (
    social_security_nr VARCHAR(15) PRIMARY KEY,
    student_id INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
    FOREIGN KEY (student_id) REFERENCES Student (student_id) ON DELETE CASCADE,
    FOREIGN KEY (address_id) REFERENCES Address (address_id) ON DELETE CASCADE
);








