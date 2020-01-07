-- SELECT assignment_id AS id, assignment_name AS name, day, chapter, COUNT()
-- FROM assistance_requests
-- ORDER BY (SELECT avg(completed_at - started_at) as average_assistance_request_duration
-- FROM assistance_requests;)

SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;