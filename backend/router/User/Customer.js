//http://localhost:5000/api/v1/customer

// libraries
const express = require("express");
const db_customer = require("../../database/db-customer.js");

// creating router
const router = express.Router({ mergeParams: true });

router.get("/customer=:id", async (req, res) => {
    const user_by_id = await db_customer.getUserBYId(req.params.id);
    console.log("user_by_id");
    res.json(user_by_id);
});

router.patch("/update-customer=:id", async (req, res) => {
    let update_customer_by_id = await db_customer.updateCustomerById(req.params.id, req.body);
    update_customer_by_id = await db_customer.updateContactById(req.params.id, req.body);
    console.log("update_customer_by_id");
    res.json(update_customer_by_id);
});

module.exports = router;