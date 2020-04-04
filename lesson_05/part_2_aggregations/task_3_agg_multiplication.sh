# Урок 4. Часть 2. Агрегация данных.




#- Задача 3. ------------------------------------------------------------------#
#-
#- Подсчитайте произведение чисел в столбце таблицы.
#-

# Я не нашёл подходящей агрегирующей функции, а предлагаемые решения мне не
# понравились, потому сделал так.

mul_result=1
numbers=`mysql -e 'select values from shop.storehouses_products;' | sed -e '1d'`

for number in $numbers
do
    mul_result=$((mul_result*number))
done

echo $mul_result

