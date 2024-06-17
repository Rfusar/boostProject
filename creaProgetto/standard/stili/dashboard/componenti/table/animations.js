const btnsActions = document.querySelectorAll(".actionProgress")
const menusActions = document.querySelectorAll(".actionMenu")

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
let precedente = null
let loStesso = false
let menusChiusi = true
for(let i = 0; i < btnsActions.length; i++){
    btnsActions[i].addEventListener("click", function(){
      loStesso = precedente == i && menusChiusi==false ? true : false
      for(let j = 0; j < menusActions.length; j++){
         let m=menusActions[j]   
         //Quando clicchi lo stesso bottone
         if(precedente==j && loStesso==true){
             m.setAttribute("attivo","no")
             m.setAttribute("cliccato", "yes")
             menusChiusi=true
         }
         else if(i==j){
           m.setAttribute("attivo","yes")
           menusChiusi=false
         }
         else{m.setAttribute("attivo","no")}

         //Precedente
         m.setAttribute("cliccato", precedente==j ? "yes": "no")
         animation(m)
         if(menusChiusi==true){m.setAttribute("cliccato", "no")}
      } 
      precedente = menusChiusi==true ? null : i
   })
}

