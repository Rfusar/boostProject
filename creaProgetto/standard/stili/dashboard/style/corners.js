document.querySelector("#btnChangeCorners").addEventListener("click", function(){
  const d = document.documentElement.style
  
  if(this.getAttribute("corners") == "round"){
    this.setAttribute("corners", "pointed")

    d.setProperty("--radius-20", "0")
    d.setProperty("--radius-10", "0")
  }
  else if(this.getAttribute("corners") == "pointed"){
    this.setAttribute("corners", "round")

    d.setProperty("--radius-20", "20px")
    d.setProperty("--radius-10", "10px")
  }
})

