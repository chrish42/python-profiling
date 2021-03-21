# Python Profiling

Examples for Python profiling presentation, given at Montréal-Python on March 22nd, 2021.
The profilers covered were Pyinstrument, Scalene, Py-Spy, and VizTracer.
The `Makefile` shows an example or two for how to run each of these profilers.

## Usage

We assume you already have a recent version of Python (say, 3.9) and 
[Pipenv](https://pipenv.pypa.io/en/latest/install/#installing-pipenv) installed. 
Then, in a command-line, run:
1. `pipenv install` — to install all the tools
2. `make pyinstrument` — for example, to run Pyinstrument on the sample `slow_program.py` and output its report.

## More Info

Link to the slides and more at http://christianhudon.name/talks/#mp-python-profiling.

