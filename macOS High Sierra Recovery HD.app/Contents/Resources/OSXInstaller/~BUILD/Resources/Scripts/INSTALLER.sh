#!/bin/sh

nameh=`users`
function echob() {
  echo "`tput bold`$1`tput sgr0`"
}

function head
{
clear
echo "                        `tput setaf 7``tput sgr0``tput bold``tput setaf 10`© Copyright 2017 chris1111`tput sgr0` `tput setaf 7``tput sgr0`"
echo "               =================================================== "
echo "  
                 `tput setaf 7``tput sgr0``tput bold``tput setaf 10` \033[5mInstaller macOS High Sierra Recovery HD`tput sgr0` `tput setaf 7``tput sgr0` "

echo "               =================================================== "

echo " "
}


function menu
{
echo "                              Welcome "`tput setaf 7``tput sgr0``tput bold``tput setaf 10`$nameh`tput sgr0` `tput setaf 7``tput sgr0`" "
echo " "
echo "                             `tput setaf 26`Thanks  Team Clover "
                         
echo " "
echo "                              —— The Steps —-
                                  `tput setaf 7``tput sgr0``tput bold``tput setaf 10` \033[5m⥥`tput sgr0` `tput setaf 7``tput sgr0`"
echo " "
echo "                            Type 1  for macOS High Sierra Recovery HD "
echo " "
echo "                            Type 2  for Clover USB Installer "
echo " "
echo "                            Type 3  for Clover Post Installer "
echo " "
echo "                            Type X  for Quit "
echo " "
echo "               =================================================== "
echo " "
echo "                     ✅  1 = ➖`tput setaf 7``tput sgr0``tput bold``tput setaf 10`macOS High Sierra Recovery HD`tput sgr0` `tput setaf 7``tput sgr0`"
echo "               =================================================== "
 
echo "                     ❎  2 = ➖`tput setaf 7``tput sgr0``tput bold``tput setaf 10`Clover USB Installer`tput sgr0` `tput setaf 7``tput sgr0`" 
echo "               =================================================== "

echo "                     ❎  3 = ➖`tput setaf 7``tput sgr0``tput bold``tput setaf 10`Clover Post Installer`tput sgr0` `tput setaf 7``tput sgr0`" 
echo "               =================================================== "

echo "                     ❎  X = ➖`tput setaf 7``tput sgr0``tput bold``tput setaf 10`Quit (Exit)`tput sgr0` `tput setaf 7``tput sgr0`" 
echo "               =================================================== "
echo " "

echo "               =================================================== "

echo "  
                         `tput setaf 7``tput sgr0``tput bold``tput setaf 10`     \033[5mAre you ready?`tput sgr0` `tput setaf 7``tput sgr0`\033[0m"

echo "               =================================================== "

read -n 1 option
}
function INSTALLER_USB_OSX
{
head
echo " "
echo "macOS High Sierra Recovery HD"
~BUILD/Resources/Scripts/INSTALLER_USB.sh
echo " "
echo "`tput setaf 7``tput sgr0``tput bold``tput setaf 10`
First step is completed, dont close the programme 
after instalation Package Recovery HD, type any key and used Option 2.`tput sgr0` `tput setaf 7``tput sgr0`"
echo " "
echo " "
}
function INSTALLER_USB1 
{
head
echo " "
echo "Clover USB Installer"
~BUILD/Resources/Scripts/INSTALLER_USB1.sh
echo " "
echo " "
}
function INSTALLER_POST 
{
head
echo " "
echo "Clover Post Installer"
~BUILD/Resources/Scripts/INSTALLER_POST.sh
echo " "
echo " "
}
function Quit
{
clear
echo " " 
echo "
Quit macOS High Sierra Recovery HD..."
osascript -e 'tell app "terminal" to display dialog "Thanks to using macOS High Sierra Recovery HD" with icon file "System:Library:CoreServices:loginwindow.app:Contents:Resources:ShutDown.tiff" buttons {"Exit"} default button 1 with title "macOS High Sierra Recovery HD"'
osascript ./~BUILD/Resources/Scripts/Notifications/quit.scpt
echo " " 
echob "Thanks`tput setaf 7``tput sgr0``tput bold``tput setaf 10` $hours $nameh`tput sgr0` `tput setaf 7``tput sgr0`"
echo " " 
exit 0
}
while [ 1 ]
do
head
menu
case $option in

1|1)
echo
INSTALLER_USB_OSX ;;
2|2)
echo
INSTALLER_USB1 ;;
3|3)
echo
INSTALLER_POST ;;
x|X)
echo
Quit ;;


*)
echo ""
esac
echo
echob "`tput setaf 7``tput sgr0``tput bold``tput setaf 10`Type any key to return menue`tput sgr0` `tput setaf 7``tput sgr0`"
echo
read -n 1 line
clear
done

exit




	
