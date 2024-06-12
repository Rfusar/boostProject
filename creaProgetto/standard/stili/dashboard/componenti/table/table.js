const pagine = []
let num_pagina = 1
const dati = document.querySelectorAll(".rowTable")
const campi = document.querySelectorAll(".titoli").length-1

//Style
function setColorsRowsTable(datiFiltrati){
  datiFiltrati.forEach((e,i)=>{
    e.addEventListener("mouseenter", ()=>{
      e.style.backgroundColor = "var(--table-hover)"
      e.style.transition = "0s"
    })
    e.addEventListener("mouseleave", ()=>{
      e.style.backgroundColor = i%2 == 0 ? "var(--lineTable0)" : "var(--lineTable1)"
    })
    e.style.backgroundColor = i%2 == 0 ? "var(--lineTable0)" : "var(--lineTable1)"
  })
}


for(const d of document.querySelectorAll(".type")){
  let bg = null
  let text = null
  switch(d.textContent){
    case "EML":
    case "PDF":
      d.style.backgroundColor = "var(--bg-error-status)" 
      d.style.color = "var(--text-error-status)"
      break
    case "printed":
      d.style.backgroundColor = "var(--bg-success-status)" 
      d.style.color = "var(--text-success-status)"
      break
    case "await":
      d.style.backgroundColor = "var(--bg-progress-status)" 
      d.style.color = "var(--text-progress-status)"
      break
  }
  Object.assign(d.style, {
    fontWeight: 800,
    padding: "5px",
    borderRadius: "var(--radius-10)"

  })
}



setColorsRowsTable(dati)
Impaginazione(dati, campi, 10)

document.querySelector("#rowForPage").addEventListener("input", function(){
  Impaginazione(dati, campi, Number(this.value))
})

document.querySelector("#search").addEventListener("input", function(){ 
    const indices = Array.from(dati)
      .map((td, index) => ({ text: td.textContent || td.innerText, index }))
      .filter(item => item.text.includes(this.value)) 
      .map(item => item.index)
   
    datiSearch = (()=>{
      const d = []
      for(const i of indices){
        d.push(dati[i])
      }
      return d
    })()
  Impaginazione(datiSearch, campi, Number(document.querySelector("#rowForPage").value))
})



//Impaginazione
function cambioPagina(tbody, n){ 
  num_pagina = n
  if (num_pagina <= pagine.length && num_pagina > 0){
    tbody.innerHTML = ""
    for(let i = 0; i < pagine[n-1].length; i++){
      tbody.append(pagine[n-1][i])
    }
  }
  else{
    if (num_pagina >= pagine.length){num_pagina = pagine.length-1}
    else if (num_pagina < 0){num_pagina = 1}
  }
  setColorsRowsTable(tbody.childNodes)
}

// item=array[object], campi=int, rows=int
function Impaginazione(items, campi, rows){ 
  pagine.length = 0
  const tbody = document.querySelector("#tbody")
  tbody.innerHTML=""
  const pagina = []
  const ultimaPage = items.length%rows
  for(let i = 0; i <= items.length; i++){
    if (pagina.length < rows){
      pagina.push(items[i])
    }
    else{
      i--
      pagine.push(pagina.slice())
      pagina.length = 0
    }
  }
  //Gestire gli ultimi elementi
  pagina.length = 0
  if(ultimaPage != 0){
    for(let i = ultimaPage; i > 0; i--) {
      pagina.push(items[items.length-i])
    }
    if(pagina.length < rows){
      while(pagina.length < rows){
        const tr = document.createElement("tr")
        tr.classList.add("rowTable")
        for(let i = 0; i < campi+1; i++){
          const td = document.createElement("td")
          td.textContent = "X"
          td.style.padding = "11.9px"
          td.style.color = "transparent"
          tr.append(td)
        }
        pagina.push(tr)
      }
    }
    pagine.push(pagina.slice())
  }
  cambioPagina(tbody, 1)
  //btnsPagine
  const btnsPagine = document.querySelector("#btnsPagine")
  Object.assign(btnsPagine.style, {
    borderRadius: "var(--radius-20)",
    width: "max-content",
    overflow: "hidden"
  })
  btnsPagine.innerHTML=""
  if (pagine.length <= 3){
    for(let i = 0; i < pagine.length; i++){
      const btn = document.createElement("button")
      btn.setAttribute("class", "pointer btnPagina")
      btn.style.transition = "1s"
      btn.textContent = `${i+1}`
      btnsPagine.append(btn)
      btn.addEventListener("click", ()=>{
        cambioPagina(tbody, i)
      })
    } 
  }
  else{
    for(let i = 0; i < 5; i++){
      const btn = document.createElement("button")
      btn.setAttribute("class", "pointer btnPagina")
      btn.style.transition = "1s"
      switch(i){
        case 0: 
          btn.textContent = "<"
          btn.addEventListener("click", ()=>cambioPagina(tbody, --num_pagina))
          break
        case 1:
          btn.textContent = 1
          btn.style.cursor = "default"
          const observer1 = new MutationObserver((mutationsList, observer) => {
            for (const mutation of mutationsList) {
              if (mutation.type === 'childList') { 
                btn.textContent = num_pagina
              }
            }
          })
          observer1.observe(tbody, {childList: true})
          break
        case 2: 
          btn.textContent = "..."
          btn.style.cursor = "default"
          btn.classList.remove("ok") 
          break
        case 3: 
          btn.textContent = `${pagine.length}`
          btn.addEventListener("click", ()=>{
            cambioPagina(tbody, pagine.length)
          })
          break
        case 4: 
          btn.textContent = ">"
          btn.addEventListener("click", ()=>cambioPagina(tbody, ++num_pagina))
          break
      }
      btnsPagine.append(btn)
    } 
  }
}
