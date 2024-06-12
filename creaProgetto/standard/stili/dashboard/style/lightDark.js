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
    allStyle.setProperty("--lineTable0", "#0f0f0f")
    allStyle.setProperty("--lineTable1", "#131414")
    allStyle.setProperty("--lineTable1", "#131414")
    allStyle.setProperty("--table-hover", "#0c1536")
    allStyle.setProperty("--bg-success-status", "#b1ebfa")
    allStyle.setProperty("--text-success-status", "#034859")
    allStyle.setProperty("--bg-progress-status", "#7575f0")
    allStyle.setProperty("--text-progress-status", "#020252")
    allStyle.setProperty("--bg-error-status", "#d875e6")
    allStyle.setProperty("--text-error-status", "#3d0245")
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
    allStyle.setProperty("--lineTable0", "#fff")
    allStyle.setProperty("--lineTable1", "#f0f4f5")
    allStyle.setProperty("--table-hover", "#b6c6fa")
    allStyle.setProperty("--bg-success-status", "#69db5e")
    allStyle.setProperty("--text-success-status", "#014a04")
    allStyle.setProperty("--bg-progress-status", "#fae755")
    allStyle.setProperty("--text-progress-status", "#594f02")
    allStyle.setProperty("--bg-error-status", "#f76f63")
    allStyle.setProperty("--text-error-status", "#4f0209")
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
  setColors()
  for(const c of document.querySelectorAll(".animate")){c.style.transition="300ms"}
  for(const c of document.querySelectorAll(".animate0")){c.style.transition="0ms"}
})
