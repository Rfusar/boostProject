# *Boost Project*
### Per ora solo per OS capaci d'interpretare il linguaggio Bash
il tool si divide in eseguibili bash e cartelle standard, dove staranno i tuoi template per le pagine web e non solo.
è altamente personalizzabile 
vedi tu cosa farci...

Avviare lo script con il comando source

```bash
source ./app.sh #cosi permette di spostarsi tra le direcctory nel terminale in esecuzione 
```

o ancora meglio

```bash
nvim ~/.bashrc 

#poi ci scrivi dentro
TOOL(){
    source path/to/app.sh
}
#cosi puo essere utilizzato ovunque con la parola TOOL
```
