SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no=t.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no

--SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO Unique_titles
FROM retirement_titles
WHERE to_date= '9999-01-01'
ORDER BY emp_no, to_date DESC;

--Select * FROM Unique_titles

SELECT COUNT(title),title
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC

SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no=de.emp_no
INNER JOIN titles as t
ON e.emp_no=t.emp_no
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no,t.to_date Desc;

SELECT sum(count)
FROM retiring_titles

SELECT COUNT(d.dept_name), d.dept_name
FROM mentorship_eligibilty AS me
INNER JOIN dept_emp AS de
ON me.emp_no=de.emp_no
INNER JOIN salaries AS s
ON me.emp_no=s.emp_no
INNER JOIN departments AS d
ON de.dept_no=d.dept_no
WHERE (s.salary>60000) AND (me.title='Senior Engineer' OR me.title='Senior Staff' OR me.title='Technique Leader')
GROUP BY d.dept_name


