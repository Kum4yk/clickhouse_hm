/*
В таблице titanic найти имя человека который

Женщина
Первый класс 
Не выжила

В ответе указать человека с самым большим ID

*/

SELECT 
	Name
FROM 
	sandbox.43342120_titanic
WHERE 
	Sex = 'female'
	AND Pclass = 1
	AND Survived = 0
ORDER BY 
	PassengerId DESC
LIMIT 1
;