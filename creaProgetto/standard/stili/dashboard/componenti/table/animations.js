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
const debug = []
for(let i = 0; i < btnsActions.length; i++){
    btnsActions[i].addEventListener("click", function(){
        console.log(precedente==i)
      console.clear()
      //console.table([{loStesso: loStesso, notLoStesso: !loStesso, menusChiusi: menusChiusi, notMenusChiusi: !menusChiusi}])
      if(precedente==i){loStesso=true}
      for(let j = 0; j < menusActions.length; j++){
        let m=menusActions[j]   
        debug.push({
          check1: precedente==j && !loStesso, 
          check3: precedente==j && !menusChiusi, 
          checkChiudiMenu: m.getAttribute("attivo")=="no" && m.getAttribute("cliccato")=="yes",
          checkApriMenu: m.getAttribute("attivo")=="yes"
        })
        //Quando clicchi lo stesso bottone
         if(precedente==j && !loStesso){
             m.setAttribute("attivo","no")
             m.setAttribute("cliccato","no")
             if(precedente == i){
                m.setAttribute("cliccato","no")
                menusChiusi=true
             }
             loStesso=false
         }
         else if(i==j){
           m.setAttribute("attivo","yes")
           menusChiusi=false
             
         }
         else{m.setAttribute("attivo","no")}
        //Precedente
        if(precedente==j && !menusChiusi){
         m.setAttribute("cliccato","yes")
        }
        else{m.setAttribute("cliccato","no")}
        animation(m)
      } 
      precedente = i
      console.table(debug)
   })
}

