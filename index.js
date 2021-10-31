const express = require('express');

require('dotenv').config();

const app = express();

const PORT = process.env.PORT || 4000;

app.get('/hello-world', (_req, res) => {
    return res.send('Hello form node js!');
})

app.listen(PORT, () => {
  console.log('server started at port' + PORT);
});
