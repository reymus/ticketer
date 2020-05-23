

const fromQuery = (req, param) => {
  if (req.query) {
    return req.query[param];
  } else {
    return null;
  }
};

module.exports = {
  fromQuery
};