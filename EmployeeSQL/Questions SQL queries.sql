--Module 9 Challenge

--Question 1
SELECT e.emp_no,last_name,first_name,sex,salary
FROM employees AS e 
INNER JOIN salaries AS s 
ON e.emp_no = s.emp_no


--Question 2
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--Question 3
SELECT d.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name
FROM employees AS e 
INNER JOIN dept_manager AS dm
ON e.emp_no = dm.emp_no
INNER JOIN departments AS d 
ON dm.dept_no = d.dept_no


--Question 4
SELECT d.dept_no,e.emp_no,last_name,first_name,dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
on de.dept_no = d.dept_no


--Question 5
SELECT first_name,last_name,sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'


--Question 6
SELECT e.emp_no,last_name,first_name,dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d 
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales'


--Question 7
SELECT e.emp_no,last_name,first_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d 
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'


--Question 8 
SELECT last_name,COUNT(last_name)
FROM employees
GROUP BY last_name 
ORDER BY COUNT(last_name) DESC