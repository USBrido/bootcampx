SELECT cohort_name, count(students) as student_count
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;
