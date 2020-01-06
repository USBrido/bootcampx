SELECT name, id
FROM students
WHERE email IS NULL
   OR phone IS NULL;

-- Corrects answer, but differs from what they show on the exercise:
-- SELECT name, id, cohort_id
-- FROM students
-- WHERE email IS NULL
-- OR phone IS NULL;