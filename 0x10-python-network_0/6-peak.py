#!/usr/bin/python3

def find_peak(list_of_integers):
    """Find a peak in a list of unsorted integers."""
    if not list_of_integers:
        return None

    low_num = 0 
    high_num = len(list_of_integers) - 1

    while low_num < high_num:
        mid_num = int((low_num + high_num) / 2)

        if list_of_integers[mid_num] < list_of_integers[mid_num + 1]:
            low_num = mid_num + 1

        else:
            high_num = mid_num
    return list_of_integers[low_num]
