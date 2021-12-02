
# Feito por Marcelo da Silva Silveira
# 02/12/2021

SELECT DISTINCT
   employees.first_name, #Primeiro nome do Funcionário
   employees.last_name,  #Último nome do Funcionário
   departments.dept_name, #Nome do Departamento
   DATEDIFF(to_date, from_date) AS no_dias #Converte o range de datas em dias
FROM  dept_emp #Tabela 
      INNER JOIN departments                      #\
        ON dept_emp.dept_no = departments.dept_no # |
                                                  # > Junção das tabelas necessárias para formar a tabela departamentos
      INNER JOIN employees                        # |
        ON dept_emp.emp_no = employees.emp_no     #/  
WHERE to_date < CURRENT_DATE() AND  from_date < CURRENT_DATE() #Dispositivo de proteção para datas com erros
ORDER BY no_dias DESC; # Ordena de forma descendente e limita a 10 itens

