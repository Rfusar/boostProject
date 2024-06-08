  const ctxPie = document.getElementById('chartPie');

  new Chart(ctxPie, {
    type: 'doughnut',
    data: {
      labels: [
        'OK',
        'Error'
      ],
      datasets: [{
        label: 'Status Printer',
        data: [300, 50],
        backgroundColor: [
          "#3cff00",
          "#ff000d",
        ],
        borderWidth: 0,
        hoverOffset: 4
      }],
    },
    options: {
      cutout: "83%" // Imposta il ritaglio delle sezioni al 50% per rendere le sezioni più sottili
    }
  });
