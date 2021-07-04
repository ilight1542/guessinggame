all: README.md

README.md: | guessinggame.sh
	echo "guessinggame" > README.md
	echo $$(date) >> README.md
	echo $$(wc -l guessinggame.sh) >> README.md
clean: 
	rm README.md