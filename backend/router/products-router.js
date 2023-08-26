const express = require("express");
const router = express.Router({ mergeParams: true });
const db_products = require("../database/db-products");

router.get("/", async (req, res) => {
  const all_products = await db_products.getAllProduct();
  console.log("all products");
  res.json(all_products);
});

module.exports = router;
