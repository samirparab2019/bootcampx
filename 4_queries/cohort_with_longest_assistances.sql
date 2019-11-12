SELECT cohorts.name, (SUM(assistance_requests.completed_at - assistance_requests.started_at) / COUNT(assistance_requests.*))
AS longest_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY longest_assistance_time DESC
LIMIT 1;



