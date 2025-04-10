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
    (2, 'Järfällavägen 34', 41337),
    (1, 'Metroitvägen 14', 17560),
    (2, 'Åsevänden 33', 41127);









INSERT INTO Organizer (organizer_name, phone, email, address_id)
VALUES 
    ('YrkesCo', '08-80-65-65', 'yrkesco_1996@.com', 1);



INSERT INTO School (address_id, schoolname, phone, email, organizer_id, open_date)
VALUES  
    (1, 'StockholmYrkes', '08-500-00 508', 'yrkescostockholm@.com', 1,  '1996-05-10'),
    (2, 'GöteborgYrkes', '031-365-00', 'yrkescogoteborg@.com', 1, '2010-10-10');


INSERT INTO "Program" (school_id, program_name, starts_date, ends_date)
VALUES
    (1, 'Javautvecklare', '2025-09-01', '2027-06-20'),
    (2, 'Automationsingenjör', '2025-09-02', '2027-06-25'),
    (2, 'Elnätsdesign', '2025-09-02', '2027-06-25'),
    (1, 'UX-designer', '2025-09-01', '2027-06-20'),
    (1, 'Javautvecklare', '2026-09-02', '2028-06-15'),
    (2, 'Automationsingenjör', '2026-09-03', '2028-06-20'),
    (2, 'Elnätsdesign', '2026-09-03', '2028-06-20'),
    (1, 'UX-design', '2026-09-02', '2028-06-15'),
    (1, 'Javautvecklare', '2027-09-03', '2029-06-19'),
    (2, 'Automationsingenjör', '2027-09-02', '2029-06-22'),
    (2, 'Elnätsdesign', '2027-09-02', '2029-06-22'),
    (1, 'UX-design', '2027-09-03', '2029-06-19');


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

INSERT INTO Course (course_code, languages)
VALUES
    ('APM101', 'Svenska'),
    ('DBH102', 'Svenska'),
    ('JEE201', 'Svenska'),
    ('JPG103', 'Engelska'),
    ('JPG202', 'Engelska'),
    ('AMT104', 'Engelska'),
    ('RRS105', 'Svenska'),
    ('ETCAD106', 'Svenska'),
    ('EDS203', 'Svenska'),
    ('AME107', 'Svenska'),
    ('NEBR108', 'Svenska'),
    ('FRT109', 'Svenska'),
    ('VSD204', 'Svenska'),
    ('CBS205', 'Svenska'),
    ('APD206', 'Svenska');


INSERT INTO Standalonecourse (languages, course_code)
VALUES
    ('Engelska', 'APD206'),
    ('Svenska', 'CBS205'),
    ('Engelska', 'AME107'),
    ('Svenska', 'FRT109');


INSERT INTO Staff (school_id, first_name, last_name, phone, email)
VALUES
    (1, 'Olof', 'Svensson', '073-267-13-42', 'olofsvensson@.com'),
    (2, 'Linda', 'Lindasson', '073-245-12-90', 'lindalindasson@.com'),
    (1, 'Jack', 'Green', '070-287-69-69', 'jackgreen@.com'),
    (1, 'Sven', 'Erixon', '070-247-57-73', 'svenerixon@.com'),
    (1, 'Lisa', 'Lisason', '070-167-15-13', 'lisalisason@.com'),
    (2, 'Maja', 'Majason', '070-498-89-78', 'majamajason@.com'),
    (2, 'Bob', 'Bobson', '070-591-45-12', 'bobbobson@.com'),
    (2, 'Linn', 'Eriksson', '070-207-01-23', 'linneriksson@.com'),
    (1, 'Jakob', 'Brorson', '073-453-78-87', 'jakobbrorson@.com'),
    (2, 'Mindy', 'Larsson', '075-421-21-22', 'mindylarsson@.com'),
    (1, 'Jennifer', 'Axelson', '077-813-81-82', 'jenniferaxelson@.com'),
    (2, 'Carolina', 'Karlson', '077-953-91-19', 'carolinakarlson@.com'),
    (2, 'Beck', 'Svahn', '071-231-19-91', 'becksvahn@.com'),
    (1, 'Stig', 'Larsson', '075-412-94-34', 'stiglarsson@.com');


INSERT INTO Consultant_company (organization_nr, company_name, f_tax, phone, email, address_id)
VALUES
    ('667812-1234', 'TeachIT', True, '010-156-90-99', 'teachit@.com', 4),
    ('77910-3456', 'Teaching', False, '010-234-19-90', 'teaching@.com', 5),
    ('111344-7891', 'SchoolsOut', True, '010-519-22-55', 'schoolsout@.com', 6);
  



