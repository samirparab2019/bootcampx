

SELECT students.name, cohorts.name, students.start_date AS student_start_date, cohorts.start_date AS cohort_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date;









