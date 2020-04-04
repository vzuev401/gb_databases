-- Урок 4. Часть 2. Агрегация данных.




/* Задача 1. ###################################################################

Подсчитайте средний возраст пользователей в таблице users.
*/

SELECT AVG(FLOOR(
    (TO_DAYS(NOW()) - TO_DAYS(birthday_at))/365.25
)) as 'average age' 
FROM 
    users
;
