const express = require("express");
const router = express.Router({ mergeParams: true });
const db_customer = require("../database/db-customer");

router.get("/", async (req, res) => {
  const all_customer = await db_customer.getAllCustomer();
  console.log("all customer");
  res.json(all_customer);
});

module.exports = router;
