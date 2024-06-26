const express = require('express');
const app = express();
const port = 3000;

// Endpoint /index.html
app.get('/index.html', (req, res) => {
  res.send('<html><body><h1>Welcome to my Node App</h1></body></html>');
});

// Endpoint /health/check
app.get('/health/check', (req, res) => {
  res.status(200).send('OK');
});

// Inicia o servidor na porta especificada
app.listen(port, () => {
  console.log(`App running at http://localhost:${port}`);
});
