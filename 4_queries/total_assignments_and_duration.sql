SELECT assignments.day, COUNT(assignments.name) AS total_assignments, SUM(assignments.duration) AS total_duration_per_day
FROM assignments
GROUP BY assignments.day
ORDER BY total_duration_per_day DESC;

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;

