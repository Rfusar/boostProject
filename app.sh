#!/bin/bash
source ./app/menus.sh
source ./app/funcs.sh
workTOOL="/home/riccardo/Scrivania/tool"


if [ -z "$1" ]; then
  while true; do
    Home
    read -p ": " res

    if [ "$res" == "1" ]; then
      creaProgetto
      read -p ": " res
      case "$res" in 
        "1m") . ./creaProgetto/dashboard.sh;;
        "2m") . ./creaProgetto/api.sh;;
      esac
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
  . ./app/github.sh

elif [ "$1" == "help" ]; then
  menuHelp

elif [ "$1" == "studio" ]; then
  menuStudio 
  read -p ": " argomento
  . ./app/studio.sh "$argomento"

fi
