all: run

compile:
	erl -make

run: compile
	erl -noshell -eval 'fold:run().' -s init stop

clean:
	rm -f erl_crash.dump
	rm -f fold.beam
