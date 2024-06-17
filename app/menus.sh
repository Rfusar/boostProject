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
  echo "      3. crea progetto esperimento"
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
  echo -e "\033[31;3m"
  echo "      Job"
  echo "          1j. Google"
  echo "          2j. OS"
  echo ""
  echo -e "\033[0m"
}

continuaProgetto(){
  clear
  JobsW="/home/riccardo/Scrivania/WORK/progetti/eseguibili"
  JobsG="/home/riccardo/Scrivania/WORK/progetti/eseguibili/JobsGoogle"
  WebPages="/home/riccardo/Scrivania/WORK/progetti/webPage"
  Services="/home/riccardo/Scrivania/WORK/progetti/SERVICES"
  tool="/home/riccardo/Scrivania/tool"

  echo -e "\033[33;1m===================================" 
  echo "|                                 |"
  echo "|       Cosa vuoi continuare?     |"
  echo "|                                 |"
  echo "===================================" 
  echo -e "\033[32;3m"
  echo "      webPage"
  indice=0
  for e in "$WebPages"/*; do
      indice=$((indice+1))
      e=$(basename "$e")
      echo "                  ${indice}w. $e" 
  done

  echo -e "\033[36;3m"
  echo "      service"
  echo "          jobs"
  echo "              google"
  indice=0
  for e in "$JobsG"/*; do
      indice=$((indice+1))
      e=$(basename "$e")
      echo "                  ${indice}jb. $e" 
  done
  echo "              locale"
  indice=0
  for e in "$JobsW"/*; do
      indice=$((indice+1))
      e=$(basename "$e")
      if [ "$e" != "jobsGoogle" ];then
        echo "                  ${indice}jw. $e" 
      fi
  done
  echo "          API"
  indice=0
  for e in "$Services"/*; do
      indice=$((indice+1))
      e=$(basename "$e")
      echo "                  ${indice}s. $e" 
  done
  echo -e "\033[34;3m"
  echo "      esperimenti"
  echo "          1e. tool"
  echo ""
  echo -e "\033[0m"
}
menuEsperimenti(){
  clear
  echo -e "\033[33;1m======================================" 
  echo "|                                    |"
  echo "| Quale linguaggi vuoi sperimentare? |"
  echo "|                                    |"
  echo "======================================" 
  echo -e "\033[35;3m"
  echo "      Compilati"
  echo "          1c. C"
  echo "          2c. C++"
  echo "          3c. Go"
  echo "          4c. Java"
  echo -e "\033[34;3m"
  echo "      Interpretati"
  echo "          1i. Python"
  echo "          2i. Bash"
  echo "          3i. Perl"
  echo "          4i. Ruby"
  echo ""
  echo ""
}

menuStudio(){
  clear
  echo -e "\033[33;1m===================================" 
  echo "|                                 |"
  echo "|       Cosa vuoi studiare?       |"
  echo "|                                 |"
  echo "===================================" 
  echo -e "\033[35;3m"
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
  echo "TOOL                          menu tool"
  echo "TOOL update                   aggiorna un template"
  echo "TOOL update path              aggiorna i percorsi dei progetti"
  echo "TOOL github                   push si repository github"
  echo "TOOL studio                   studia un argomento"
  echo ""
  echo ""
}
