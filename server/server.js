
const path = require('path');
const express = require('express');

const app = express();

const routes = require('./routes');

app.use('/api', routes);

app.use(express.static(path.resolve(__dirname, 'public')));

const port = 8000;
app.listen(port, () => {
    console.log(`Server started listening port ${port}`);
});
