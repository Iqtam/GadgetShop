//http://localhost:5000/api/v1/supplier

// libraries
const express = require("express");
const db_supplier = require("../../database/db-supplier.js");

// creating router
const router = express.Router({ mergeParams: true });


module.exports = router;