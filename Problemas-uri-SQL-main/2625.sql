--by filipe
SELECT
	CONCAT_WS('-', (CONCAT_WS('.', SUBSTRING(cpf FROM 1 FOR 3), SUBSTRING(cpf FROM 4 FOR 3), SUBSTRING(cpf FROM 7 FOR 3))), SUBSTRING(cpf FROM 10 FOR 2)) AS "CPF"
FROM
  natural_person

-- SQL SERVER
SELECT
	FORMAT((CONVERT(BIGINT, cpf)), '###\.###\.###\-##') AS CPF
FROM
  natural_person