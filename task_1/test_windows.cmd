@echo off

REM Запуск Python скрипта с аргументом для task_1
python.exe .\task_1.py "asddsdfh [(sdf)] (asd) aqwe{asddasd}"
for %%f in (result\task_1*.json) do type %%f
echo.
echo.

python .\task_1.py "фывафыа ыа ываф, (fdkgj()"
for %%f in (result\task_1*.json) do type %%f
echo.
echo.

python .\task_1.py "фываф (fdkgj())"
for %%f in (result\task_1*.json) do type %%f
echo.
echo.


REM Запуск Python скрипта с аргументом для task_2
python.exe .\task_2.py "[0, 1, 0, 1, 1, 1, 0]"
for %%f in (result\task_2*.json) do type %%f
echo.
echo.

python.exe .\task_2.py "[0, 1, 1, 0, 1, 0]"
for %%f in (result\task_2*.json) do type %%f
echo.
echo.