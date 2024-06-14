#!/bin/bash

source ./app/menus.sh
source ./app/funcs.sh

continuaProgetto
read -p ": " res

progetti=()
for file in "/home/riccardo/Scrivania/tool/pathProject"/*
do
    f_name=$(basename "$file")
    f="${f_name%.*}"
    progetti+=("$f")
done

route=$(pathProgetti "$res")

cd $route
source venv/bin/activate
