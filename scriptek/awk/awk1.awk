#! /usr/bin/awk -f

BEGIN{
#	print "Jog\t\tMeret\tNev"
#	print "-----------------"
}
{
	#if(NR>1){
	#	print$8
	#}
	
	if(NR>1){
		for(i=8;i<=NF;i++){
			printf "%s ", $i	
		}
		printf "\n"
	}
}
#END{}
