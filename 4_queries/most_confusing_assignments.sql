SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, COUNT(assignments.chapter) AS total_requests
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER By total_requests DESC;

