#! /bin/bash

# Forras: Pere Laszlo, Linux felhasznaloi ismeretek I.
# Ez a peldaprogram allomanynevek modositasara szolgal
# Le lehet  vele cserelni az allomanynevek veget (kiterjesztest)

# PARAMETEREK SZAMANAK ELLENORZESE
if [ $# -ne 2 ]; then
	echo "`basename $0` - Allomany kiterjesztesenek csereje"
	echo "Hasznalat:"
	echo "		`basename $0` <regi kit> <uj kit>"
	exit 1
fi

# TENYLEGES MUNKA
for FILES in *.$1; do
	UJNEV=${FILES%$1}$2
	echo -n "$FILES -> $UJNEV"
	if [ -e "$UJNEV" ]; then		
		echo " Hiba: A $UJNEV mar letezik"
	else
		echo
		mv "$FILES" "$UJNEV"
	fi
done
