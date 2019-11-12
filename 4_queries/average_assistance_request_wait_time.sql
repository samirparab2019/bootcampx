SELECT (SUM(assistance_requests.started_at - assistance_requests.created_at) / COUNT(assistance_requests.*))
AS average_assistance_request_wait_time
FROM assistance_requests;

