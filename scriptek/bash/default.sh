#! /bin/bash


#echo "${VALTOZO?A valtozonak nincs erteke!}"
VALTOZO=""
printf "muvelet\t\telotte\tkif.\tutana\n"
printf ":+\t\t$VALTOZO\t${VALTOZO:+ertek}\t$VALTOZO\n"

VALTOZO="valami"
printf ":+\t\t$VALTOZO\t${VALTOZO:+ertek}\t$VALTOZO\n"

VALTOZO="valami"
printf ":-\t\t$VALTOZO\t${VALTOZO:-ertek}\t$VALTOZO\n"

VALTOZO=""
printf ":-\t\t$VALTOZO\t${VALTOZO:-ertek}\t$VALTOZO\n"

printf ":=\t\t$VALTOZO\t${VALTOZO:=ertek}\t$VALTOZO\n"

printf "\n\${VALTOZONEV?Uzenet}\n"
printf ":?\t${NEMLETEZOVALTOZO?Valtozonak nincs erteke}\n"
