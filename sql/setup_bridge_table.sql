SET search_path TO yrkesCO;




CREATE TABLE IF NOT EXISTS Program_Course (
    program_course_id SERIAL PRIMARY KEY,
    program_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    starts_date DATE,
    ends_date DATE,
    FOREIGN KEY (course_id) REFERENCES Course (course_id) ON DELETE CASCADE,
    FOREIGN KEY (program_id) REFERENCES "Program" (program_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS Teacher_Course (
    teacher_course_id SERIAL PRIMARY KEY,
    teacher_id INTEGER,
    course_id INTEGER NOT NULL,
    starts_date DATE NOT NULL,
    ends_date DATE NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES Teacher (teacher_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Course (course_id) ON DELETE CASCADE
); 


CREATE TABLE IF NOT EXISTS Teacher_Standalonecourse (
    teacher_standalonecourse_id SERIAL PRIMARY KEY,
    teacher_id INTEGER,
    standalonecourse_id INTEGER NOT NULL,
    starts_date DATE NOT NULL,
    ends_date DATE NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES Teacher (teacher_id) ON DELETE CASCADE,
    FOREIGN KEY (standalonecourse_id) REFERENCES Standalonecourse (standalonecourse_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS School_Standalonecourse (
    school_id INTEGER NOT NULL,
    standalonecourse_id INTEGER NOT NULL,
    PRIMARY KEY (school_id, standalonecourse_id), -- Composite primary key
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE,
    FOREIGN KEY (standalonecourse_id) REFERENCES Standalonecourse (standalonecourse_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS School_Student (
    school_id INTEGER NOT NULL,
    student_id INTEGER NOT NULL,
    PRIMARY KEY (school_id, student_id), -- composite primary key
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Student (student_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS Enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    standalonecourse_id INTEGER NOT NULL,
    student_id INTEGER,
    enrollment_date DATE,
    grade VARCHAR(1),
    FOREIGN KEY (standalonecourse_id) REFERENCES Standalonecourse (standalonecourse_id) ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Student (student_id) ON DELETE CASCADE
);

