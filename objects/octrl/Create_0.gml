globalvar hp,gyumolcs; //This sets the variables gp, and gyumlocs as global, it makes it so there is no need to put "global." in front of the variable anymore.

if diff=220 {hp=5} //The players hearts.
if diff=210 {hp=4}
if diff=10 {hp=3}
gyumolcs=0;

mytime=diff; //The timer is equal to diff, this variable is set in the permanent object oDifficulty
showTime=mytime;