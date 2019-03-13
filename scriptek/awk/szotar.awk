#! /usr/bin/gawk -f

BEGIN{
	while(getline sor <"szotar.txt")
		szavak[i++]=sor
}
{
	for(i in szavak)
		if($0~szavak[i])
			print $0

}
END{
	#for(i in szavak) print szavak[i]
}
