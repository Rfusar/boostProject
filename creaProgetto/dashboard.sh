#!/bin/bash
source ./menus.sh
percorso="/home/riccardo/Scrivania/esperimenti"
ps="/home/riccardo/Scrivania/tool/creaProgetto/standard/stili/dashboard"
rf="$ps/Flask/applicazione/routes"
altriFile="/home/riccardo/Scrivania/tool/creaProgetto/standard"

clear
read -p "Nome progetto: " progetto
ls pathProject | grep "wp"
read -p "inserisci codice: " codice
echo "$percorso/$progetto" > "pathProject/$codice.txt"
percorsoCompleto=$(cat "./pathProject/$codice.txt")
cd "$percorso"
mkdir "$progetto"

cd "$percorsoCompleto"
git init
virtualenv venv
source venv/bin/activate
pip install flask gunicorn
pip freeze > requirements.txt

mkdir -p \
  applicazione/routes \
  static/css/pages \
  static/css/componenti \
  static/img \
  static/js/pages \
  static/js/style \
  static/js/componenti \
  static/js/charts \
  templates/componenti/main \
  templates/componenti/table 

#Pages
cat "$ps/login/login.html" > templates/login.html
cat "$ps/login/login.css" > static/css/pages/login.css
cat "$ps/login/login.js" > static/js/pages/login.js
cat "$ps/home/home.html" > templates/home.html
cat "$ps/home/home.css" > static/css/pages/home.css
cat "$ps/home/home.js" > static/js/pages/home.js
cat "$ps/users/users.html" > templates/users.html
cat "$ps/otherPage1/process.html" > templates/users.html

#Componenti
cat "$ps/componenti/navbar/navbar.html" > templates/componenti/navbar.html
cat "$ps/componenti/navbar/navbar.css" > static/css/componenti/navbar.css
cat "$ps/componenti/sidebar/sidebar.html" > templates/componenti/sidebar.html
cat "$ps/componenti/sidebar/sidebar.css" > static/css/componenti/sidebar.css
cat "$ps/componenti/main/home.html" > templates/componenti/main/home.html
cat "$ps/componenti/main/users.html" > templates/componenti/main/users.html
cat "$ps/componenti/main/process.html" > templates/componenti/main/process.html

cat "$ps/componenti/table/home.html" > templates/componenti/table/home.html
cat "$ps/componenti/table/table.js" > static/js/componenti/table.js
cat "$ps/componenti/table/table.css" > static/css/componenti/table.css
cat "$ps/componenti/table/tablePage.css" > static/css/componenti/tablePage.css

cat "$ps/index.css" > static/css/index.css
cat "$ps/index.js" > static/js/index.js
cat "$ps/componenti/head.html" > templates/componenti/head.html

#Plugin
cat "$ps/charts/line.js" > static/js/charts/line.js
cat "$ps/charts/pie.js" > static/js/charts/pie.js
cat "$ps/charts/menu.js" > static/js/charts/menu.js
cat "$ps/charts/charts.css" > static/css/componenti/charts.css

cat "$ps/cookie.js" > static/js/cookie.js
cat "$ps/colors.js" > static/js/colors.js
cat "$ps/style/corners.js" > static/js/style/corners.js
cat "$ps/style/lightDark.js" > static/js/style/lightDark.js
cat "$ps/style/menu.js" > static/js/style/menu.js
cat "$ps/impersonifica.js" > static/js/impersonifica.js

#Server
cat "$ps/Flask/applicazione/DB.py" > applicazione/DB.py
cat "$rf/dati.py" > applicazione/routes/dati.py
cat "$rf/pagine.py" > applicazione/routes/pagine.py
cat "$rf/user.py" > applicazione/routes/user.py
cat "$ps/Flask/applicazione/users.json" > applicazione/users.json
cat "$ps/Flask/applicazione/status_printer.json" > applicazione/status_printer.json
cat "$ps/Flask/server.py" > server.py
    
#Altro
cat "$altriFile/docker/Flask.txt" > Dockerfile
cat "$altriFile/run/Flask.sh" > run.sh

echo '*.sh' > .gitignore
chmod 700 run.sh
