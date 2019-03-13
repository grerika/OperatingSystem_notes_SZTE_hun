#! /usr/bin/awk -f

BEGIN{
	FS=" "; 
	N=100
	for (i=0;i<N;i++){
		printf("-")
	}
	print ""
	printf("\t%-30s\t%-6s\t%-12s\t%+10s\n","Fajlnev","Tipus","Jogok","Meret")
	for (i=0;i<N;i++){
		printf("-")
	}
	print ""
}
	
$1!~/^l/{
	if(NR==2)
		min = $5;

	if(NR>1){
		fajlnev=""
		for(i=8;i<NF;i++)
			fajlnev=fajlnev $i " " 
		fajlnev=fajlnev $NF

		printf("\t%-30s\t%-6s\t%-12s\t%+10s\n",fajlnev,substr($1,0,1),substr($1,2,9),$5)

		if(min>$5)		
			min=$5
		if(max<$5)
			max=$5
		sum += $5
		db+=1
	}
}

END{
	for (i=0;i<N;i++)
		printf("-")
	print ""
	print " " NF-1,"sor osszesen (" db " nem link)"
	print " Max meret:", max
	print " Min meret:", min
	print " ossz meret:",sum
	print " atlag meret:", sum/db
}

