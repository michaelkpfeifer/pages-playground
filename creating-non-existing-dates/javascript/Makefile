all:
	yarn install
	cat invalidDates.js | node
	cat invalidTimes.js | node

clean:
	rm -rf node_modules
	rm -f yarn-error.log
	rm -f yarn.lock
