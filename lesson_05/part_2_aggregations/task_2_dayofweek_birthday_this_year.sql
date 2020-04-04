-- Урок 4. Часть 2. Агрегация данных.




/* Задача 2. ###################################################################

Подсчитайте количество дней рождения, которые приходятся на каждый из 
дней недели. Следует учесть, что необходимы дни недели текущего года, а 
не года рождения.
*/

SELECT
    CASE DAYOFWEEK(birthday_at)
        WHEN 1 THEN 'Воскресенье'
        WHEN 2 THEN 'Понедельник'
        WHEN 3 THEN 'Вторник'
        WHEN 4 THEN 'Среда'
        WHEN 5 THEN 'Четверг'
        WHEN 6 THEN 'Пятница'
        WHEN 7 THEN 'Суббота'
    END as day_of_week,
    COUNT(*) as count
FROM
    users
WHERE
    birthday_at IS NOT NULL
GROUP BY
    day_of_week
ORDER BY
    FIELD(
        day_of_week,
        'Понедельник',
        'Вторник',
        'Среда',
        'Четверг',
        'Пятница',
        'Суббота',
        'Воскресенье'
    )
;

