#!/bin/bash
source ./menus.sh

while true; do
  Home
  read -p ": " res1

  if [ "$res1" == "1" ]; then
      ./creaProgetto/run.sh
      break

  elif [ "$res1" == "2" ]; then
      ./continuaProgetto/init.sh
      break
  fi
done
