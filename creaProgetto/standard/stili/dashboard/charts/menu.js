const btnMenu = document.querySelector("#btnMenuChart")
const menu = document.querySelector("#menuChart")

let attivo = null
btnMenu.addEventListener("mouseenter", ()=>{
  attivo=true
  if(attivo){
    menu.animate([
        {
          opacity: 0,
          top: "70px"
        },
        {
          opacity: 1,
          top: "50px",
          pointerEvents: "auto",
          zIndex: 1
        }
      ],{
          duration: 300,
          fill: "forwards"
    })
  }
})
menu.addEventListener("mouseleave", ()=>{
  attivo=false
  if(!attivo){
    menu.animate([
        {
          opacity: 1,
          top: "50px"
        },
        {
          opacity: 0,
          top: "70px",
          pointerEvents: "none",
          zIndex: -1
        }
      ],{
         duration: 300,
         fill: "forwards"
    })
  }
})

