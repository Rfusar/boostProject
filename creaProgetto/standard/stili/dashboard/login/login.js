document.querySelector("#cardCampiLogin").addEventListener("submit", async function(event){
    event.preventDefault()
    const form = new FormData(this)
    let r = await fetch("/fetchLogin", {
      method: "POST",
      body: form
    })
    if (r.status != 200){
      r = await r.json()
      window.alert(r["res"])
    }
    else{
      r = await r.json()
      window.location.href = r["res"]
    }
    
    
})
