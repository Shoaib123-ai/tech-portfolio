
-- Exercise 1: List Up to 5 Employees Older Than 40
SELECT employee_id, first_name, last_name, age
FROM employee_demographics
WHERE age > 40
LIMIT 5;


-- Exercise 2: Find the 5 Oldest Employees by Age
SELECT first_name, last_name, age
FROM employee_demographics
ORDER BY age DESC
LIMIT 5;


-- Exercise 3: Show Up to 3 Youngest Female Employees Aged 30+
SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE gender = 'Female' AND age >= 30
ORDER BY age ASC
LIMIT 3;


-- Exercise 4: List Unique Occupations Alphabetically
SELECT DISTINCT occupation
FROM employee_salary
ORDER BY occupation ASC;


-- Exercise 5: List City Planners and Office Managers by Salary
SELECT first_name, last_name, occupation, salary
FROM employee_salary
WHERE occupation = 'City Planner'
   OR occupation = 'Office Manager'
ORDER BY salary DESC;


-- Exercise 6: Find Up to 5 Highest Salaries Between $50K and $70K
SELECT first_name, last_name, occupation, salary
FROM employee_salary
WHERE salary BETWEEN 50000 AND 70000
ORDER BY salary DESC
LIMIT 5;


-- Exercise 7: Find Employees Whose Last Names Start With B
SELECT first_name, last_name, age, gender
FROM employee_demographics
WHERE last_name LIKE 'B%'
ORDER BY last_name ASC;


-- Exercise 8: Find Employees With Missing Birth Dates, Sorted by ID
SELECT employee_id, first_name, last_name, birth_date
FROM employee_demographics
WHERE birth_date IS NULL
ORDER BY employee_id ASC;


-- Exercise 9: Find Up to 5 Employees by Age, Gender, and Name Patterns
SELECT DISTINCT
    employee_id,
    first_name,
    last_name,
    age,
    gender
FROM employee_demographics
WHERE age BETWEEN 30 AND 60
  AND gender IN ('Male', 'Female')
  AND last_name IS NOT NULL
  AND (
      first_name LIKE 'A%'
      OR last_name LIKE 'S%'
  )
ORDER BY age DESC, last_name ASC
LIMIT 5;
  
