#! /usr/bin/awk -f
BEGIN{
	print "----------- ls eleje ----------"
	printf "%-20s\t%-8s\t%-12s\n","Fajlnev","Meret","T+Jogok"
	print "-------------------------------"
}

(NR>1)&&($1!~/^l/){	
	fajlnev=$8
	for(i=9;i<=NF;i++){
		fajlnev=fajlnev " " $i
	}
	printf "%-20s\t%-12s\t%-12s\n",fajlnev,$5,$1

}

(NR>1)&&($1~/^l/){
	linknev=$8
	for(i=9;i<=NF;i++){
		if($i=="->")
			break
		linknev=linknev " " $i
	}

	printf "L: %-20s\t%-12s\t%-12s\n",linknev,$5,$1
	
}
{db++}
END{
	print "Konyvtarbejegyzesek szama " db
#	print "Linkek szama " dblink "(" dblink*100/db "%)"
	print "----------ls vege----------------"
}
