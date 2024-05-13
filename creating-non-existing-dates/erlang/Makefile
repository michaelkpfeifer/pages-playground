all: run

compile:
	erl -make

run: compile
	erl -noshell -eval 'impossible_dates:examples().' -s init stop
	erl -noshell -eval 'date_arithmetics:examples().' -s init stop

clean:
	rm -f erl_crash.dump
	rm -f impossible_dates.beam
	rm -f date_arithmetics.beam
