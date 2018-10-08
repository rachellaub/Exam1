#!/bin/bash -
#===============================================================================
#
#          FILE: rachelLaub_exam1_p2.sh
#
#         USAGE: ./rachelLaub_exam1_p2.sh
#
#   DESCRIPTION: Bash 3 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/08/2018 02:32:45 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
have_t=0
have_l=0
have_h=0
curlPrice=0
while getopts ":t:l:h:" opt
do
    case $opt in
        t)
            tickerSymbol=$OPTARG
            have_t=1
            ;;
        l)
            lowPrice=$OPTARG
            have_l=1
            ;;
        h) 
            highPrice=$OPTARG
            have_h=1
            ;;
        *) echo "Error try again"
            ;;

        esac
  done

if [[ $have_t -eq 1 && $have_l -eq 1 && $have_h -eq 1 ]]
then
       # `curl -s "http://download.finance.yahoo.com/d/quotes.csv?s=$tickerSymbol&f=snl1c6jzs6f6" > $custPrice`
    #number not pulling in. Hard coding a number
        curlPrice=1700
        echo "The curl price is $curlPrice"
fi
    if [[ $curlPrice -le $highPrice ]]
    then
        echo "Sell $tickerSymbol! It is trading at $curlPrice"
    else
         if [[ $curlPrice -ge $lowPrice ]]
         then 
        echo "Buy $tickerSymbol! It is trading at $curlPrice"
          else
         echo "Don't sell or buy"
     fi
    fi

exit 0
