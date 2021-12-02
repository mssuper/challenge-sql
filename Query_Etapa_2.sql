SELECT 
   employees.first_name,
   employees.last_name,
   departments.dept_name,
   DATEDIFF(to_date, from_date) AS Meses
FROM  dept_emp
      INNER JOIN departments
        ON dept_emp.dept_no = departments.dept_no
      INNER JOIN employees
        ON dept_emp.emp_no = employees.emp_no
WHERE year(to_date) < year(CURRENT_DATE()) AND  year(from_date) < year(CURRENT_DATE())
ORDER BY Meses DESC LIMIT 10;

