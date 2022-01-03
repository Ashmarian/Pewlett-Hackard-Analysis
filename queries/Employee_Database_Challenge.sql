--Joining employees and titles tables
SELECT employees.emp_no, 
employees.first_name, 
employees.last_name,
titles.title,
titles.from_date,
titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

--Using starter code
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no 
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

--Create Retiring Titles table
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title 
ORDER BY Count DESC;

--END of Deliverable 1:

--START of Deliverable 2:
--mentorship_eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN department_employees as de
ON e.emp_no = de.emp_no
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE de.to_date = '9999-01-01'
and e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;


--Queries for analysis
--Current Total Number of employees
SELECT COUNT(emp_no)
FROM employees

--Current total number of employees about to retire
SELECT count (e.emp_no)
FROM employees as e 
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'

--Count employees ready to enter a mentorship program
SELECT COUNT(e.emp_no)
FROM employees as e
INNER JOIN dept_emp as de ON e.emp_no = de.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')

--GET Retiring Employees by Department
SELECT DISTINCT ON (rt.emp_no)
    rt.emp_no,
    rt.first_name,
    rt.last_name,
    de.dept_no,
INTO unique_department
FROM retirement_title as rt
INNER JOIN dept_emp as de ON d.emp_no = rt.emp_no
LEFT JOIN department as d ON de.dept_no = d.dept_no
WHERE d.to_date = '9999-01-01'
ORDER BY rt.emp_no, d.from_date DESC