# Conceptual model

**Entities**
- School
- Organizer
- Program
- Course
- Standalone_course
- Class
- Student
- Student info
- EducationalManagement
- Teacher
- Staff
- Consultant
- Consultant_company


**Initial conceptual ERD**

<img src = "assets/yh_initial_conceptual_erd.png">

<br>

**Relationship Statement and label**
- an Organizer `starts` one or sevral schools, each School `belongs to` one and only one organizer.
- Each School `has` zero, one or sevral programs, a Program `belong to` one or sevral schools.
- each Program `has` zero, one or more classes,
each Class `belongs to` one and only one program.
- a Program `has` sevral courses, a Course `is available in` one or more programs.
- each Course there is one and only one course_info, Course_info `belongs to` one and only one course.   
- each Class `has` zero, one or more students, Student can only `belong to` one and only one class.
each Student `have` one and only one student information, Studen_info can only `belong to` one student.
- each Student_info `can have` one and only one address, an Address `is linked to` one and only one student_info.
- An address `is in` one and only one city, each City `has` one or more addresses.
- each EducationalManagement `is resposible for` sevral classes, each Class `has` zero or one educationalmanagement.
- EducationalManagement `is` one and only one staff, a Staff `can be` one and only one educationalManagement.
- a staff `work at`one and only one school, each School `has` one or more staffs.
- Employee_info `belongs to` one and only one staff, each staff `can have` one and only one empolyee_info.
- Consultant_company `has` one or more consultants, each Consultant `belongs to` one and only one consultant_company. 
- a Consultant `is` one and only one staff, Staff `can be` one and only one consultant.
- a Staff `can be` one or more teacher, a Teacher is one and only one staff member.
- each School `provides` zero, one or more standalonecourses, Standalonecourse  is `available in` one or more schools.
- Teacher `teaches in` one or more courses, Course is `taught` by zero, one or more teachers.
- Teacher `teaches in` one or more standalonecourses, Standalonecourse `taught` by zero, one or more teachers.



<br>

**conceptual ERD with composite entities**


<img src = "assets/yh_conceptual_erd.png">

***Entities and composite entities***
- School
- Organizer
- SchoolProgramClass
- Program
- CourseProgram
- Course
- Course_info
- TeacherCourse
- Teacher
- TeachingAssignment
- Standalonecourse
- Enrollment
- Student
- Student_Info
- Address
- City
- Employee_info
- EducationalManagement
- Staff
- Consultan
- Consultant_company
