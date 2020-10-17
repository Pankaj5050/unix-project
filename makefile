README.md: guessinggame.sh
	echo "Guessing Game" > README.md
		date >> README.md
			echo "The number of lines in guessinggame file is :" >> README.md
				wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
