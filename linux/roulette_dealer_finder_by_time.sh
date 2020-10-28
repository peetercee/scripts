#1/bin bash


echo -n $1- 
grep -i "$2 $3" $1_Dealer_schedule | awk '{print $1, $2, $5, $6}'

