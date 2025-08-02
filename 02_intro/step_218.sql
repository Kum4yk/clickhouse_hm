/*
В таблице titanic разметьте пассажиров и найдите человека по условию.

Создайте дополнительный столбец chance_survived, в котором:

Пассажир, который является женщиной 1 или 2 класса, будет считаться lucky (больше шансов выжить).
Пассажир, который является женщиной 3 класса, будет считаться fortunate (очевидно, что шансов меньше, но они есть).
Для остальных оставьте значение other.
Найдите имя пассажира, который:

В имени присутствует Miss.
Оканчивается текстом a.
Начинается с буквы L.

В качестве ответа напишите имя пассажира, который оказался lucky, с самым большим значением PassengerId.
	
*/

SELECT 
	Name
	, multiIf(
		Sex = 'female' AND  Pclass IN (1, 2), 'lucky'
		, Sex = 'female' AND Pclass = 3, 'fortunate'
		,'other'
	) AS chance_survived
FROM 
	sandbox.43342120_titanic
WHERE 
	Name LIKE '%Miss%'
	AND Name LIKE '%a'
	AND Name LIKE 'L%'
	AND chance_survived = 'lucky'
ORDER BY 
	PassengerId DESC
LIMIT 1
;