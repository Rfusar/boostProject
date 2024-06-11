#!/bin/bash
Home(){
  clear
  echo "===================================" 
  echo "|                                 |"
  echo "|       Cosa vuoi fare?           |"
  echo "|                                 |"
  echo "===================================" 
  echo ""
  echo "      1. crea progetto"
  echo "      2. continua progetto"
  echo ""
  echo ""
  echo ""
  echo ""
}

creaProgetto(){
  clear
  echo "===================================" 
  echo "|                                 |"
  echo "|       Che tipo di progetto?     |"
  echo "|                                 |"
  echo "===================================" 
  echo ""
  echo "      monolitico"
  echo "          1m. Flask"
  echo "          2m. FastAPI"
  echo ""
  echo "      backend"
  echo "          1b. Flask"
  echo "          2b. FastAPI"
  echo ""
  echo "      frontend"
  echo "          1f. React"
  echo "          2f. HTML+CSS+JS"
  echo ""
  echo ""
  echo ""
  echo ""
}

continuaProgetto(){
  clear
  echo "===================================" 
  echo "|                                 |"
  echo "|       Cosa vuoi continuare?     |"
  echo "|                                 |"
  echo "===================================" 
  echo ""
  echo "      webPage"
  echo "          1wp. 24Care"
  echo "          2wp. Spike Inova"
  echo "          3wp. Autonoleggio"
  echo "          4wp. prelois-stampanti"
  echo "          5wp. Rail Traction"
  echo "          6wp. help-client"
  echo "          7wp. help-nemesis"
  echo ""
  echo "      service"
  echo "          1s. 24Care"
  echo "          2s. Backup"
  echo "          3s. Import-email"
  echo "          4s. XML"
  echo "          5s  PDF"
  echo "          6s. Autonoleggio"
  echo "          7s. MongoDB"
  echo "          8s. Redis"
  echo ""
  echo "      esperimenti"
  echo "          1e. tool"
  echo ""
  echo ""
  echo ""
}

menuStudio(){
  clear
  echo "===================================" 
  echo "|                                 |"
  echo "|       Cosa vuoi studiare?       |"
  echo "|                                 |"
  echo "===================================" 
  echo ""
  echo "      1. bash"
  echo "      2. microsoft"
  echo ""
  echo ""
}


menuHelp(){
  clear
  echo "Sintassi TOOL:"
  echo ""
  echo "TOOL                menu tool"
  echo "TOOL update         aggiorna un template"
  echo "TOOL github         push si repository github"
  echo "TOOL studio         studia un argomento"
  echo ""
  echo ""
}
