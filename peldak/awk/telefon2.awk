#! /usr/bin/awk -f 
function fejlec(c){
	
	for (ii=0;ii<200;ii++){
		printf(c)
	}
	print ""
}

BEGIN{
	FS="\t"; 
	fejlec("-")
	i=0
	printf("%-35s\t%-40s\t%-70s\t%-20s\n","Név","Telefon","Egység","Beosztás")
}
	
$4~/adjunktus/{
	if( (i%5) == 0){
		fejlec("-")
	}
	i++	

	if(NF>=4)
		printf("%-35s\t%-40s\t%-70s\t%-20s\n",$1,$2,$3,$4)
	else
		printf("%-35s\t%-40s\t%-70s\t%-20s\n",$1,$2,$3,"Nincs beosztás megadva")

}

{	
	SOR=NR
}

END{
	fejlec("-")
	print "Összegzés:",i"/"SOR,"darab rekord (" i*100/SOR " %) "
}

