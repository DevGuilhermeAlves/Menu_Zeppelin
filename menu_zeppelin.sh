#!/usr/bin/env bash




#read >> tess depois usa o sed para substituir até o parametro na lista

LISTA=(
'Pycharm'
'Arduino'
'Floating-IPS'
'Lunar-Magic'
'Piskel'
'Skraper'
)


pycharm="/home/$USER/Downloads/Lutris/pycharm-community-2021.3.2/bin/pycharm.sh"
arduino="/home/guilherme/Downloads/Lutris/Arduino/arduino"
floating_ips="/home/guilherme/Downloads/Lutris/Floating IPS/flips-linux"
lunar_magic="/home/guilherme/Downloads/Lutris/Lunar Magic/Lunar Magic.exe"
piskel="/home/guilherme/Downloads/Lutris/Piskel/piskel"
skraper="/home/guilherme/Downloads/Lutris/Skraper-1.1.1/SkraperUI.exe"


MENU=$( yad --list "${LISTA[@]}" \
--text="\t Bem Vindo ao Zeppelin" \
--column="Selecione o aplicativo que deseja:" \
--width=500 \
--height=400 \
--image="/home/$USER/Imagens/Logos dos apps/zeppelin.png" \
--skip-taskbar \
--center \
--undecorated
)

echo $MENU 

 case $MENU in 

 Pycharm"|") "$pycharm" 1> /dev/null 2>&1 ;;
 Arduino"|") "$arduino" 1> /dev/null 2>&1 ;;
 Floating-IPS"|") "$floating_ips" 1> /dev/null 2>&1 ;;
 Lunar-Magic"|") "$lunar_magic" 1> /dev/null 2>&1 ;;
 Piskel"|") "$piskel" 1> /dev/null 2>&1 ;;
 Skraper"|") "$skraper" 1> /dev/null 2>&1 ;;
 
esac






