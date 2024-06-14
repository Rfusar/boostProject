JobsW="/home/riccardo/Scrivania/WORK/progetti/eseguibili"
JobsG="/home/riccardo/Scrivania/WORK/progetti/eseguibili/jobsGoogle"
WebPages="/home/riccardo/Scrivania/WORK/progetti/webPage"
Services="/home/riccardo/Scrivania/WORK/progetti/SERVICES"

output="/home/riccardo/Scrivania/tool/pathProject"

#Pulizia
cd "$output"
for file in ./*
do
    if [[ "$file" == *txt ]]
    then
        rm "$file"
    fi
done

cd .. && pwd > ./pathProject/1e.txt

for folder in "$JobsW" "$JobsG" "$WebPages" "$Services" 
do
    case "$folder" in 
        */eseguibili/jobsGoogle)est="jg";;
        */eseguibili)est="jw";;
        */webPage)est="w";;
        */SERVICES)est="s";;
    esac
    i=0
    for dir in "$folder"/*
    do
        if [ -d "$dir" ]; then
            i=$((i + 1))
            cd "$dir"
            pwd > "$output/${i}${est}.txt"
        fi
    done
done
