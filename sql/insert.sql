SET search_path TO yrkesCo;

INSERT INTO City (city_name)
VALUES 
    ('Stockholm'),
    ('Gothenburg'),
    ('Uppsala'),
    ('Västerås'),
    ('Enköping'),
    ('Borås');

INSERT INTO Address (city_id, address, postal_code)
VALUES 
    (1, 'Sveavagen 10', 11350),
    (2, 'Ullevigatan 10', 41140),
    (1, 'Ulvsundavägen 25', 16732),
    (1, 'Sveavägen 68', 11134),
    (2, 'Kungsgata 110', 41134),
    (2, 'Hedengata 20', 42215),
    (1, 'Odenplan 13', 11327),
    (1, 'Mästersamuelgatan 10', 11157),
    (2, 'Kungsgatan 20', 41115),
    (1, 'kistavägen 123', 19267),
    (2, 'Slottsskogsgatan 67', 41468),
    (1, 'Hammarby alle 12', 12030),
    (2, 'Gamla stan 74', 41256),
    (3, 'Kungsgatan 156', 75321),
    (4, 'Jakobsbergvägen 123', 72131),
    (5, 'Bäckgatan 3', 74941),
    (2, 'Herkulesgatan 7', 41701),
    (2, 'Kalmargatan 90', 41703),
    (2, 'Klimatgata 15', 42901),
    (3, 'Solvägen 30', 72460),
    (2, 'Åsevänden 19', 41127),
    (1, 'Björkebyvägen 33', 17564),
    (6, 'Evedalsgatan 29', 50435),
    (1, 'Pardisvägen 23', 17831),
    (1, 'Granitvägen 123', 13546),
    (1, 'Rörvägen 45', 13650),
    (1, 'Astrakanvägen 67', 13932),
    (2, 'Markvägen 190', 47540),
    (2, 'Andalen 52', 42338),
    (2, 'Fyrbråksvägen 31', 41250),
    (1, 'Paradisvägen 1', 17831),
    (1, 'Rörvägen 100', 13650),
    (2, 'Järfällavägen 34', 41337);









INSERT INTO Organizer (organizer_name, phone, email, address_id)
VALUES 
    ('YrkesCo', '08-80-65-65', 'yrkesco_1996@.com', 1);



INSERT INTO School (address_id, schoolname, phone, email, organizer_id, open_date)
VALUES  
    (1, 'StockholmYrkes', '08-500-00 508', 'yrkescostockholm@.com', 1,  '1996-05-10'),
    (2, 'GöteborgYrkes', '031-365-00', 'yrkescogoteborg@.com', 1, '2010-10-10');


INSERT INTO "Program" (program_name, nr_active)
VALUES
    ('Javautvecklare', 1),
    ('Automationsingenjör', 2),
    ('Elnätsdesign', 3),
    ('UX-designer', 2);


INSERT INTO Course_info (course_code, course_name, credits, descriptions)
VALUES
    ('APM101', 'Agil projektmetodik', 20, 'Här lär du dig vad agil projektmetodik innebär, en arbetsmetod som fokusera på flexibilitet och snabb anpassning till förändringar. Agila metoder som Scrum och kanban är det som används ofta inom programmering'),
    ('DBH102', 'Databashantering', 30, 'Här får du lära dig om relationsdatabaser och NoSQL-databaser. Efter kursen kommer du kunna skapa egna databaser och anpassa dem efetr projekts behov'),
    ('JEE201', 'Java Enterprise & Eclipse', 45, 'Här lär du att bygga webbaserde applikationer med hjälp av Java och Eclipse. Du får också lära dig om MVC-modell (Model-view-controll)'),
    ('JPG103', 'Javaprogrammering A', 25, 'Nybörjar kurs i Java en av världens mest använda programmeringsspråk, känt för stabilitet och flexibilitet'),
    ('JPG202', 'Javaprogrammering B', 30, 'Java kurs som bygger vidare på dina grundkunskaper och tar dig till nästa nivå. Du lär dig skapa mer anvancerade program och förbättra din kod med objektorienterad programmering'),
    ('AMT104', 'Automationsteknik', 35, 'Introduktion till industriella automationssystem, deras uppbyggnad, funktion och programmering för optimera drift'),
    ('RRS105', 'Robottik & robotsystem', 20, 'Grundläggande och tillämpning robotteknik, inklusive programmering, simulering och driftsättning av robotsystem'),
    ('ETCAD106', 'Elteknik & el-CAD', 30, 'Grundläggande och tillämpad elteknik i kombination med el-CAD för att konstruera och analysera elsystem inom automation'),
    ('EDS203', 'Elnätets distribution och system', 40, 'Beskriver hur elnät är uppbyggd, hur de drivs och övervakas, samt hur olika delar i kraftsytemet samverkar'),
    ('AME107', 'Arbetsmiljö & elsäkerhet', 15, 'Fokus på säkerhetsföreskrifter och arbetsmiljö inom elbranschen, inklusive ESA och hjärt-lungräddning vid olycka'),
    ('NEBR108', 'Nätplanering och EBR', 20, 'Genomgång av EBR-standarder och metoder för planering, dimensionering och kostnadsberäkningar av elnät'),
    ('FRT109', 'Frontend', 20, 'Grundläggande kunskaper i HTML5,CSS3 och JavaScript. Hur design levereras till frontendutvecklare'),
    ('VSD204', 'Visuell Design', 30, 'Typgrafi, färglära och kontrast. Designsystem och konceptvisualisering'),
    ('CBS205', 'Cybersäkerhet', 40, 'Man får lära sig bygga en starkare säkerhetskultur på företag och i organisationer, och omfattar cyberkriminalitet.'),
    ('APD206', 'AI & Prompt Design', 40, 'Den här kusren är mer för dem som har erfarenhet inom UX-design. Man kommer fördjupa med integrera AI-verktyg i din designprocess, Arbeta etisk och unvika diskriminering med AI');

