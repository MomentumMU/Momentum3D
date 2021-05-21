#!/bin/bash
# @AUTHOR "Youssef El Shabrawii" // @ Who made the file.
# @ORG :: 
# @Editors
sleeping_time=0.1
SKIP="F"
OUT="    DO YOU WANNA SKIP UNNECESSARY Stickers..! \n    TYPE \"S\" FOR SKIP \n AND \"C\" FOR NOT"
echo -e $OUT
echo -n "# :: "
read  -p  "" SKIP
while [ $SKIP != "S" ] && [ $SKIP != "C" ]
    do
      read -p "# :: " SKIP
done
if [ $SKIP != "S" ]
then
   echo "                        .-\"\"\"-."
   echo "                       / .===. \\"
   echo "                       \/ 6 6 \/"
   echo "                       ( \___/ )"
   echo "          _________ooo__\_____/_____________"
   echo "         /                                  \\"
   echo -n "        |    "
   PRINT="USER ::"
   for (( i=0; i<${#PRINT}; ++i))
    do
      echo -n "${PRINT:i:1}";
      sleep $sleeping_time
   done
   echo "                         |"
   echo -n "        |        "
   PRINT="Youssef El-Shabrawii"
   for (( i=0; i<${#PRINT}; ++i))
   do
      echo -n "${PRINT:i:1}";
      sleep $sleeping_time
   done
   echo "        |"
   echo "        |                                    |"
   echo -n "        | "
   PRINT="Me: Will you be my GirlFriend?"
   for (( i=0; i<${#PRINT}; ++i))
   do
      echo -n "${PRINT:i:1}";
      sleep $sleeping_time
   done
   echo "     |"
   echo -n "        | "
   PRINT="Girl: No way"
   for (( i=0; i<${#PRINT}; ++i))
   do
      echo -n "${PRINT:i:1}";
      sleep $sleeping_time
   done
   echo "                       |"
   echo -n "        | "
   PRINT="Me: sudo will you be my GirlFriend?"
   for (( i=0; i<${#PRINT}; ++i))
   do
      echo -n "${PRINT:i:1}";
      sleep $sleeping_time
   done
   echo "|"
   echo -n "        | "
   PRINT="Girl: Yes..yes..yes! Let's go!"
   for (( i=0; i<${#PRINT}; ++i))
   do
      echo -n "${PRINT:i:1}";
      sleep $sleeping_time
   done
   echo "     |"
   echo "         \______________________ooo_________/"
   echo "                       |  |  |"
   echo "                       |_ | _|"
   echo "                       |  |  |"
   echo "                       |__|__|"
   echo "                       /-'Y'-\\"
   echo "                      (__/ \__)"
fi
SKIP="A"
if [ $SKIP != "S" ]
then
echo " Warning Run the Shell as root!!"
OUT1="#THIS SCRIPT IS MADE TO Communicate with Serial Devices       **ONLY EFFECTIVE IN LINUX Depended OS**"
# OUT1="" ## For Skipping
OUT2="Run this file multible times and Choose your mode as following :"
# OUT2="" ## For Skipping
OUT3=" 1 : Opening Serial Listener Mode  2 : Opening Serial Sender Mode  3 : Check Whether there is Serial device or not"
# OUT3="" ## For Skipping
for (( i=0; i<${#OUT1}; i+=1))
do
   echo -n -e "${OUT1:i:1}";
   #echo -n $i " "
   if [ $i == 55 ] || [ $i == 100 ]
     then
       echo
   fi
   sleep 0.05
done
for (( i=0; i<${#OUT2}; ++i))
do
   echo -n -e "${OUT2:i:1}";
   #if [ $i == 44 ] || [ $i == 90 ]
   #  then
   #    echo
   #fi
   sleep 0.05
done
echo
for (( i=0; i<${#OUT3}; ++i))
do
   echo -n -e "${OUT3:i:1}";
   if [ $i == 33 ] || [ $i == 65 ]
     then
       echo
   fi

sleep 0.05
done
fi
echo
read -p "... : " mode
if [ $mode == '1' ]
   then
   echo -e " Note : to Know your 'Serial device log file name' \n look for files like 'ttyACM*' or 'ttyUSB*'
               in /dev file for Manual Searching"
   echo "Looking for Serial devices - Arduino -...."
   sleep 1
   read -rd '' OUT1 < <(echo "$(ls /dev | grep ttyACM)")
   read -rd '' OUT2 < <(echo "$(ls /dev | grep ttyUSB)")
   S1=$(echo "${OUT1}" |wc -w) 
   S2=$(echo "${OUT2}" |wc -w)
   Exit='N'


   while [ $Exit != 'Q' ] &&[ $S1 == '0' ] && [ $S2 == '0' ]
   do
      read -rd '' OUT1 < <(echo "$(ls /dev | grep ttyACM)")
      read -rd '' OUT2 < <(echo "$(ls /dev | grep ttyUSB)")
      S1=$(echo "${OUT1}" |wc -w)
      S2=$(echo "${OUT2}" |wc -w)
      if [ $S1 == '0' ] && [ $S2 == '0' ]
         then
         echo "There is no device Detected!!"
         read -p " Enter 'Q' to exit or any character to Search again : " Exit
      fi
   done
   OUT1=(${OUT1[@]})
   # for i in ${OUT1[@]}; do echo $i; done
   OUT1+=(${OUT2[@]})
   # for i in ${OUT1[@]}; do echo $i; done
   declare -i dev_num=1
   if [[ ${#OUT1[@]} < 1 ]]
      then
      echo "I am sorry to tell you that There is no device Detected!!"
   elif [[ ${#OUT1[@]} == 1 ]]
      then
      dev_num=0
      echo " We choosed ${OUT1[0]} by default cause it is the only one"
   else
      echo "Enter the device number you want to send to as following : "
      echo 
      for (( i=0; i<${#OUT1[@]}; ++i)); do echo -n $i; echo -n ${OUT[$i]}; done
      read -p "... : " dev_num
   fi
   echo " Wait untill we doing Configuration Commands..."
   sleep 1
   chmod a+rw "/dev/${OUT1[$dev_num]}"
   stty 9600 -F "/dev/${OUT1[$dev_num]}" raw -echo
   cat /dev/ttyACM1
fi
if [ $mode == '2' ]
   then
   echo -e " Note : to Know your 'Serial device log file name' \n look for files like 'ttyACM*' or 'ttyUSB*'
               in /dev file for Manual Searching"
   echo "Looking for Serial devices - Arduino -...."
   sleep 1
   read -rd '' OUT1 < <(echo "$(ls /dev | grep ttyACM)")
   read -rd '' OUT2 < <(echo "$(ls /dev | grep ttyUSB)")
   S1=$(echo "${OUT1}" |wc -w) 
   S2=$(echo "${OUT2}" |wc -w)
   Exit='N'


   while [ $Exit != 'Q' ] &&[ $S1 == '0' ] && [ $S2 == '0' ]
   do
      read -rd '' OUT1 < <(echo "$(ls /dev | grep ttyACM)")
      read -rd '' OUT2 < <(echo "$(ls /dev | grep ttyUSB)")
      S1=$(echo "${OUT1}" |wc -w)
      S2=$(echo "${OUT2}" |wc -w)
      if [ $S1 == '0' ] && [ $S2 == '0' ]
         then
         echo "There is no device Detected!!"
         read -p " Enter 'Q' to exit or any character to Search again : " Exit
      fi
   done
   OUT1=(${OUT1[@]})
   # for i in ${OUT1[@]}; do echo $i; done
   OUT1+=(${OUT2[@]})
   # for i in ${OUT1[@]}; do echo $i; done
   declare -i dev_num=1
   if [[ ${#OUT1[@]} < 1 ]]
      then
      echo "I am sorry to tell you that There is no device Detected!!"
   elif [[ ${#OUT1[@]} == 1 ]]
      then
      dev_num=0
      echo " We choosed ${OUT1[0]} by default cause it is the only one"
   else
      echo "Enter the device number you want to send to as following : "
      echo 
      for (( i=0; i<${#OUT1[@]}; ++i)); do echo -n $i; echo -n ${OUT[$i]}; done
      read -p "... : " dev_num
   fi
   echo " Wait untill we doing Configuration Commands..."
   sleep 1
   chmod a+rw "/dev/${OUT1[$dev_num]}"
   stty 9600 -F "/dev/${OUT1[$dev_num]}" raw -echo
   while [ 1 ]
      do
         read -p " Enter message to send : " msg
         echo $msg > "/dev/${OUT1[$dev_num]}"
   done
fi
if [ $mode == '3' ]
   then
   echo -e " Note : to Know your 'Serial device log file name' \n look for files like 'ttyACM*' or 'ttyUSB*'
                in /dev file for Manual Searching"
   echo "Looking for Serial devices - Arduino -...."
   sleep 1
   read -rd '' OUT1 < <(echo "$(ls /dev | grep ttyACM)")
   read -rd '' OUT2 < <(echo "$(ls /dev | grep ttyUSB)")
   S1=$(echo "${OUT1}" |wc -w) 
   S2=$(echo "${OUT2}" |wc -w)
   Exit='N'
   while [ $Exit != 'Q' ] &&[ $S1 == '0' ] && [ $S2 == '0' ]
   do
      read -rd '' OUT1 < <(echo "$(ls /dev | grep ttyACM)")
      read -rd '' OUT2 < <(echo "$(ls /dev | grep ttyUSB)")
      S1=$(echo "${OUT1}" |wc -w)
      S2=$(echo "${OUT2}" |wc -w)
      if [ $S1 == '0' ] && [ $S2 == '0' ]
         then
         echo "There is no device Detected!!"
         read -p " Enter 'Q' to exit or any character to Search again : " Exit
      fi
   done
   echo
   if [ $S1 != '0' ]
      then
      echo -n "FOUND : "
      echo -n $S1
      echo " Devices ->: "
      echo -e "$OUT1"
   fi
   if [ $S2 != '0' ]
         then
         echo -n "FOUND "
         echo -n $S2
         echo " Devices ->: "
         echo -e "$OUT2"
   fi
   if [ $S1 == '0' ] && [ $S2 == '0' ]
      then
      echo "I am sorry to tell you that There is no device Detected!!"
   fi
fi