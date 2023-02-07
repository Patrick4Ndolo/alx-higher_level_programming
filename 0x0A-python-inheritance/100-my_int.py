#!/usr/bin/python3
"""
Contains the class MyInt
"""


class MyInt(int):
    """rebel version of an integer, perfect for opposite day!"""
    def __new__(cls, *args, **kwargs):
        """create a new instance of the class"""
        return super(MyInt, cls).__new__(cls, *args, **kwargs)

    def __eq__(self, some):
        """what was != is now =="""
        return int(self) != some

    def __ne__(self, some):
        """what was == is now !="""
        return int(self) == some
