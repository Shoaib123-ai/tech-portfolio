
-- =====================================================
-- Project: Employee Compensation Analysis
-- Level: Intermediate SQL
-- Database: parks_and_recreation
--
-- Objective:
-- Identify employees aged 30 to 60 who earn more
-- than the average salary for their occupation.
--
-- Concepts:
-- INNER JOIN, Aliases, CONCAT, BETWEEN, IN,
-- IS NOT NULL, AVG, Correlated Subquery,
-- ORDER BY, LIMIT
-- =====================================================

SELECT
    CONCAT(es.first_name, ' ', es.last_name) AS full_name,
    ed.age,
    es.occupation,
    es.salary,
    ed.gender,
    es.dept_id

FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
    ON ed.employee_id = es.employee_id

WHERE ed.age BETWEEN 30 AND 60
    AND ed.gender IN ('Male', 'Female')
    AND es.occupation IS NOT NULL
    AND es.salary > (
        SELECT AVG(es2.salary)
        FROM employee_salary AS es2
        WHERE es2.occupation = es.occupation
    )

ORDER BY es.occupation ASC, es.salary DESC

LIMIT 10;
