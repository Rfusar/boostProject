const btnsActions = document.querySelectorAll(".actionProgress")
const menusActions = document.querySelectorAll(".actionMenu")
let precedente = false
let loStesso = false

function GestioneStati(){
  
}

function animation(btn){
  if(btn.getAttribute("attivo")=="yes"){
      btn.animate([
          { opacity: 0, top: "35px", pointerEvents: "none", zIndex: -1 },
          { opacity: 1, top: "20px", pointerEvents: "auto", zIndex: 1 }
        ],
        { duration: 500, fill: "forwards"}
      )
  }
  else if (btn.getAttribute("attivo")=="no" && btn.getAttribute("cliccato")=="yes"){
      btn.animate([
          { opacity: 1, top: "20px", pointerEvents: "auto", zIndex: 1 },
          { opacity: 0, top: "35px", pointerEvents: "none", zIndex: -1 }
        ],
        { duration: 500, fill: "forwards"}
      )
  }
}
       
//Main
for(let i = 0; i < btnsActions.length; i++){
    btnsActions[i].addEventListener("click", function(){
      console.clear()
      for(let j = 0; j < menusActions.length; j++){
        //Quando clicchi lo stesso bottone
         if(precedente==j && !loStesso){
             menusActions[j].setAttribute("attivo","no")
             menusActions[j].setAttribute("cliccato","no")
             loStesso=true
         }
         else if(i==j){
           menusActions[j].setAttribute("attivo","yes")
           loStesso=false
         }
         else{menusActions[j].setAttribute("attivo","no")}

        //Precedente
        if(precedente==j){
         menusActions[j].setAttribute("cliccato","yes")
        }
        else{menusActions[j].setAttribute("cliccato","no")}
 
        animation(menusActions[j])
      } 
      precedente = i
   })
}

