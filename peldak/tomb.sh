
array=( "/etc/passwd" "/etc/group" "/etc/hosts" )
array[5]=5
array[7]=7
array[8]="nyolc"
array[100]="szaz"


for I in ${!array[*]}; do
  echo -e "$I\t${array[$I]}"
done
