#!/bin/bash

apt-get install wget proot git curl -y
#isocheaker
read -p "Does WIN10TP.iso File In Your Download Folder?(Yes/No) : " input
if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
   clear
   cd $HOME
   termux-wake-lock
   pkg install x11-repo -y
   pkg install qemu-system-x86_64 -y
   clear
   echo -e "\e[1;92m1] Allow Storage Permission To Termux."
   sleep 3
   clear
   read -p "Select Size Of RAM In MB Ex 1GB = 1024 : " ram
   echo "[+] Server Is Running...."
   echo -e "Your Server IP is:\e[1;91m 127.0.0.1:2"
   qemu-system-x86_64 -m $ram -cdrom storage/downloads/WIN10TP.iso -vnc 127.0.0.1:2

elif [[ $input == No || $input == no || $input == n || $input == N ]]; then
echo -e "\e[1;91m1. First Download WIN10TP.iso file from this Link: \e[1;92mhttp://bit.ly/wintermux" #pastedownload link here
echo "2. Put WIN10TP.iso file into download folder."
else
echo -e "\e[1;91mInvalid Option"
exit 2
fi
