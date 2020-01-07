-- SELECT count(assistance_requests.*) as total_duration, cohorts.name
-- FROM assistance_requests
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohort.name;

SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;