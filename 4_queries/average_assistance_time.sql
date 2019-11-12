SELECT (SUM(assistance_requests.completed_at - assistance_requests.started_at) / COUNT(*)) 
AS average_assistance_time
FROM assistance_requests;
