#! /bin/bash

#echo "${VALT?A valtozonak nincs erteke!}"

echo "VALT erteke: $VALT"
echo ":- hasznalataval: ${VALT:-URES}"
echo "VALT erteke: $VALT"

echo ":= hasznalataval: ${VALT:=URES}"
echo "VALT erteke: $VALT"


