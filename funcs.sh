#!/bin/bash

source ./menus.sh

pathProgetti(){
for file in pathProject/*; do
    if grep -q "$searchString" "$file"; then
      route=$(cat "$file")
      break  
    fi
  done

  echo "$route"
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
