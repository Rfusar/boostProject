document.querySelector("#btnChangeColors").addEventListener("click", function(){
  const d = document.documentElement.style
  
  console.log("ciao")

  if(this.getAttribute("colors") == "light"){
    this.setAttribute("colors", "dark")
    this.textContent = "Dark"

    d.setProperty("--bg-base1", "#0f0f0f") 
    d.setProperty("--bg-base2", "#131414")
    d.setProperty("--bg-base3", "#202121")
    d.setProperty("--sidebar-hover", "#0c1536")
    d.setProperty("--sidebar-border", "blue")
    d.setProperty("--bg-cardReport", "#131414")
    d.setProperty("--text-cardReport", "#fff")
    d.setProperty("--text-base1", "#fff")
  }
  else if(this.getAttribute("colors") == "dark"){
    this.setAttribute("colors", "light")
    this.textContent = "Light"

    d.setProperty("--bg-base1", "#fff") 
    d.setProperty("--bg-base2", "#0253f5")
    d.setProperty("--bg-base3", "#edf2ef")
    d.setProperty("--sidebar-hover", "#fff3")
    d.setProperty("--sidebar-border", "yellow")
    d.setProperty("--bg-cardReport", "#fff")
    d.setProperty("--text-base1", "#000")

  }
})
