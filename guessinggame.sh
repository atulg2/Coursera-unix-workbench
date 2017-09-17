#! /bin/sh
# File : guessinggame.sh

count=`ls -1|wc -l`
#echo "count: $count"

countguess () {

if [[ $response -gt $count ]]
then
	echo 'your guess is too high!'
fi
if [[ $response -lt $count ]]
then
	echo 'your guess is too low!'
fi
if [[ $response -eq $count ]]
then
	echo 'Congratulations, your guess is CORRECT'
	counter=-1
	exit	
fi
}

counter=1
while [[ $counter ]]
do
	echo 'Guess the number of files in this directory:  ?'
	read response

	echo "you entered : $response"
	countguess

	#echo 'Please try again:  ?'
done
