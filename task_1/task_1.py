#!/usr/bin/python3

import json
import os
import sys
from datetime import datetime

# 1. написать скрипт который на входе принимает строковую переменную,
# на выходе: True or False (в зависимости от того, все ли скобки в строке
# были закрыты и был ли соблюден порядок закрытия скобок)
# примеры:
#          'фывафыа ыа ываф, (fdkgj()' => False
#          'фываф (fdkgj())' => True


def save_value_to_json(value: int | bool | str, task_num: int = 1) -> None:
    """Create a json file:
    {"result": value}

    Args:
        value (int|bool|str): value
    """
    path = "result"
    current_time = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    filename = f"task_{task_num}_{current_time}.json"

    for file in os.listdir(path):
        if file.startswith(f"task_{task_num}"):
            os.remove(os.path.join(path, file))
            print(f"File: {os.path.join(path, file)} was deleted.")
            break

    result = {"result": value}
    with open(os.path.join("result", filename), "w") as json_file:
        json.dump(result, json_file)

    print(f"Result saved to {filename}")


def brakets_checker(string: str) -> bool:
    """Check closening all brackets in string

    Args:
        string (str): Cheking string

    Returns:
        bool: True - if all brackets was closed, else False
    """
    BRACKETS = {")": "(", "]": "[", "}": "{"}
    stack = []

    # Check every char, add to stack if open brackes
    # and remove if closed bracket for opened earlyer
    for char in string:
        if char in BRACKETS.values():
            stack.append(char)
        elif char in BRACKETS.keys():
            if stack and stack[-1] == BRACKETS[char]:
                stack.pop()
            else:
                return False

    return not stack


if __name__ == "__main__":
    # Get agrument during run script
    if len(sys.argv) > 1:
        name = sys.argv[0]
        value = sys.argv[1]
        print(f'Script {name} running with argument: "{value}"')
        result = brakets_checker(value)
        save_value_to_json(result)
