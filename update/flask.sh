#!/bin/bash

flaskUpdate(){
  dir="/home/riccardo/Scrivania/tool/creaProgetto/standard/stili/dashboard"
  dirTemp="/home/riccardo/Scrivania/esperimenti/testUpdate/dashboard"
  mkdir -p "$dirTemp"
  cd "$dirTemp"

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

  ln -s "$dir/charts/line.js" "./static/js/charts"
  ln -s "$dir/charts/pie.js" "./static/js/charts"
  ln -s "$dir/charts/menu.js" "./static/js/charts"

  ln -s "$dir/componenti/navbar/navbar.html" "./templates/componenti"
  ln -s "$dir/componenti/navbar/navbar.css" "./static/css/componenti"
  
  ln -s "$dir/componenti/sidebar/sidebar.html" "./templates/componenti"
  ln -s "$dir/componenti/sidebar/sidebar.css" "./static/css/componenti"

  ln -s "$dir/home/home.css" "./static/css/pages"
  ln -s "$dir/home/home.html" "./templates"
  ln -s "$dir/home/home.js" "./static/js/pages"

  ln -s "$dir/componenti/main/home.html" "./templates/componenti/main"
  ln -s "$dir/componenti/table/home.html" "./templates/componenti/table"

  ln -s "$dir/login/login.css" "./static/css/pages"
  ln -s "$dir/login/login.html" "./templates"
  ln -s "$dir/login/login.js" "./static/js/pages"

  ln -s "$dir/style/lightDark.js" "./static/js/style"

  ln -s "$dir/componenti/head.html" "./templates/componenti"

  ln -s "$dir/Flask/applicazione/routes/user.py" "./applicazione/routes"
  ln -s "$dir/Flask/applicazione/routes/dati.py" "./applicazione/routes"
  ln -s "$dir/Flask/applicazione/routes/pagine.py" "./applicazione/routes"
  ln -s "$dir/Flask/applicazione/DB.py" "./applicazione"
 
  ln -s "$dir/index.css" "./static/css"

  ln -s "/home/riccardo/Scrivania/tool/creaProgetto/standard/run/Flask.sh" "."
  ln -s "$dir/Flask/server.py" "."

  virtualenv venv
  source venv/bin/activate
  pip install flask gunicorn
}
