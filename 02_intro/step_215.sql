/*
В таблице titanic найдите имя человека  

Который не выжил
Отсортируйте по имени [A->Z]
В решении использовать ORDER BY и LIMIT

В качестве ответа укажите имя человека который будет на первом месте после сортировки.

*/

SELECT 
	Name
FROM 
	sandbox.43342120_titanic
WHERE 
	Survived = 0
ORDER BY 
	Name ASC
LIMIT 1
;