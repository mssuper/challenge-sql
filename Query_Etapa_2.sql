SELECT 
   employees.first_name, #Primeiro nome do Funcionário
   employees.last_name,  #Último nome do Funcionário
   departments.dept_name, #Nome do Departamento
   DATEDIFF(to_date, from_date) AS Meses #Converte o range de datas em dias
FROM  dept_emp #Tabela 
      INNER JOIN departments                      #\
        ON dept_emp.dept_no = departments.dept_no # |
                                                  # > Junção das tabelas necessárias para formar a tabela departamentos
      INNER JOIN employees                        # |
        ON dept_emp.emp_no = employees.emp_no     #/  
WHERE year(to_date) < year(CURRENT_DATE()) AND  year(from_date) < year(CURRENT_DATE()) #Dispositivo de proteção para datas com erros
ORDER BY Meses DESC LIMIT 10; # Ordena de forma descendente e limita a 10 itens

