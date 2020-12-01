-- CREATE TABLE courses (
--    course_id INTEGER PRIMARY KEY AUTO_INCREMENT,
--    course_title VARCHAR(40),
--    course_minutes INTEGER,
--    course_description TEXT,
--    credits INTEGER
-- );



-- CREATE TABLE teachers (
--    teacher_id INTEGER PRIMARY KEY AUTO_INCREMENT,
--    first_name VARCHAR(40),
--    last_name VARCHAR(40),
--    email VARCHAR(80),
--    hire_date DATE,
--    course_id INTEGER,
--    FOREIGN KEY (course_id) REFERENCES courses(course_id)
-- );