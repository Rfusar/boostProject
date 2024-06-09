const btnMenu = document.querySelector("#btnMenuChart")
const menuChart = document.querySelector("#menuChart")



let attivoChart = null
btnMenu.addEventListener("mouseenter", ()=>{
  attivoChart=true
  if(attivoChart){
    menuChart.animate([
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
menuChart.addEventListener("mouseleave", ()=>{
  attivoChart=false
  if(!attivoChart){
    menuChart.animate([
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

