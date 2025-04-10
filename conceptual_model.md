# Conceptual model

**Entities**
- School
- Organizer
- Program
- Course
- Standalonecourse
- Course_info
- Class
- Student
- Student info
- Teacher
- Staff
- Consultant
- Consultant_company
- Employee_info
- Address
- City



<br>

**Relationship Statement and label**
- an Organizer `starts` one or sevral schools, each School `belongs to` one and only one organizer.
- Each School `Provides` one or sevral programs, a Program `belong to` one or sevral schools.
- each Program `belongs to` zero, one or more classes,
each Class `create to ` one and only one program.
- a Program is `build by` sevral courses, a Course `belaongs to` one and only one program.
- each Course `taught by` one or more teachers, Teacher teaches in zero, one or more courses.
- a Class is  a `set of ` sevral students, Student can only `belong to` one and only one class.
- School `consists of` one or more classes, each Class `belongs to` one and only one school.
each Student `have` one and only one student information, Studen_info can only `belong to` one and only one student.
- a Address `belongs to` one and only one student_info, Student_info is `connected` to one and only one address. 
- a Address `is in` one and only one city, a city `contains` one and only one address.  
- a staff `work at` one and only one school, each School `managed by` one or more staffs.
- Employee_info `belongs to` one and only one staff, each Staff `typing in` one and only one information in empolyee_info.
- Consultant_company has one or more  `employees` as consultants, each Consultant `belongs to` one and only one consultant_company. 
- a Staff member `is linked` to zero, one or more consultants, a Consultant `corresponds` to one and only one staff.
- a Staff member may be `linked to` one or more teachers, every Teacher `must be` one and only one staff.  
- each School `provides` zero, one or more standalonecourses, Standalonecourse  is `available in` one or more schools.
- Teacher `teaches` in zero, one or more coursers in course_schedule, each  course in Course_schedule `shared with` one or more teachers.
- Teacher `teaches in` one or more standalonecourses, Standalonecourse `taught` by zero, one or more teachers.
- a school `is a workplace` for one or more techers, Teacher `work at` one and only one school.  
  

**Initial conceptual ERD**

<img src = "assets/yh_initial_conceptual_erd.png">


<br>

**Conceptual ERD with composite entities**


<img src = "assets/yh_conceptual_erd.png">

***Entities***
- School
- Organizer
- Program
- Course
- Program_Course
- Course_info
- Teacher_Course
- Teacher
- Teacher_Standalonecourse
- Standalonecourse
- Enrollment
- Class
- School_Student
- Student
- Student_Info
- Address
- City
- Employee_info
- Staff
- Consultan
- Consultant_company
- eduactional_management

**Business rules**

- A program can only exist in one school.
- A program can be created without having a class.
- a class can only belong to one program.
- student can't be in sevral classes, only in one.
- Standalonecourse can take student that not are in any classe.
- Staff can only belong to one school.
- Student can only use one address, phon number and email.
- Teacher can only belong to one school.
- Educational management must be a employee, so he/she exist in staff. 
- Teacher can be consultant or employee. 