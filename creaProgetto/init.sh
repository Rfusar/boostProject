#!/bin/bash
source ./menus.sh

percorso="/home/riccardo/Scrivania/esperimenti"

creaProgetto
read -p ": " res

if [[ "$res" == "1m" || "$res" == "2m" ]]; then
  ps="./creaProgetto/standard"
  loginHTML=$(cat "$ps/Login/page.html")
  loginCSS=$(cat "$ps/Login/style.css")
  loginJS=$(cat "$ps/Login/main.js")

  if [ "$res" == "1m" ];then 
    rf="$ps/Flask/applicazione/route"
    server=$(cat "$ps/Flask/server.py")
    DB=$(cat "$ps/Flask/applicazione/DB.py")
    rd=$(cat "$rf/dati.py")
    rp=$(cat "$rf/pagine.py")
    ru=$(cat "$rf/user.py")
    fileDocker=$(cat "$ps/docker/Flask.txt")
    fileRun=$(cat "$ps/run/Flask.txt")
  elif [ "$res" == "2m" ];then 
    server=$(cat "$ps/FastAPI/server.py")
    fileDocker=$(cat "$ps/docker/FastAPI.txt")
    fileRun=$(cat "$ps/run/FastAPI.txt")
  fi

fi

clear
case "$res" in 
  "1m" | "2m")
    read -p "Nome progetto: " progetto
    ls -l pathProject
    read -p "inserisci codice: " codice
    echo "$percorso/$progetto" > "pathProject/$codice.txt"
    percorsoCompleto=$(cat "./pathProject/$codice.txt")
    cd $percorso
    mkdir $progetto

    cd "$percorsoCompleto"
    virtualenv venv
    source venv/bin/activate
    
    if [ "$res" == "1m" ];then pip install flask gunicorn
    elif [ "$res" == "2m" ];then  pip install fastapi
    fi
    pip freeze > requirements.txt

    mkdir -p \
      applicazione/routes \
      static/css/pages \
      static/js/pages \
      templates/componenti
   
    echo "$DB" > applicazione/DB.py
    echo "$rd" > applicazione/routes/dati.py
    echo "$rp" > applicazione/routes/pagine.py
    echo "$ru" > applicazione/routes/user.py
    echo "" > templates/componenti/header.html
    echo "$loginHTML" > templates/login.html
    echo "$loginCSS" > static/css/pages/login.css
    echo "$loginJS" > static/js/pages/login.js
    echo "$server" > server.py
    echo '*.sh' > .gitignore
    echo "$fileDocker" > Dockerfile 
    echo "$fileRun" > run.sh
    chmod 700 run.sh
    ;;
esac

cd "$percorsoCompleto"

