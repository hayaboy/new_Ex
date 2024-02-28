document.addEventListener('DOMContentLoaded', function () {
    // Fetch stock data (you can replace this with your own data)
    // For example, you can use a financial API to get historical stock prices
    const stockData = [
      { date: '2024-01-01', open: 100, high: 110, low: 95, close: 105 },
      { date: '2024-01-02', open: 105, high: 115, low: 100, close: 112 },
      // Add more data points as needed
    ];
  
    // Extracting labels and data from stockData
    const labels = stockData.map(item => item.date);
    const data = stockData.map(item => ({ o: item.open, h: item.high, l: item.low, c: item.close }));
  
    // Create a context for the canvas
    const ctx = document.getElementById('stockChart').getContext('2d');
  
    // Create the chart
    const stockChart = new Chart(ctx, {
      type: 'candlestick',
      data: {
        labels: labels,
        datasets: [{
          label: 'Stock Chart',
          data: data,
        }]
      },
    });
  });
  