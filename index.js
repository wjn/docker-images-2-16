import express from 'express';
const app = express();

app.get('/', (req, res) => {
  res.send("Hello y'all");
});

const server = app.listen(3000, () => {
  const { address, port } = server.address();
  console.log('Node app listening at http://%s:%s', address, port);
});
