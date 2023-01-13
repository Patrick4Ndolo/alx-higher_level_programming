def weight_average(my_list=[]):
    if my_list and len(my_list):
        num = 0
        dent = 0

        for tap in my_list:
            num += (tap[0] * tap[1])
            dent += tap[1]

        return (num / dent)
    return 0

