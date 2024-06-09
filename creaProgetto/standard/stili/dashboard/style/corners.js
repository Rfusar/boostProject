const btnCorners = document.querySelector("#btnChangeCorners")

function setCorners(){
  const d = document.documentElement.style
  if(getCookie("corners") == "pointed"){
    d.setProperty("--radius-20", "0")
    d.setProperty("--radius-10", "0")
  }
  else if(getCookie("corners") == "round"){
    d.setProperty("--radius-20", "20px")
    d.setProperty("--radius-10", "10px")
  }
}

setCorners()
btnCorners.addEventListener("click", function(){
  if(this.getAttribute("corners")=="round"){
    this.setAttribute("corners", "pointed")
    setCookie("corners", "pointed")}
  else if(this.getAttribute("corners")=="pointed"){
    this.setAttribute("corners", "round")
    setCookie("corners", "round")
  }
  setCorners()
})

