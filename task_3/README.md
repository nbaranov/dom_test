Это оказалось сложным заданием, учитывая, что я не видел VBA больше 7 лет точно.

Началось всё с того, что VBA Отказался правильно кодировать кирилицу.
Ни правка реестра, ни изменения языка символов unicode не увенчались успехом.
Вероятно на корпоративной машине у меня недостаочно прав на изменения,
а на личной у меня стоит Linux и MS Office отсутствует.

Решено было перевести документ на английский и выполнить манипуляции с ним.
Не очень понял как в примере были посчитаны цифры в итоговой табличке, но посчитал, как посчитал нужным.

## Зарплаты:
Модуль: CountHoursAndRates
 - постчитал сумму часов для каждого сотрудника.
 - разделил месячный оклад на полученное количество часов.

## Отчет Заказчикам:
Модуль CustomerExpenses
 - в начале модуля вызываю подсчёт зарплаты из первого модуля CalculateHoursAndRates
 - Достал из таблички стоимость часа работы каждого сотрудника.
 - Перебрал все задания со страницы проектов, собрал из них словарик суммируя стоимость работ по каждому заданию (умножая залогированное время на стоимость часа работы сотрудника, который эти работы выполнял), и общую сумму для заказчика, и отдельно суммируя общую стоимость всех услуг для всех заказчиков.

 **Сразу признаюсь, что выполнял задание с помощью нейронок, но как оказалось VBA слишком сложный язык, код написанный нейронкой даже не запустилсяю**