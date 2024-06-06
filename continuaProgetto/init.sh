#!/bin/bash

source ./menus.sh

continuaProgetto
read -p ": " res

webPage="/home/riccardo/Scrivania/WORK/progetti"
service="$webPage/SERVICE"
progetti=("1wp" "2wp" "3wp" "4wp" "5wp" "6wp" "7wp" "1s" "2s" "3s" "4s" "5s" "6s" "7s" "8s" "9s" "10s")

for p in "${progetti[@]}"; do
  if [[ "$1" == "$p" ]]; then
    pythonProject=0
    break
  fi
done

case "$res" in 
  "1wp") route="$webPage/24Care";;
  "2wp") route="$webPage/Spike_inova";;
  "3wp") route="$service/noleggio_auto/WebPage";;
  "4wp") route="$webPage/prelois/webPage";;
  "5wp") route="$webPage/RailTraction";;
  "6wp") route="$webPage/Help/help-client";;
  "7wp") route="$webPage/Help/help-nemesis";;
  
  "1s") route="$webPage/JobsGoogle/24Care";;
  "2s") route="$webPage/JobsGoogle/backup";;
  "3s") route="$service/API_import-email";;
  "4s") route="$service/API_xml";;
  "5s") route="$service/pdf";;
  "6s") route="$service/noleggio_auto/job";;
  "7s") route="$webPage/API_mongoDB";;
  "8s") route="$webPage/API_redis";;

esac

cd $route
if [[ $pythonProject==0 ]]; then
  source venv/bin/activate
fi
