--I want to know how many employees with each title were born after 1965-01-01.
SELECT t.title as 'Title', count(t.title) as "Number of Employees born after 1965-01-01" FROM titles t INNER JOIN employees e ON t.emp_no = e.emp_no WHERE e.birth_date > '1965-01-01' GROUP BY t.title;

--I want to know the average salary per title.
SELECT t.title as 'Title', round(avg(s.salary), 2) as "Average Salary" FROM titles t INNER JOIN salaries s ON t.emp_no = s.emp_no GROUP BY t.title;

--How much money was spent on salary for the marketing department between the years 1990 and 1992?
SELECT d.dept_name AS "Department", CONCAT('$', FORMAT(sum(s.salary), 2)) AS "Total Payroll" FROM salaries s INNER JOIN dept_emp de ON s.emp_no = de.emp_no INNER JOIN departments d ON de.dept_no = d.dept_no WHERE d.dept_name = "Marketing" AND  s.to_date BETWEEN '1990-01-01' AND '1992-12-12';
