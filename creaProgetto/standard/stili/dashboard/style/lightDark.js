function setColors(){
  if(getCookie("colors") == "dark"){
    btnColors.textContent = "Dark"
    allStyle.setProperty("--bg-base1", "#0f0f0f") 
    allStyle.setProperty("--bg-base2", "#131414")
    allStyle.setProperty("--bg-base3", "#202121")
    allStyle.setProperty("--sidebar-hover", "#0c1536")
    allStyle.setProperty("--sidebar-border", "blue")
    allStyle.setProperty("--bg-cardReport", "#131414")
    allStyle.setProperty("--text-cardReport", "#fff")
    allStyle.setProperty("--text-base1", "#fff")
  }
  else if(getCookie("colors") == "light"){
    btnColors.textContent = "Light"

    allStyle.setProperty("--bg-base1", "#fff") 
    allStyle.setProperty("--bg-base2", "#0253f5")
    allStyle.setProperty("--bg-base3", "#edf2ef")
    allStyle.setProperty("--sidebar-hover", "#fff3")
    allStyle.setProperty("--sidebar-border", "yellow")
    allStyle.setProperty("--bg-cardReport", "#fff")
    allStyle.setProperty("--text-base1", "#000")
  }
}

setColors()
btnColors.addEventListener("click", function(){
  if(this.getAttribute("colors") == "light"){
    this.setAttribute("colors", "dark")
    setCookie("colors", "dark")
  }
  else if(this.getAttribute("colors") == "dark"){
    this.setAttribute("colors", "light")
    setCookie("colors", "light")
  }
  for(const c of all){c.style.transition="1s"}
  for(const c of document.querySelectorAll(".animate")){c.style.transition="300ms"}

  setColors()
})
