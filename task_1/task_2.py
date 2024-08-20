import sys
from task_1 import save_value_to_json


# Написать скрипт, который на входе принимает массив 0 и 1,
# на выходе максимальное число 1 идущих подряд:
# примеры:
#          [0, 1, 0, 1, 1, 1, 0] => 3
#          [0, 1, 1, 0, 1, 0] => 2


def max_consecutive_ones(arr: str) -> int:
    """Count consecutive ones, and return max value

    Args:
        arr (list): List with 0 and 1 values

    Returns:
        int: Max count of consecutive ones.
    """
    arr = list(arr.strip("[]").split(","))
    max_count = 0
    cur_count = 0

    for num in arr:
        if int(num):
            cur_count += 1
            max_count = max(max_count, cur_count)
        else:
            cur_count = 0

    return max_count


if __name__ == "__main__":
    # Get agrument during run script
    if len(sys.argv) > 1:
        name = sys.argv[1]
        value = sys.argv[1]
        print(f'Script {name} running with argument: "{value}"')
        result = max_consecutive_ones(value)
        save_value_to_json(result, task_num=2)
