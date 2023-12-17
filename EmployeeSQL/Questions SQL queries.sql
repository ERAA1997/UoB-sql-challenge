--Question 1
SELECT e.emp_no,last_name,first_name,sex,salary
FROM employees AS e 
INNER JOIN salaries AS s 
ON e.emp_no = s.emp_no

--Question 2
SELECT

--Question 7
SELECT e.emp_no,last_name,first_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d 
ON de.dept_no = d.dept_no


--Question 8 
SELECT last_name,COUNT(last_name)
FROM employees
GROUP BY last_name 
ORDER BY COUNT(last_name) DESC