const ctxPie = document.getElementById('chartPie');
function createChart(){
  return new Chart(ctxPie, {
    type: 'doughnut',
    data: {
      labels: ['Success','Error'],
      datasets: [{
        label: 'Status Printer',
        data: [
          Number(document.querySelector("#emailSuccess").textContent), 
          Number(document.querySelector("#emailError").textContent)
        ],
        backgroundColor: [
            getComputedStyle(document.documentElement).getPropertyValue('--bg-success-status'),
            getComputedStyle(document.documentElement).getPropertyValue('--bg-error-status'),
        ],
        borderWidth: 0,
        hoverOffset: 4
      }],
    },
    options: {
        cutout: "83%",
        plugins: {
            legend: {
                display: true,
                labels: {
                    color: getComputedStyle(document.documentElement).getPropertyValue('--text-base1')
                }
            },
            tooltip: {
                enabled: true
            }
        }
    }
  });
}
//Aggorina i colori
let chart = createChart()
function updateChartColors() {
    if(chart){chart.destroy()}
    chart = createChart()
}
