SELECT cohorts.name, SUM(assistance_requests.completed_at - assistance_requests.started_at) 
AS Total_cohort_assistance_duaration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY Total_cohort_assistance_duaration;