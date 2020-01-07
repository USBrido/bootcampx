-- SELECT avg(completed_at - created_at) as average_assistance_request_duration
-- FROM assistance_requests;

SELECT avg(started_at-created_at) as average_wait_time
FROM assistance_requests;