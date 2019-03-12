#! /usr/bin/awk -f
BEGIN{
	print "----- feldolgozas eleje---------"
}
(NR>1){
	#printf "%-5s ",NR
	#printf "%-20s\t%-10s\t%-12s\n", $8, $5, $1
#	print $8 "\t" $5 "\t" $1
	printf "[" NF "]\t"
	fajlnev=$8
	for(i=9;i<=NF;i++){
		fajlnev=fajlnev " " $i
	}
	print fajlnev 
	osszmeret += $5
}

END{
	print "Összméret\t" osszmeret 
	print "----- feldolgozas vege---------"
	
	}

