# *Boost Project*
### Per ora solo per OS capaci d'interpretare il linguaggio Bash
il tool si divide in eseguibili bash e cartelle standard, dove staranno i tuoi template per le pagine web e non solo.
è altamente personalizzabile 
vedi tu cosa farci...

Avviare lo script con il comando source

```bash
source ./app.sh #cosi permette di spostarsi tra le direcctory nel terminale in esecuzione 
```

o ancora meglio, aprite file di configurazione con un editor di testo ad esempio nvim
per ubuntu è *bashrc* 
```bash
nvim ~/.bashrc 
```

poi ci scrivi dentro

```bash
TOOL(){
    source path/to/app.sh
}
```
poi 

```bash
source ~/.bashrc #oppure . ~/.bashrc
```
cosi puo essere utilizzato ovunque con la parola TOOL
