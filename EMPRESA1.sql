SELECT  Funcionarios.Nome
FROM  Funcionarios
INNER JOIN Clientes
ON Funcionarios.id_funcionario = Clientes.id_funcionario;

SELECT  Funcionarios.Nome
FROM  Funcionarios
LEFT JOIN Clientes
ON Funcionarios.id_funcionario = Clientes.id_funcionario;

SELECT  Funcionarios.Nome
FROM  Funcionarios
CROSS JOIN Clientes
ON Funcionarios.id_funcionario = Clientes.id_funcionario;

SELECT  Funcionarios.Nome
FROM  Funcionarios
RIGHT OUTER JOIN Clientes
ON Funcionarios.id_funcionario = Clientes.id_funcionario;

