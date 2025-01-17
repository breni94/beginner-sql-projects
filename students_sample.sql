/* SQL BASICS */

-- 1 & 2. view the table (SELECT, FROM)
SELECT student_name, gpa, school_lunch
FROM students;

-- 3. show the students who get school lunch (WHERE)
SELECT student_name, gpa, school_lunch
FROM students
WHERE school_lunch = 'YES' AND  gpa > 3.3;

-- 4. sort the students by gpa (ORDER BY)
SELECT student_name, gpa, school_lunch
FROM students
WHERE school_lunch = 'YES' AND  gpa > 3.3
ORDER BY gpa DESC;

-- 5. show the average gpa for each grade level (GROUP BY)
SELECT grade_level, AVG (gpa)
FROM students
GROUP BY grade_level
ORDER BY grade_level;

-- 6. show the grade levels with an average gpa below 3.3 (HAVING)
SELECT grade_level, AVG (gpa) AS avg_gpa
FROM students
GROUP BY grade_level
HAVING avg_gpa < 3.3
ORDER BY grade_level;