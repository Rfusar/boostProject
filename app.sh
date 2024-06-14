#!/bin/bash
source ./app/menus.sh
source ./app/funcs.sh
source ./app/consts.sh

cd "$toolPath"

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

#Con argomenti
elif [ "$1" == "update" ]; then 
    if [ -z "$2" ];then update
    elif [ "$2" == "path" ];then . ./pathProject/setPathProject.sh
    fi

elif [ "$1" == "github" ]; then  . ./app/github.sh

elif [ "$1" == "help" ]; then menuHelp

elif [ "$1" == "studio" ]; then
  menuStudio 
  read -p ": " argomento
  . ./app/studio.sh "$argomento"

fi
