#!/bin/bash

source ./menus.sh

pathProgetti(){
  webPage="/home/riccardo/Scrivania/WORK/progetti"
  service="$webPage/SERVICE"
  case "$1" in 
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
    "7s") route="$service/API_mongoDB";;
    "8s") route="$service/API_redis";;

    "1e") route="/home/riccardo/Scrivania/tool";;

    *) . ./continuaProgetto/init.sh;;
  esac
  echo $route
}

github(){
  continuaProgetto
  read -p ": " progetto
  work=$(pathProgetti "$progetto")
  cd $work

  while $true; do
    clear
    read -p "branch: " branch
    if [ "$branch" == "non ricordo" ]; then
      git remote -v
      cd "$workTOOL"
      continue
    fi  
    
    read -p "prod o dev " sviluppo
    if [ "$sviluppo" == "prod" ]; then sviluppo="origin_prod"
    elif [ "$sviluppo" == "dev" ]; then sviluppo="origin_dev"
    elif [ "$sviluppo" == "all" ]; then sviluppo="all"
    else
      cd "$workTOOL"
      continue
    fi

    read -p "Vuoi aggiungere un commento? " commento
    if [ "$commento" == "no" ];then
      commento="0.0.0"
    fi

    if [ "$sviluppo" != "all" ]; then 
      git checkout "$branch"
      git add .
      git commit -m "$commento"
      git push "$sviluppo" "$branch"
      break
    else
      read -p "branch dev: " branchDev
      read -p "branch prod: " branchProd
      git checkout "$branchDev"
      git add .
      git commit -m "$commento"
      git push origin_dev "$branchDev"
      git checkout "$branchProd"
      git push origin_prod "$branchProd"
      break
    fi
  done
}
