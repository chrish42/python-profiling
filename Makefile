PROGRAM=slow_program.py

pyinstrument:
	pipenv run pyinstrument $(PROGRAM)

pyinstrument-html:
	pipenv run pyinstrument --html --outfile pyinstrument_out.html $(PROGRAM)
	open pyinstrument_out.html

py-spy:
	# Can also attatch with a running program with --pid instead.
	pipenv run py-spy record -o py-spy_out.svg -- python $(PROGRAM)
	open py-spy_out.svg

py-spy-top:
	# There is also a "dump" command, to get a snapshot of a running program...
	pipenv run py-spy top -- python $(PROGRAM)

scalene:
	# Prints its report out stdout.
	pipenv run scalene $(PROGRAM)

scalene-html:
	pipenv run scalene --html --outfile scalene_out.html $(PROGRAM)
	open scalene_out.html

viztracer:
	pipenv run viztracer -o viztracer_out.html $(PROGRAM)
	# Note: use Chrome to view the report.
	open viztracer_out.html
