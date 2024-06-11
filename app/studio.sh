#!/bin/bash

case "$1" in 
  "1")
    link="https://diraimondo.dmi.unict.it/wp-content/uploads/classes/so/mirror-stuff/abs-guide.pdf"
    pag=353
    ;;
  "2")
    link="https://learn.microsoft.com/it-it/training/?source=learn"
    pag=0
    ;;
esac

if [ $pag -gt 0 ]; then
  echo "sei arrivato a pagina $pag"
  sleep 2
fi

firefox "$link" &
exit
