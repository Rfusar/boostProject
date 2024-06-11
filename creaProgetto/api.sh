#!/bin/bash
percorso="/home/riccardo/Scrivania/esperimenti"
ps="/home/riccardo/Scrivania/tool/creaProgetto/standard/stili/API"
altriFile="/home/riccardo/Scrivania/tool/creaProgetto/standard"

clear
read -p "Nome progetto: " progetto
ls pathProject | grep "s"
read -p "inserisci codice: " codice
echo "$percorso/$progetto" > "pathProject/$codice.txt"
percorsoCompleto=$(cat "./pathProject/$codice.txt")
cd "$percorso"
mkdir "$progetto"

cd "$percorsoCompleto"
git init 
virtualenv venv
source venv/bin/activate
pip install fastapi fastapi-sessions
pip freeze > requiremenets.txt

mkdir -p services/routes 

cat "$ps/services/routes/A.py" > services/routes/A.py
cat "$ps/services/classeA.py" > services/classeA.py
cat "$ps/services/cookie.py" > services/cookie.py
cat "$ps/server.py" > server.py

cat "$altriFile/docker/FastAPI.txt" > Dockerfile
cat "$altriFile/run/FastAPI.sh" > run.sh

echo '*.sh' > .gitignore
chmod 700 run.sh
