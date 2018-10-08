#!/bin/bash -
#===============================================================================
#
#          FILE: rachelLaub_exam1_p1.sh
#
#         USAGE: ./rachelLaub_exam1_p1.sh
#
#   DESCRIPTION: Bash # 2
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/08/2018 01:51:35 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

#takes one input parameter(username)
userName=$1
#` id -u $userName`
#checks if user name exists in /etc/passwd fil
    #finds the username
     `grep -i $userName passwd | awk -f rachelLaub_exam1_p1.awk passwd >output.txt`
    #`grep -e $userName passwd
`id -u $userName` #prints the user name
# if exists then use id command on the userName and display info
exit 0
