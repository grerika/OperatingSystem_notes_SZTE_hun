#! /usr/bin/awk -f 

BEGIN{
	FS="\t"; 
	N=200
	for (i=0;i<N;i++){
		printf("-")
	}
	print 
	printf("%-35s\t%-40s\t%-70s\t%-20s\n","Név","Telefon","Egység","Beosztás")
	for (i=0;i<N;i++){
		printf("-")
	}
	print 
}
	
{
	if($4!="")
		printf("%-35s\t%-40s\t%-70s\t%-20s\n",$1,$2,$3,$4)
	else
		printf("%-35s\t%-40s\t%-70s\t%-20s\n",$1,$2,$3,"N/A")
}

END{}

