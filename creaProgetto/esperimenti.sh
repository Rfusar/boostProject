#!/bin/bash
source ./app/menus.sh
source ./app/consts.sh

menuEsperimenti
read -p ": " res
cd "$Esperimenti"

clear
read -p "Nome Progetto: " progetto
case "$res" in 
    "1c")
      mkdir -p C/"$progetto"/headers 
      touch C/"$progetto"/headers/header.h 
      touch C/"$progetto"/main.c
      echo -e "#!/bin/bash\ngcc -o main main.c" > C/"$progetto"/compila.sh
      cd C/"$progetto"
      ;;
    "2c")
      mkdir -p Cpp/"$progetto"/headers 
      touch Cpp/"$progetto"/headers/header.hpp
      touch Cpp/"$progetto"/main.cpp
      echo -e "#!/bin/bash\ng+ -o main main.cpp" > Cpp/"$progetto"/compila.sh
      cd Cpp/"$progetto"
      ;;
    "3c")
      mkdir -p Go/"$progetto"
      touch Go/"$progetto"/main.go
      echo "#!/bin/bash" > Go/"$progetto"/compila.sh
      cd Go/"$progetto"
      ;;
    "4c")
      mkdir -p Java/"$progetto"
      touch Java/"$progetto"/Main.java
      echo "#!/bin/bash" > Java/"$progetto"/compila.sh
      cd Java/"$progetto"
      ;;
    "1i")
      mkdir -p Python/"$progetto"
      touch Python/"$progetto"/main.py
      echo "#!/bin/bash" > Python/"$progetto"/compila.sh
      cd Python/"$progetto"
      ;;
    "2i")
      mkdir -p Bash/"$progetto"
      touch Bash/"$progetto"/main.sh 
      cd Bash/"$progetto"
      ;;
    "3i")
      mkdir -p Perl/"$progetto"
      touch Perl/"$progetto"/main.pl
      echo "#!/bin/bash" > Perl/"$progetto"/compila.sh
      cd Perl/"$progetto"
      ;;
    "4i")
      mkdir -p Ruby/"$progetto"
      touch Ruby/"$progetto"/main.rb
      echo "#!/bin/bash" > Ruby/"$progetto"/compila.sh
      cd Ruby/"$progetto"
      ;;
esac

if [ "$res" != "2i" ]; then
    chmod 700 compila.sh
fi
