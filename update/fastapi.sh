#!/bin/bash
source ./app/consts.sh
dir="$projectTemplate/API"
dirTemp="/home/riccardo/Scrivania/esperimenti/updatedFastAPI"

mkdir "$dirTemp" && cd "$dirTemp"

mkdir -p services/routes 

ln -s "$dir/services/routes/A.py" "./services/routes"
ln -s "$dir/services/classeA.py" "./services"
ln -s "$dir/services/cookie.py" "./services"
ln -s "$dir/server.py" "."

ln -s "/home/riccardo/Scrivania/tool/creaProgetto/standard/run/FastAPI.sh" "."

virtualenv venv
source venv/bin/activate
pip install fastapi fastapi-sessions
