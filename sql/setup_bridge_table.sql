SET search_path TO yrkesCO;




CREATE TABLE IF NOT EXISTS CourseProgram (
    course_id INTEGER NOT NULL,
    program_id INTEGER NOT NULL,
    starts_date DATE,
    ends_date DATE,
    PRIMARY KEY (course_id, program_id), -- composite primary KEY
    FOREIGN KEY (course_id) REFERENCES Course (course_id) ON DELETE CASCADE,
    FOREIGN KEY (program_id) REFERENCES "Program" (program_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS TeacherCourse (
    teacher_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    PRIMARY KEY (teacher_id, course_id), --composite primary key
    FOREIGN KEY (teacher_id) REFERENCES Teacher (teacher_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Course (course_id) ON DELETE CASCADE
); 






-- Ternary table 
CREATE TABLE IF NOT EXISTS SchoolProgramClass (
    school_id INTEGER NOT NULL,
    Program_id INTEGER NOT NULL,
    class_id INTEGER NOT NULL,
    nr_student INTEGER,
    starts_date DATE NOT NULL,
    ends_date DATE NOT NULL,
    PRIMARY KEY (school_id, program_id), -- composite primary key
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE,
    FOREIGN KEY (program_id) REFERENCES "Program" (program_id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES "Class" (class_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Enrollment (
    standalonecourse_id INTEGER NOT NULL,
    student_id INTEGER,
    school_id INTEGER,
    PRIMARY KEY (standalonecourse_id, student_id, school_id), -- composite primary KEY
    FOREIGN KEY (standalonecourse_id) REFERENCES Standalonecourse (standalonecourse_id) ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Student (student_id) ON DELETE CASCADE,
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS TeacherAssignment (
    teacher_id INTEGER NOT NULL,
    standalonecourse_id INTEGER NOT NULL,
    school_id INTEGER NOT NULL,
    PRIMARY KEY (teacher_id, standalonecourse_id, school_id), --Composite primary key
    FOREIGN KEY (teacher_id) REFERENCES Teacher (teacher_id) ON DELETE CASCADE,
    FOREIGN KEY (standalonecourse_id) REFERENCES Standalonecourse (standalonecourse_id) ON DELETE CASCADE,
    FOREIGN KEY (school_id) REFERENCES School (school_id) ON DELETE CASCADE
);

