SELECT AVG(cohort_assistance_duaration) FROM (

SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at)
AS cohort_assistance_duaration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY cohort_assistance_duaration
) AS cohort_average_assistance_duaration;

