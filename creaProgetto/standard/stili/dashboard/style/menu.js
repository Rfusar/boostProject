const btnCustom = document.querySelector("#custom")
const menuCustom = document.querySelector("#menuCustom")

btnCustom.addEventListener("mouseenter", ()=>{
  menuCustom.animate([
      {
        opacity: 0,
        top: "70px"
      },
      {
        opacity: 1,
        top: "50px",
        pointerEvents: "auto",
        zIndex: 1,
      }
    ], {
      duration: 300,
      fill: "forwards"
    })
})
menuCustom.addEventListener("mouseleave", ()=>{
  menuCustom.animate([
      {
        opacity: 1,
        top: "50px"
      },
      {
        opacity: 0,
        top: "70px",
        pointerEvents: "none",
        zIndex: -1,
      }
    ], {
      duration: 300,
      fill: "forwards"
    })
})