INSERT INTO Course (course_code)
VALUES
    ('APM101'),
    ('DBH102'),
    ('JEE201'),
    ('JPG103'),
    ('JPG202'),
    ('AMT104'),
    ('RRS105'),
    ('ETCAD106'),
    ('EDS203'),
    ('AME107'),
    ('NEBR108'),
    ('FRT109'),
    ('VSD204'),
    ('CBS205'),
    ('APD206');


INSERT INTO Standalonecourse (course_code, starts_date, ends_date)
VALUES
    ('APD206', '2025-10-10', '2025-12-10'),
    ('CBS205', '2025-10-09', '2025-12-10');


INSERT INTO Staff (school_id, first_name, last_name, phone, email, work_title, roll)
VALUES
    (1, 'Olof', 'Svensson', '073-267-13-42', 'olofsvensson@.com', 'rektor', 'anställd'),
    (2, 'Linda', 'Lindasson', '073-245-12-90', 'lindalindasson@.com', 'rektor', 'anställd'),
    (1, 'Jan', 'Jakobson', '070-456-23-15', 'janjakaobson@.com', 'lärare', 'anställd'),
    (1, 'Rollo', 'Lothbrok', '071-321-90-99', 'rollolothbrob@.com', 'lärare', 'konsult'),
    (1, 'Joe', 'Andersson', '070-147-31-90', 'joeandersson@.com', 'lärare', 'konsult'),
    (2, 'Karin', 'Svenson', '070-648-87-56', 'karinsvensson@.com', 'lärare', 'anställd'),
    (2, 'Malin', 'gustavsson', '070-345-56-76', 'malingustavsson@.com', 'lärare', 'konsult'),
    (2, 'Beck', 'Svahn', '071-231-19-91', 'becksvahn@.com', 'fastighetskötare', 'konsult'),
    (1, 'Stig', 'Larsson', '075-412-94-34', 'stiglarsson@.com', 'fastighetskötare', 'konsult'),
    (1, 'Jack', 'Green', '070-287-69-69', 'jackgreen@.com', 'administration', 'anställd'),
    (1, 'Sven', 'Erixon', '070-247-57-73', 'svenerixon@.com', 'administration', 'anställd'),
    (1, 'Lisa', 'Lisason', '070-167-15-13', 'lisalisason@.com', 'administration', 'anställd'),
    (2, 'Maja', 'Majason', '070-498-89-78', 'majamajason@.com', 'administration', 'anställd'),
    (2, 'Bob', 'Bobson', '070-591-45-12', 'bobbobson@.com', 'administration', 'anställd'),
    (2, 'Linn', 'Eriksson', '070-207-01-23', 'linneriksson@.com', 'administration', 'anställd'),
    (2, 'Scott', 'Svansson', '070-734-37-72', 'scottsvansson@.com', 'lärare', 'konsult'),
    (1, 'Jakob', 'Brorson', '073-453-78-87', 'jakobbrorson@.com', 'educationalmanagement', 'anställd'),
    (2, 'Mindy', 'Larsson', '075-421-21-22', 'mindylarsson@.com', 'educationalmanagemnet', 'anställd'),
    (1, 'Jennifer', 'Axelson', '077-813-81-82', 'jenniferaxelson@.com', 'educationalmanagement', 'anställd'),
    (2, 'Carolina', 'Karlson', '077-953-91-19', 'carolinakarlson@.com', 'educationalmanagement', 'anställd');


INSERT INTO Consultant_company (organization_nr, company_name, f_tax, phone, email, address_id)
VALUES
    ('667812-1234', 'TeachIT', True, '010-156-90-99', 'teachit@.com', 4),
    ('77910-3456', 'Teaching', False, '010-234-19-90', 'teaching@.com', 5),
    ('111344-7891', 'SchoolsOut', True, '010-519-22-55', 'schoolsout@.com', 6),
    ('99910-5189', 'FastighetAB', True, '017-342-31-13', 'faastighetab@.com', 9),
    ('55430-7865', 'FindusAB', False, '018-784-84-48', 'findus@.com', 8);




INSERT INTO Consultant (fee_per_hour, organization_nr, staff_id)
VALUES
    (1200, '667812-1234', 4),
    (1000, '77910-3456', 5),
    (900, '111344-7891', 7),
    (1500, '55430-7865', 8),
    (950, '99910-5189', 9);


