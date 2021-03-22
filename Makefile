PROGRAM=slow_program.py
OPEN=open

all: pyinstrument-html py-spy scalene-html viztracer

pyinstrument:
	pipenv run pyinstrument $(PROGRAM)

pyinstrument-html:
	pipenv run pyinstrument --html --outfile pyinstrument_out.html $(PROGRAM)
	$(OPEN) pyinstrument_out.html

py-spy:
	# Can also attatch with a running program with --pid instead.
	sudo pipenv run py-spy record -o py-spy_out.svg -- python $(PROGRAM)
	$(OPEN) py-spy_out.svg

py-spy-top:
	# There is also a "dump" command, to get a snapshot of a running program...
	sudo pipenv run py-spy top -- python $(PROGRAM)

scalene:
	# Prints its report out stdout.
	pipenv run scalene $(PROGRAM)

scalene-html:
	pipenv run scalene --html --outfile scalene_out.html $(PROGRAM)
	$(OPEN) scalene_out.html

viztracer:
	pipenv run viztracer -o viztracer_out.html $(PROGRAM)
	# Note: need to use Chrome to view the report.
	$(OPEN) -a "Google Chrome" viztracer_out.html
