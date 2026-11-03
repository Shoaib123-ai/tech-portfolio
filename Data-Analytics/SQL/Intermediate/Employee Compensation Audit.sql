SELECT
    CONCAT(es.first_name, ' ', es.last_name) AS full_name,
    ed.age,
    es.occupation,
    es.salary

FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
    ON ed.employee_id = es.employee_id

WHERE ed.age >= 30
    AND es.salary BETWEEN 40000 AND 100000
    AND es.occupation IS NOT NULL
    AND (
        es.occupation LIKE '%Manager%'
        OR es.occupation LIKE '%Director%'
    )

ORDER BY es.salary DESC, ed.age ASC

LIMIT 10;