INSERT INTO Employee_info (social_security_nr, staff_id, address_id, salary_per_month, started)
VALUES
    ('1978-01-29-4991', 1, 7, 55000, '2000-10-17'),
    ('1987-10-14-1337', 2, 8, 65000,'2015-01-10'),
    ('1993-11-11-4578', 3, 11, 44000, '2020-10-02'),
    ('1980-07-25-9012', 6, 12, 40000, '2010-10-10'),
    ('1995-04-19-1783', 10, 13, 36000, '2018-10-27'),
    ('1980-12-24-5682', 11, 14, 35000, '2005-01-10'),
    ('1985-05-03-4512', 12, 15, 30000, '2023-01-10'),
    ('1975-01-31-1284', 13, 16, 38000, '2010-01-15'),
    ('1974-02-24-3457', 14, 17, 38500, '2009-09-18'),
    ('2000-02-10-2341', 15, 18, 29500, '2024-09-10'),
    ('1997-03-09-4538', 16, 19, 33000, '2020-05-20'),
    ('1990-05-02-1245', 17, 20, 35500, '2020-05-20'),
    ('1980-11-11-4578', 18, 21, 33000, '2010-01-15'),
    ('1992-05-19-4587', 19, 22, 33000, '2018-10-15'),
    ('1970-10-28-3452', 20, 23, 44000, '1996-09-10');
    

INSERT INTO Teacher (staff_id)
VALUES
    (3),
    (4),
    (5),
    (6),
    (7),
    (8);


INSERT INTO EducationalManagement (staff_id)
VALUES
    (17),
    (19),
    (18);



INSERT INTO "Class" (management_id, class_name)
VALUES
    (1, 'JV2025'),
    (1, 'AMI2025'),
    (2, 'AMI2025');



INSERT INTO Student (first_name, last_name, class_id)
VALUES
    ('Alex', 'Gran', 1),
    ('Emma', 'Svensson', 1),
    ('Lisa', 'Ajax', 1),
    ('Sarah', 'Lindström', 2),
    ('Gustav', 'Gustavsson', 3),
    ('Erik', 'Svärd', 3),
    ('Melinda', 'Melindason', 3),
    ('Kurt', 'Salming', NULL),
    ('Björn', 'Björnson', NULL),
    ('Jessica', 'Landström', NULL);



INSERT INTO Student_info (social_security_nr, student_id, address_id, phone, email)
VALUES
    ('1996-05-26-5321', 1, 24, '070-345-19-91', 'alexgran@.com'),
    ('1989-03-25-3489', 2, 25, '070-649-52-12', 'emmasvensson@.com'),
    ('1987-09-13-5912', 3, 26, '070-581-14-41', 'lisaajax@.com'),
    ('1999-10-17-1934', 4, 27, '070-141-54-45', 'sarahlindström@.com'),
    ('2000-01-02-4871', 5, 28, '070-394-23-33', 'gustavgustavsson@.com'),
    ('1985-01-21-9353', 6, 29, '070-345-94-48', 'eriksvärd@.com'),
    ('1979-11-23-3919', 7, 30, '070-945-98-99', 'melindamelindason@.com'),
    ('1999-12-31-3410', 8, 31, '070-345-41-90', 'kurtsalming@.com'),
    ('2005-06-23-5024', 9, 32, '070-194-14-56', 'bjornbjornson@.com'),
    ('2007-10-17-2449', 10, 33, '070-252-53-95', 'jessicalandstom@.com');


-------------------------------------



-- Bridge table

INSERT INTO CourseProgram (course_id, program_id, starts_date, ends_date)
VALUES
    (1, 1, '2025-10-01', '2025-11-15'),
    (2, 1, '2025-11-16', '2025-12-20'),
    (3, 1, '2026-01-05', '2026-02-28'),
    (6, 2, '2025-10-01', '2025-11-15'),
    (7, 2, '2025-11-20', '2025-12-17'),
    (8, 2, '2026-01-10', '2026-02-28'),
    (15, 2, '2026-03-01', '2026-04-10');





INSERT INTO TeacherCourse (teacher_id, course_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 6),
    (5, 7),
    (6, 8),
    (6, 15);


--- Ternary table.

INSERT INTO SchoolProgramClass (school_id, program_id, class_id, nr_student, starts_date, ends_date)
VALUES
    (1, 1, 1, 4, '2025-09-10', '2027-06-25'),
    (1, 2, 2, NULL, '2025-09-10', '2027-06-20'),
    (2, 2, 3, 3, '2025-11-02', '2027-06-28');
 

-- this is trivially, that's mean it's have non-prime attribute thats are depending on the key.
INSERT INTO Enrollment (standalonecourse_id, student_id, school_id)
VALUES
    (1, 4, 1),
    (2, 7, 2),
    (2, 2, 1);


INSERT INTO TeacherAssignment (teacher_id, standalonecourse_id, school_id)
VALUES
    (6, 1, 1),
    (3, 2, 2),
    (2, 2, 1);








