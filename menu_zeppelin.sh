#!/usr/bin/env bash

# Script name: Menu_Zeppelin.sh

# Creator: DevGuilhermeAlves
# Maintainer: DevGuilhermeAlves
# Version: 1.0
# Last update: 14/04/2022 


# Coloque o nome do software aqui

LISTA=(
'Pycharm'
'Arduino'
'Floating-IPS'
'Lunar-Magic'
'Piskel'
'Skraper'
)

# Crie uma variável para cada software que for adicionar

pycharm="/home/$USER/Downloads/Lutris/pycharm-community-2021.3.2/bin/pycharm.sh"
arduino="/home/$USER/Downloads/Lutris/Arduino/arduino"
floating_ips="/home/$USER/Downloads/Lutris/Floating IPS/flips-linux"
lunar_magic="/home/$USER/Downloads/Lutris/Lunar Magic/Lunar Magic.exe"
piskel="/home/$USER/Downloads/Lutris/Piskel/piskel"
skraper="/home/$USER/Downloads/Lutris/Skraper-1.1.1/SkraperUI.exe"


# Interface

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


    case $MENU in # Quando adicionar o nome do software na variável LISTA, irá precisar informar o nome o nome nesta case também seguindo o exemplo abaixo

        Pycharm"|") "$pycharm" 1> /dev/null 2>&1 ;;
        Arduino"|") "$arduino" 1> /dev/null 2>&1 ;;
        Floating-IPS"|") "$floating_ips" 1> /dev/null 2>&1 ;;
        Lunar-Magic"|") "$lunar_magic" 1> /dev/null 2>&1 ;;
        Piskel"|") "$piskel" 1> /dev/null 2>&1 ;;
        Skraper"|") "$skraper" 1> /dev/null 2>&1 ;;
 
    esac