#! /usr/bin/awk -f 
BEGIN{
	print "AWK szkript ls kimenetének feldolgozására"
	print "Jogosultság\tMéret\tFájlnév"
	print "---------------------------"
	osszmeret=0
}
(NR>1){
	#	print $1 "\t" $5 "\t" $8
	fajlnev=$8
	for(i=9;i<=NF;i++){
		if($i=="->")
			break
		fajlnev=fajlnev " " $i
	}
	printf "%-12s\t%d\t%-30s\n",$1,$5,fajlnev
	
	osszmeret += $5
}

$1~/^l/{	dblink++ }
$1~/^d/{	dbdir++ }
$1~/^-/{	dbreg++ }

END{
	print "------ls vége-------"
	print dbdir " db könyvtár"
	print dblink " db link"
	print dbreg " db közönséges fájl"
	
	#print "osszmeret: " osszmeret
	print "------ls vége-------"
}


