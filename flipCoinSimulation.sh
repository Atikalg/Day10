#!/bin/bash -x
echo "Welcome to flip coin simulator"
headsWins=0
tailsWins=0
ifHeads=0
ifTails=1
counter=0
function flipCoinSimulation()
{
check=$((RANDOM%2))
counter=$(($counter+1))
if [ $check -eq $ifHeads ]
then
	headsWins=$(($headsWins+1))
elif [ $check -eq $ifTails ]
then
	tailsWins=$(($tailsWins+1))
fi
headsMargin=$(($headsWins-$tailsWins))
tailsMargin=$(($tailsWins-$headsWins))
}
{
echo "heads win count :- "$headsWins;
echo "tails wins counts :- "$tailsWins;
}
function displayWinningResult()
{
headsTailsCount
if [ $headsWins -gt $tailsWins ]
then
	echo "Heads wins by margin of " $headsMargin
elif [ $tailsWins -gt $headsWins ]
then
	echo "Tails wins by margin of " $tailsMargin
elif [ $tailsWins -eq $headsWins ]
then
	echo "its a Tie !"
	while [ $tailsMargin -lt 2 ] && [ $headsMargin -lt 2 ]
	do
		flipCoinSimulation
	done
	displayWinningResult
fi
}
while [ $counter -lt 22 ]
while [ $headsWins -lt 21 ] && [ $tailsWins -lt 21 ]
do
	flipCoinSimulation
done
displayWinningResult
