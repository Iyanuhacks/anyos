#!/bin/bash
clear

echo -e "\033[5;32m









source :techupdate.tech
by iyanuhacks
\033[0m"   
echo -e "\033[3;32m"====[Any-os gui]===="\033[0m"   
echo -e "\033[3;32m "||=================||"\033[0m"
echo "========> 1. kali linux os <========"   
echo "========> 2. Debian os     <========"   
echo "========> 3. parrot os     <========"   
echo "========> 4. windows os    <========"   
echo "========> 5. Ubuntu os     <========" 
echo "========> 6. repeat        <========"   
echo "========> 7. exit          <========"   
echo -e "\033[3;32m"====== [ thanks ] ======"\033[0m"

echo "Please enter a number:"
read num

if [ $num -gt 7 ]
then 
echo "number is not included"
elif [ $num = 1 ]
then
    cd && apt-get install wget proot git curl -y
echo -e "starting to install kali on this device..."
wget -O install-nethunter-termux https://offs.ec/2MceZWr
elif [ $num = 2 ]
then
    cp debian.sh ~/ & cd && bash debian.sh && cd

elif [ $num = 3 ]
then
    cp parrot.sh ~/ && cd && bash parrot.sh && cd

elif [ $num = 4 ]
then
    cp windows.sh ~/ && cd && bash windows.sh && cd

elif [ $num = 5 ]
then
    cp Ubuntu.sh ~/ && cd && bash Ubuntu.sh && cd

elif [ $num = 6 ]
then
    bash anyos.sh

elif [ $num = 7 ]
then
    exit

else
    exit
fi
