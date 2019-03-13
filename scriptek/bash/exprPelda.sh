#! /bin/bash
#################################
# Az _expr_kepessegei		#
# Forras: 			#
#	Buki Andras 		#
#	Hejprogramozas 		#	
#################################

# LOGIKAI MUVELETEK

STRING1="hhh"
STRING2="vvv"
ERTEK=`expr $STRING1 \| $STRING2`
echo $ERTEK

ERTEK=`expr $STRING1 \& $STRING2`
echo $ERTEK

# ARITMETIKAI OSSZEHASONLITAS
SZAM1=5
SZAM2=12

ERTEK=`expr $SZAM1 \< $SZAM2`
echo $ERTEK

ERTEK=`expr $SZAM1 \<= $SZAM2`
echo $ERTEK

ERTEK=`expr $SZAM1 = $SZAM2`
echo $ERTEK
ERTEK=`expr $SZAM1 == $SZAM2`
echo $ERTEK
ERTEK=`expr $SZAM1 != $SZAM2`
echo $ERTEK

ERTEK=`expr $SZAM1 \> $SZAM2`
echo $ERTEK
ERTEK=`expr $SZAM1 \>= $SZAM2`
echo $ERTEK

# ARITMETIKAI MUVELETEK

OSSZEG=`expr $SZAM1 + $SZAM2`
KULONBSEG=`expr $SZAM1 - $SZAM2`
SZORZAT=`expr $SZAM1 \* $SZAM2`
HANYADOS=`expr $SZAM1 / $SZAM2`
MARADEK=`expr $SZAM1 % $SZAM2`

echo "$SZAM1 + $SZAM2 =" $OSSZEG
echo "$SZAM1 - $SZAM2 =" $KULONBSEG
echo "$SZAM1 * $SZAM2 =" $SZORZAT
echo "$SZAM1 / $SZAM2 =" $HANYADOS
echo "$SZAM1 mod $SZAM2 =" $MARADEK
