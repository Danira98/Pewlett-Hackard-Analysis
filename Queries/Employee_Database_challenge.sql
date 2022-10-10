--Deliverable 1:

--1. Inner join of Tables titles and employees
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM titles AS ti
JOIN employees as e
ON (e.emp_no = ti.emp_no)
WHERE(e.birth_date BETWEEN '1952-01-01'AND '1955-12-31')
ORDER BY emp_no;

--Check the table ran succesfully
SELECT*FROM retirement_titles;


--2. Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date='9999-01-01'
ORDER BY emp_no, to_date DESC;

--Check the table ran succesfully
SELECT*FROM unique_titles;


--3. Retrieve list of emplyees that about to retire
SELECT COUNT(title), 
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

--Check the table ran succesfully
SELECT*FROM retiring_titles;

--Deliverable 2:
DROP TABLE mentorship_elegibility;
--1. Mentorship Eligibility Table
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship
FROM employees AS e
INNER JOIN dept_emp as de
ON(e.emp_no=de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no=ti.emp_no)
WHERE (de.to_date='9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT*FROM mentorship;

