#!/usr/bin/env python3
"""A slow program... or really, any program that hasn't been profiled yet."""


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


def main():
    print(fib(33))


if __name__ == "__main__":
    main()
