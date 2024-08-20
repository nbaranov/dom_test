#!/bin/bash

# Запускаем Python-скрипт c аргументом для task_1
python ./task_1.py "asddsdfh [sdf] (asd) aqwe{asddasd}"
cat result/task_1*.json
echo; echo;

python ./task_1.py 'фывафыа ыа ываф, (fdkgj()'
cat result/task_1*.json
echo; echo;

python ./task_1.py 'фываф (fdkgj())'
cat result/task_1*.json
echo; echo;

# Запускаем Python-скрипт c аргументом для task_2
python.exe ./task_2.py "[0, 1, 0, 1, 1, 1, 0]"
cat result/task_2*.json
echo; echo;

python.exe ./task_2.py "[0, 1, 1, 0, 1, 0]"
cat result/task_2*.json
echo; echo;
