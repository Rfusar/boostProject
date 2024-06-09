(async ()=>{
  let res = await fetch("/datiTabella", {
    method: "POST",
    headers: {"Content-Type": "application/json"},
    body: JSON.stringify({"element": "users"})
  })
  res = await res.json()

  const tbody = document.querySelector("#tbody")

  //Pulizia
  USERS = []
  for(const riga of res["users"]){
    user = {}
    for(const [k, v] of Object.entries(riga)){
      switch(k){
        case "_id": user["_id"] = v; break
        case "name": 
          user["name"] = v.split()[0]
          user["surname"]= v.split()[1]
          break
        case "role": user["role"] = v; break
        case "company": user["company"] = v; break
      }
    }
    USERS.push(user)
  }

  for(const u of USERS){
    const tr = document.createElement("tr")
    const tdName = document.createElement("td")
    tdName.textContent = u["name"].split(" ")[0]
    const tdSurname = document.createElement("td")
    tdSurname.textContent = u["name"].split(" ")[1]
    const tdRole = document.createElement("td")
    tdRole.textContent = u["role"]
    const tdCompany = document.createElement("td")
    tdCompany.textContent = u["company"]


    const td = document.createElement("td")
    const changeSession = document.createElement("i")
    changeSession.setAttribute("class", "fa-solid fa-image-portrait")
    changeSession.setAttribute("user", u)
    
    const div = document.createElement("div")
    div.style.display = "flex"
    div.style.justifyContent = "space-around"

    const link = document.createElement("a")
    link.setAttribute("href", u["_id"])
    const detailUser = document.createElement("i")
    detailUser.setAttribute("class", "fa-solid fa-up-right-from-square")
    link.append(detailUser)
    div.append(changeSession, link)
    td.append(div)
    tr.append(tdName, tdSurname, tdRole, tdCompany, td)
    tbody.append(tr)
  }

})()

