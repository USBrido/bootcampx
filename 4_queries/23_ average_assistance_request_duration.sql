-- SELECT (completed_at - started_at) as average_assistance_request_duration
-- FROM assignment_submission

SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;