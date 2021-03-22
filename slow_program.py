#!/usr/bin/env python3
"""A slow program... or really, any program that hasn't been profiled yet."""

import time


def fib(n: int) -> int:
    """A recursive implementation of computation of Fibonacci numbers in Python. Will be slow in pretty much all languages, actually."""

    # These will be needlessly evaluated on every internal call to fib() also.
    if not isinstance(n, int):
        raise TypeError("fib() takes an int.")
    if n < 0:
        raise ValueError("Value for n must be non-negative.")

    if n == 0 or n == 1:
        return 1
    else:
        # The same sub-computation for numbers less than n will be redone multiple times!
        return fib(n - 1) + fib(n - 2)


def function_that_recurses_too_much():
    print(fib(33))


def function_that_busy_loops():
    start = time.time()
    while time.time() - start < 1:
        pass


def function_that_waits():
    time.sleep(1)


def function_that_allocates_a_lot():
    arr = bytearray(b"\x01") * 10 ** 9


def main():
    function_that_busy_loops()
    function_that_recurses_too_much()
    function_that_allocates_a_lot()
    function_that_waits()


if __name__ == "__main__":
    main()
