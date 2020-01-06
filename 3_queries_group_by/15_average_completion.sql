-- SELECT student_name as student, count(assignment_submissions.*) as average_assignment_sduration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE end_date IS NULL
-- GROUP BY student_name
-- ORDER BY total_submissions DESC;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;