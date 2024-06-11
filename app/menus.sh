#!/bin/bash
Home(){
  clear
  echo -e "\033[33;1m===================================" 
  echo "|                                 |"
  echo "|       Cosa vuoi fare?           |"
  echo "|                                 |"
  echo "===================================" 
  echo -e "\033[35;3m"
  echo "      1. crea progetto"
  echo "      2. continua progetto"
  echo ""
  echo -e "\033[0m"
}

creaProgetto(){
  clear
  echo -e "\033[33;1m===================================" 
  echo "|                                 |"
  echo "|       Che tipo di progetto?     |"
  echo "|                                 |"
  echo "===================================" 
  echo -e "\033[32;3m"
  echo "      monolitico"
  echo "          1m. Flask"
  echo "          2m. FastAPI"
  echo -e "\033[36;3m"
  echo "      backend"
  echo "          1b. Flask"
  echo "          2b. FastAPI"
  echo -e "\033[34;3m"
  echo "      frontend"
  echo "          1f. React"
  echo "          2f. HTML+CSS+JS"
  echo ""
  echo -e "\033[0m"
}

continuaProgetto(){
  clear
  echo -e "\033[33;1m===================================" 
  echo "|                                 |"
  echo "|       Cosa vuoi continuare?     |"
  echo "|                                 |"
  echo "===================================" 
  echo -e "\033[32;3m"
  echo "      webPage"
  echo "          1wp. 24Care"
  echo "          2wp. Spike Inova"
  echo "          3wp. Autonoleggio"
  echo "          4wp. prelois-stampanti"
  echo "          5wp. Rail Traction"
  echo "          6wp. help-client"
  echo "          7wp. help-nemesis"
  echo -e "\033[36;3m"
  echo "      service"
  echo "          1s. 24Care"
  echo "          2s. Backup"
  echo "          3s. Import-email"
  echo "          4s. XML"
  echo "          5s  PDF"
  echo "          6s. Autonoleggio"
  echo "          7s. MongoDB"
  echo "          8s. Redis"
  echo -e "\033[34;3m"
  echo "      esperimenti"
  echo "          1e. tool"
  echo ""
  echo -e "\033[0m"
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
  echo "      3. algebra"
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
