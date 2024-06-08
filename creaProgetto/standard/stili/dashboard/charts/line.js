const ctxLine = document.querySelector("#chartLine");

(async ()=>{
  let res = await fetch("/datiGrafico", {method: "POST"})
  res = await res.json()

  new Chart(ctxLine, {
      type: "line",
      data: {
          labels: ["Mon", "Tue", "Wes", "Thu", "Fri", "Sat", "Sun"],
          datasets: [{
              label: 'Email',
              data: res["Line"],
              borderWidth: 3,
            fill: {
              target: 'origin',
              above: 'rgba(35, 23, 173, .3)',
            },
            tension: .3,
            pointStyle: false,
        }]
      },
      options: {
          responsive: true,
          maintainAspectRatio: false, 
          scales: {
              x: { 
                grid: {display: false}
              },
              y: {
                grid: {display: true},
                beginAtZero: false
              }
          }
      }
  });
})()
