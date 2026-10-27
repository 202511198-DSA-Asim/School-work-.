-- 1. Create the detailed students table
CREATE TABLE university_students_details (
    student_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    academic_year VARCHAR(50),
    occupation VARCHAR(100)
);

-- 2. Insert group details
INSERT INTO university_students_details (student_id, full_name, email, phone_number, academic_year, occupation) VALUES
('202511533', 'asim', 'hasoon@example.com', '+250780000001', 'Year 2', 'Trader'),
('202511534', 'Mazw', 'mousa@example.com', '+25078867465002', 'Year 2', 'Trader'),
('202511535', 'Mustafa', 'mustafa@example.com', '+25078859603', 'Year 2', 'Trader'),
('202511536', 'ahmed', 'osman@example.com', '+250780374564', 'Year 2', 'Financial Supplies Merchant');

-- 3. Display the formatted data in English
SELECT 
    student_id AS "Student ID",
    full_name AS "Full Name",
    email AS "Email Address",
    phone_number AS "Phone Number",
    academic_year AS "Academic Year",
    occupation AS "Occupation"
FROM university_students_details;