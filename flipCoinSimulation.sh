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
