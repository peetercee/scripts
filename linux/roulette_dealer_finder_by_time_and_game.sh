#/bin bash
clear
echo 
read -p "Enter the Date [MMDD] : "  date
read -p "Enter the Time [HH:MM:SS AM/PM] : " fulltime
read -p "Enter Game Number (1-BlackJack, 2-Roulette, 3-Texas Hold EM): " gamenum
echo 
echo
echo -n "[Date:" $date
grep -i "$fulltime" "$date"_Dealer_schedule |
case "$gamenum" in
	"1") awk '{print " Time: " $1, $2 "] Blackjack Dealer: " $3, $4}'
	;;
	"2") awk '{print " Time: " $1, $2 "] Roulette Dealer: " $5, $6}'
	;;
	"3") awk '{print " Time: " $1, $2 "] Texas Hold EM Dealer: " $7, $8}'
	;;
esac
echo 
