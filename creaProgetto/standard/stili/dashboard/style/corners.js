function setCorners(){
  if(getCookie("corners") == "pointed"){
    allStyle.setProperty("--radius-20", "0")
    allStyle.setProperty("--radius-10", "0")
  }
  else if(getCookie("corners") == "round"){
    allStyle.setProperty("--radius-20", "20px")
    allStyle.setProperty("--radius-10", "10px")
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
  for(const c of all){c.style.transition="1s"}
  for(const c of document.querySelectorAll(".animate")){c.style.transition="300ms"}
  setCorners()
})

