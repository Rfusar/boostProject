#!/bin/bash

source ./app/menus.sh

pathProgetti(){
  for file in pathProject/*
  do
    if [ "pathProject/$1.txt" == "$file" ]
    then
      route=$(cat "$file")
      echo "$route"
      break  
    fi
  done
}

update(){
  creaProgetto
  read -p ": " progettoUpdate
  case "$progettoUpdate" in 
    "1m") . ./update/flask.sh;;
    "2m") . ./update/fastapi.sh;;
  esac
}

