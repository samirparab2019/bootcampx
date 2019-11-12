SELECT teachers.name AS teachers_name, 
students.name AS students_name, 
assignments.name as assignment_name,
SUBTRACT(assistance_requests.completed_at - assistance_requests.created_at) AS assistance_requests_duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
GROUP BY duration;

answer - 20214;

