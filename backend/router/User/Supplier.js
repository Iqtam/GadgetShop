//http://localhost:5000/api/v1/supplier

// libraries
const express = require("express");
const db_supplier = require("../../database/db-supplier.js");

// creating router
const router = express.Router({ mergeParams: true });

router.get("/supplier=:id", async (req, res) => {
    const supplier_by_id = await db_supplier.getsupplierBYId(req.params.id);
    console.log("supplier_by_id");
    res.json(supplier_by_id);
});

router.patch("/update-supplier=:id", async (req, res) => {
    const update_supplier_by_id = await db_supplier.updateSupplierById(req.params.id, req.body);
    console.log("update_supplier_by_id");
    res.json(update_supplier_by_id);
});

module.exports = router;