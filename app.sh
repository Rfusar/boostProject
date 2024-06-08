#!/bin/bash
source ./menus.sh
source ./funcs.sh
workTOOL="/home/riccardo/Scrivania/tool"


if [ -z "$1" ]; then
  while true; do
    Home
    read -p ": " res

    if [ "$res" == "1" ]; then
        . ./creaProgetto/init.sh
        break

    elif [ "$res" == "2" ]; then
        . ./continuaProgetto/init.sh
        break
    fi
  done

elif [ "$1" == "update" ]; then 
  cd "$workTOOL" 
  update

    
elif [ "$1" == "github" ]; then 
  github

fi
