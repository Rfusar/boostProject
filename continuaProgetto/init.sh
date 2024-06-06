#!/bin/bash

source ./menus.sh
source ./funcs.sh

continuaProgetto
read -p ": " res

progetti=("1wp" "2wp" "3wp" "4wp" "5wp" "6wp" "7wp" "1s" "2s" "3s" "4s" "5s" "6s" "7s" "8s" "9s" "10s")

for p in "${progetti[@]}"; do
  if [[ "$1" == "$p" ]]; then
    pythonProject=0
    break
  fi
done

route=$(pathProgetti "$res")

cd $route
if [[ $pythonProject==0 ]]; then
  source venv/bin/activate
fi
