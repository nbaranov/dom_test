## task_1
1. написать скрипт который на входе принимает строковую переменную,
на выходе: True or False (в зависимости от того, все ли скобки в строке
были закрыты и был ли соблюден порядок закрытия скобок)
примеры:
          'фывафыа ыа ываф, (fdkgj()' => False
          'фываф (fdkgj())' => True

## task_2
Написать скрипт, который на входе принимает массив 0 и 1,
на выходе максимальное число 1 идущих подряд:
примеры:
          [0, 1, 0, 1, 1, 1, 0] => 3
          [0, 1, 1, 0, 1, 0] => 2


Написал скрипты отдельными файлами **task_1** и **task_2** запускаются они через:
`python *имя_файла* *"аргумент"*`

Так же написал для них скрипты для запуска тестовых прогонов скриптов в linux **test_linux.sh** и windows **test_windows.cmd**.
Вывод приблизительно такой:
```bash
Script .\task_1.py running with argument: "asddsdfh [(sdf)] (asd) aqwe{asddasd}"
File: result\task_1_2024-08-21_16-34-44.json was deleted.
Result saved to task_1_2024-08-21_16-37-14.json
{"result": true}

Script .\task_1.py running with argument: "фывафыа ыа ываф, (fdkgj()"
File: result\task_1_2024-08-21_16-37-14.json was deleted.
Result saved to task_1_2024-08-21_16-37-14.json
{"result": false}

Script .\task_1.py running with argument: "фываф (fdkgj())"
File: result\task_1_2024-08-21_16-37-14.json was deleted.
Result saved to task_1_2024-08-21_16-37-14.json
{"result": true}

Script .\task_2.py running with argument: "[0, 1, 0, 1, 1, 1, 0]"
File: result\task_2_2024-08-21_16-34-44.json was deleted.
Result saved to task_2_2024-08-21_16-37-14.json
{"result": 3}

Script .\task_2.py running with argument: "[0, 1, 1, 0, 1, 0]"
File: result\task_2_2024-08-21_16-37-14.json was deleted.
Result saved to task_2_2024-08-21_16-37-14.json
{"result": 2}
```