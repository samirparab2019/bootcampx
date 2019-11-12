SELECT assignments.day, COUNT(assignments.name) AS total_assignments, SUM(assignments.duration) AS total_duration_per_day
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;







