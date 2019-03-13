#! /bin/bash

# Forras: Buki Andras: Hejprogramozas
# Van-e parancssori parameter
if [ $# -eq 0 ]; then
	echo "Adjon meg parancssori parameterkent egy egyjegyu szamot!"
	exit 1
fi

echo -n "On a kovetkezo szamot adta meg: "
case $1 in
	1) echo "Egy";;
	2) echo "Ketto" ;;
	3) echo "Harom" ;;
	4) echo "Negy" ;;
	5) echo "Ot" ;;
	6) echo "Hat" ;;
	7) echo "Het" ;;
	8) echo "Nyolc" ;; 
	9) echo "Kilenc" ;; 
	*) echo "Ez nem egyjegyu szam"; exit 2;;
esac

exit 0