INSERT INTO Consultant (fee_per_hour, work_title, organization_nr)
VALUES
    (1200, 'Lärare', '667812-1234'),
    (1000, 'Lärare', '77910-3456'),
    (900, 'Lärare', '111344-7891');


INSERT INTO Employee_info (social_security_nr, staff_id, address_id, work_title, salary_per_month, started, ended)
VALUES
    ('1978-01-29-4991', 1, 7, 'Rektor', 55000, '2000-10-17', NULL),
    ('1987-10-14-1337', 2, 8, 'Rektor', 65000,'2015-01-10', NULL),
    ('1993-11-11-4578', 5, 11, 'Administration', 44000, '2020-10-02', NULL),
    ('1980-07-25-9012', 6, 12, 'Administration', 40000, '2010-10-10', NULL),
    ('1995-04-19-1783', 7, 13, 'Administaration', 36000, '2018-10-27', NULL),
    ('1980-12-24-5682', 8, 14, 'Administration', 35000, '2005-01-10', '2024-06-30'),
    ('1974-02-24-3457', 9, 17, 'Educational management', 38500, '2009-09-18', NULL),
    ('2000-02-10-2341', 10, 18, 'Educational mangement', 29500, '2024-09-10', NULL),
    ('1997-03-09-4538', 11, 19, 'Educational management', 33000, '2020-05-20', NULL),
    ('1990-05-02-1245', 12, 20, 'Educational management', 35500, '2020-05-20', NULL),
    ('1989-07-01-1441', 13, 33, 'Fastighetsskötare', 25000, '2000-06-25', NULL),
    ('1980-09-14-1989', 14, 34, 'Fastighetsskötare', 30000, '1996-10-11', NULL);
  
    

INSERT INTO Teacher (consultant_id, employee_id, school_id, first_name, last_name, phone, email)
VALUES
    (1, NULL, 1, 'Rollo', 'Lothbrok', '071-321-90-99', 'rollolothbrob@.com'),
    (2, NULL, 1, 'Joe', 'Andersson', '070-147-31-90', 'joeandersson@.com'),
    (3, NULL, 2, 'Malin', 'gustavsson', '070-345-56-76', 'malingustavsson@.com'),
    (NULL, 3, 1, 'Jan', 'Jakobson', '070-456-23-15', 'janjakaobson@.com'),
    (NULL, 5, 2, 'Karin', 'Svensson', '070-648-87-56', 'karinsvensson@.com'),
    (NULL, 11, 2, 'Scott', 'Svansson', '070-734-37-72', 'scottsvansson@.com');





INSERT INTO "Class" (class_name, program_id, staff_id, school_id)
VALUES
    ('JV2025', 1, 11, 1),
    ('AMI2025', 2, 12, 2),
    ('ELD2025', 3, 13, 2),
    ('UXD2025', 4, 14, 1),
    ('JV2026', 5, 11, 1),
    ('AMI2026', 6, 12, 2),
    ('ELD2026', 7, 13, 2),
    ('UXD2026', 8, 14, 1),
    ('JV2027', 9, 11, 1),
    ('AMI2027', 10, 12, 2),
    ('ELD2027', 11, 13, 2),
    ('UXD2027', 12, 14, 1);



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

INSERT INTO Program_Course (program_id, course_id, starts_date, ends_date)
VALUES
    (1, 1, '2025-10-01', '2025-11-15'),
    (1, 2, '2025-11-17', '2025-12-20'),
    (1, 3, '2026-01-10', '2026-02-28'),
    (1, 4, '2026-03-01', '2026-04-15'),
    (1, 5, '2026-04-19', '2026-05-29'),
    (2, 6, '2025-10-01', '2025-11-16'),
    (2, 7, '2025-11-18', '2025-12-30'),
    (2, 8, '2026-01-10', '2026-03-10'),
    (3, 9, '2025-10-01', '2025-11-10'),
    (3, 10, '2025-11-15', '2025-12-30'),
    (3, 11, '2026-01-10', '2026-02-25'),
    (4, 3, '2025-10-01', '2025-12-01'),
    (4, 4, '2025-12-01', '2026-01-25'),
    (4, 12, '2026-01-30', '2026-03-01'),
    (1, 1, '2026-10-01', '2026-11-15'),
    (1, 2, '2026-11-17', '2026-12-20'),
    (1, 3, '2027-01-10', '2027-02-28'),
    (1, 4, '2027-03-01', '2027-04-15'),
    (1, 5, '2027-04-19', '2027-05-29'),
    (2, 6, '2026-10-01', '2026-11-16'),
    (2, 7, '2026-11-18', '2026-12-30'),
    (2, 8, '2027-01-10', '2027-03-10'),
    (3, 9, '2026-10-01', '2026-11-10'),
    (3, 10, '2026-11-15', '2026-12-30'),
    (3, 11, '2027-01-10', '2027-02-25'),
    (4, 3, '2026-10-01', '2026-12-01'),
    (4, 4, '2026-12-01', '2027-01-25'),
    (4, 12, '2027-01-30', '2027-03-01'),
    (1, 1, '2027-10-01', '2027-11-15'),
    (1, 2, '2027-11-17', '2027-12-20'),
    (1, 3, '2028-01-10', '2028-02-28'),
    (1, 4, '2028-03-01', '2028-04-15'),
    (1, 5, '2028-04-19', '2028-05-29'),
    (2, 6, '2027-10-01', '2027-11-16'),
    (2, 7, '2027-11-18', '2027-12-30'),
    (2, 8, '2028-01-10', '2028-03-10'),
    (3, 9, '2027-10-01', '2027-11-10'),
    (3, 10, '2027-11-15', '2027-12-30'),
    (3, 11, '2028-01-10', '2028-02-25'),
    (4, 3, '2027-10-01', '2027-12-01'),
    (4, 4, '2027-12-01', '2028-01-25'),
    (4, 12, '2028-01-30', '2028-03-01');







    





