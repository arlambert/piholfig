#!/usr/bin/env bash

#==========| List of Variables |==========

RUN_UUID=$(cat /proc/sys/kernel/random/uuid)

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

STEPOK="[\e[32m ✔ \e[0m]"
STEPNO="[\e[31m X \e[0m]"
STEPDOT="[\e[1m...\e[0m]"

#==========| initial Intro |==========

set -e

echo -e "\n"
echo -e " ${STEPDOT} \e[1m This script will update all PiHole lists based on the public config \e[0m"
sleep 2
echo -e "\n"

#==========| Check Permission |==========

if [ "$(id -u)" != "0" ] ; then
	echo -e " ${STEPDNO} \e[31m This script requires root permissions. Please run this as root! \e[0m"
  echo -e "\n"
	exit 2
fi

#==========| Check Gawk Installation |==========

if ! (which gawk > /dev/null); then
  echo -e " ${STEPDOT} \e[1m Installing gawk... \e[0m"
  if (which apt-get > /dev/null); then
       apt-get install gawk -qq > /dev/null
  elif (which pacman > /dev/null); then
       pacman -Sqy gawk > /dev/null
  elif (which dnf > /dev/null); then
       dnf install gawk > /dev/null
  fi
  wait
  echo -e " ${STEPOK} \e[32m Gawk Installed \e[0m"
fi

#==========| Whitelist Domains |==========

curl -sS https://raw.githubusercontent.com/arlambert/piholfig/master/scripts/whitelist.txt | sudo tee -a /etc/pihole/whitelist.txt # >/dev/null
echo -e " ${STEPDOT} \e[1m Adding to whitelist... \e[0m"
sleep 0.5

sudo gawk -i inplace '!a[$0]++' /etc/pihole/whitelist.txt
echo -e " ${STEPDOT} \e[1m Removing duplicates... \e[0m"
wait

echo -e " ${STEPOK} \e[32m Whitelist Updated! \e[0m"

#==========| ADLists |==========

# Get the updated adlists.list and update pihole
curl -sS "https://v.firebog.net/hosts/lists.php?type=nocross" | sudo tee -a /etc/pihole/adlist.list # >/dev/null
echo -e " ${STEPDOT} \e[1m Updating ADList... \e[0m"
sleep 0.5

sudo gawk -i inplace '!a[$0]++' /etc/pihole/adlist.list
echo -e " ${STEPDOT} \e[1m Removing duplicates... \e[0m"
wait

echo -e " ${STEPOK} \e[32m ADlist Updated! \e[0m"

#==========| Updating Gravity |==========

echo -e " ${STEPDOT} \e[1m Pi-hole gravity rebuilding lists. This may take a while... \e[0m"
pihole -g > #/dev/null
wait
echo -e " ${STEPOK} \e[32m Pi-hole's gravity updated! \e[0m"

#==========| Finish |==========
echo -e " ${STEPOK} \e[32m Script Done! \e[0m"
echo -e "\n\n"