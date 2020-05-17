
const express = require('express');
const app = express();

app.use(express.static(__dirname + '/public', {
  setHeaders: function(res, path) {
    console.log(path);
  }
}));
/*
app.use(function(req, res, next) {
  console.log(arguments);
});
*/


app.listen(8080);
