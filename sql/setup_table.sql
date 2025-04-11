Create SCHEMA IF NOT EXISTS yrkesCo;

SET search_path TO yrkesCo;

DROP TABLE IF EXISTS City CASCADE;
DROP TABLE IF EXISTS Address CASCADE;
DROP TABLE IF EXISTS School CASCADE;
DROP TABLE IF EXISTS Course CASCADE;
DROP TABLE IF EXISTS School_Standalonecourse CASCADE;
DROP TABLE IF EXISTS Program_Course CASCADE;
DROP TABLE IF EXISTS Organizer CASCADE;
DROP TABLE IF EXISTS School_student CASCADE;
DROP TABLE IF EXISTS Standalonecourse CASCADE;
DROP TABLE IF EXISTS Course_info CASCADE;
DROP TABLE IF EXISTS Staff CASCADE;
DROP TABLE IF EXISTS Teacher CASCADE;
Drop TABLE if EXISTS "Program" CASCADE;
Drop TABLE if EXISTS Consultant CASCADE;
Drop TABLE if EXISTS Consultant_company CASCADE;
Drop TABLE if EXISTS Teacher_Course CASCADE;
Drop TABLE if EXISTS employee_info CASCADE;
Drop TABLE if EXISTS Enrollment CASCADE;
Drop TABLE if EXISTS Student CASCADE;
Drop TABLE if EXISTS Student_info CASCADE;
Drop TABLE if EXISTS Teacher_Standalonecourse CASCADE;
Drop TABLE if EXISTS TeacherCourse CASCADE;
Drop TABLE if EXISTS "Class" CASCADE;
Drop TABLE if EXISTS Educational_management CASCADE;





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
    school_id INTEGER NOT NULL,
    program_name VARCHAR(100) NOT NULL,
    starts_date DATE NOT NULL,
    ends_date DATE NOT NULL,
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE
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
    languages VARCHAR(10) NOT NULL,
    FOREIGN KEY (course_code) REFERENCES Course_info (course_code) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Standalonecourse (
    standalonecourse_id SERIAL PRIMARY KEY,
    languages VARCHAR(10) NOT NULL,
    course_code VARCHAR(25) NOT NULL,
    FOREIGN KEY (course_code) REFERENCES Course_info (course_code) ON DELETE CASCADE
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

CREATE TABLE IF NOT EXISTS Employee_info (
    employee_id SERIAL PRIMARY KEY,
    social_security_nr VARCHAR(15) UNIQUE NOT NULL,
    address_id INTEGER NOT NULL,
    salary_per_month INTEGER NOT NULL,
    started DATE NOT NULL,
    ended DATE,
    FOREIGN KEY (address_id) REFERENCES Address (address_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS Staff (
    staff_id SERIAL PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    school_id INTEGER NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
    work_title VARCHAR(25),
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES Employee_info (employee_id) ON DELETE CASCADE
); 

CREATE TABLE IF NOT EXISTS Teacher (
    teacher_id SERIAL PRIMARY KEY,
    employee_id INTEGER,
    school_id INTEGER NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
    FOREIGN KEY (employee_id) REFERENCES Employee_info (employee_id) ON DELETE CASCADE,
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS Consultant (
    consultant_id SERIAL PRIMARY KEY,
    fee_per_hour INTEGER NOT NULL,
    teacher_id INTEGER NOT NULL,
    organization_nr VARCHAR(11) NOT NULL,
    FOREIGN KEY (organization_nr) REFERENCES Consultant_company (organization_nr) ON DELETE CASCADE,
    FOREIGN KEY (teacher_id) REFERENCES Teacher (teacher_id) ON DELETE CASCADE
);






CREATE TABLE IF NOT EXISTS "Class" (
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(50),
    program_id INTEGER NOT NULL,
    staff_id INTEGER,
    school_id INTEGER NOT NULL,
    FOREIGN KEY (program_id) REFERENCES "Program" (program_id) ON DELETE CASCADE,
    FOREIGN KEY (staff_id) REFERENCES Staff (staff_id) ON DELETE CASCADE,
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE
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








