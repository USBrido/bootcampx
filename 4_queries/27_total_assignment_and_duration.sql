-- SELECT day, number_of_assignments, duration
-- FROM assignments
-- ORDER BY day;

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;