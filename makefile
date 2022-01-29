all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment" > README.md
	echo "*by Johns Hopkins University*" >> README.md
	echo "\n**Description**: I have made a program called *guessinggame.sh*. \n This program will ask the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is high or low . Once the user guesses the correct number of files in the current directory, then they will be informed." >> README.md
	echo -n "\n##Make date##: " >> README.md
	date >> README.md
	echo -n "\n##Number of lines in guessinggame.sh:##" >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
