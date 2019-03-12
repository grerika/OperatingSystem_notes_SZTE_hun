BEGIN{
	FS=" "; 
	N=80
	for (i=0;i<N;i++)
		printf("-")
	print ""

	printf("\t%-35s\t%-12s\t%+10s\n","Fajlnev","Tipus+Jogok","Meret")
	for (i=0;i<N;i++)
		printf("-")
	print ""
}
	
$1!~/^l/{
	if(NR>1){
		fajlnev=""
		for(i=8;i<NF;i++)
			fajlnev=fajlnev $i " " 
		fajlnev=fajlnev $NF

		printf("\t%-35s\t%-12s\t%+10s\n",fajlnev,$1,$5)
		db+=1
	}
}

END{
	for (i=0;i<N;i++)
		printf("-")
	print ""
	print NF-1,"sor osszesen (" db " nem link)"
}

