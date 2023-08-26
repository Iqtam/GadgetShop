const express = require("express");
const bcrypt = require("bcrypt");
const bodyParser = require("body-parser");
const morgan = require("morgan");

const indexrouter = require("./router/indexrouter");
const api = "/api/v1";
const app = express();
//CORS
app.use((req, res, next) => {
  res.setHeader("Access-Control-Allow-Origin", "http://localhost:4000");
  res.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
  res.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization");
  next();
});
app.use(bodyParser.json());
app.use(morgan("tiny"));

app.use(`${api}`, indexrouter);

app.get("/", (req, res) => {
  res.send("Hi this is app.js");
});

module.exports = app;
