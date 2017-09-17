all: README.md

README.md: 
	## Title of the Project
	echo "Guessing game" > README.md 

	## capture no. of lines in the guessinggame.sh 
	wc -l guessinggame.sh|egrep -o "[0-9]+" >> README.md

	## date and time of the make run 
	echo `date +'%y.%m.%d %H:%M:%S'` >> README.md

clean:
	rm README.md
