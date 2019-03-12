#! /bin/bash

# Forras: Buki Andras: Hejprogramozas
# Van-e parancssori parameter
if [ $# -eq 0 ]; then
	echo "Adjon meg parancssori paraméterként egy egyjegyű számot!"
	exit 1
fi

echo -n "Ön a következő számot adta meg: "
case $1 in
	1) echo "Egy";;
	2) echo "Kettő" ;;
	3) echo "Három" ;;
	4) echo "Négy" ;;
	5) echo "Öt" ;;
	6) echo "Hat" ;;
	7) echo "Hét" ;;
	8) echo "Nyolc" ;; 
	9) echo "Kilenc" ;; 
	*) echo "Ez nem egyjegyű szám"; exit 2;;
esac

exit 0