INSERT INTO Teacher_Course (teacher_id, course_id, starts_date, ends_date)
VALUES
    (1, 1, '2025-10-01', '2025-11-15'),
    (1, 2, '2025-11-17', '2025-12-20'),
    (1, 3, '2026-01-10', '2026-02-28'),
    (1, 4, '2026-03-01', '2026-04-15'),
    (1, 5, '2026-04-19', '2026-05-29'),
    (3, 6, '2025-10-01', '2025-11-16'),
    (3, 7, '2025-11-18', '2025-12-30'),
    (3, 8, '2026-01-10', '2026-03-10'),
    (5, 9, '2025-10-01', '2025-11-10'),
    (5, 10, '2025-11-15', '2025-12-30'),
    (5, 11, '2026-01-10', '2026-02-25'),
    (2, 3, '2025-10-01', '2025-12-01'),
    (2, 4, '2025-12-01', '2026-01-25'),
    (2, 12, '2026-01-30', '2026-03-01'),
    (1, 1, '2026-10-01', '2026-11-15'),
    (1, 2, '2026-11-17', '2026-12-20'),
    (1, 3, '2027-01-10', '2027-02-28'),
    (1, 4, '2027-03-01', '2027-04-15'),
    (1, 5, '2027-04-19', '2027-05-29'),
    (3, 6, '2026-10-01', '2026-11-16'),
    (3, 7, '2026-11-18', '2026-12-30'),
    (3, 8, '2027-01-10', '2027-03-10'),
    (5, 9, '2026-10-01', '2026-11-10'),
    (5, 10, '2026-11-15', '2026-12-30'),
    (5, 11, '2027-01-10', '2027-02-25'),
    (6, 3, '2026-10-01', '2026-12-01'),
    (6, 4, '2026-12-01', '2027-01-25'),
    (6, 12, '2027-01-30', '2027-03-01'),
    (NULL, 1, '2027-10-01', '2027-11-15'),
    (NULL, 2, '2027-11-17', '2027-12-20'),
    (NULL, 3, '2028-01-10', '2028-02-28'),
    (NULL, 4, '2028-03-01', '2028-04-15'),
    (NULL, 5, '2028-04-19', '2028-05-29'),
    (NULL, 6, '2027-10-01', '2027-11-16'),
    (NULL, 7, '2027-11-18', '2027-12-30'),
    (NULL, 8, '2028-01-10', '2028-03-10'),
    (NULL, 9, '2027-10-01', '2027-11-10'),
    (NULL, 10, '2027-11-15', '2027-12-30'),
    (NULL, 11, '2028-01-10', '2028-02-25'),
    (NULL, 3, '2027-10-01', '2027-12-01'),
    (NULL, 4, '2027-12-01', '2028-01-25'),
    (NULL, 12, '2028-01-30', '2028-03-01');



INSERT INTO Enrollment (standalonecourse_id, student_id, enrollment_date, grade)
VALUES
    (1, 6, '2025-06-10', NULL),
    (2, 8, '2023-06-10', 'A'),
    (3, 9, '2022-06-10', 'C'),
    (4,  NULL, NULL, NULL);

--- Ternary table.

-- INSERT INTO SchoolProgramClass (school_id, program_id, class_id, nr_student, starts_date, ends_date)
-- VALUES
--     (1, 1, 1, 4, '2025-09-10', '2027-06-25'),
--     (1, 2, 2, NULL, '2025-09-10', '2027-06-20'),
--     (2, 2, 3, 3, '2025-11-02', '2027-06-28');
 










