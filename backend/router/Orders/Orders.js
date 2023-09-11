//http://localhost:5000/api/v1/orders

// libraries
const express = require("express");
const db_order = require("../../database/db-order.js");

// creating router
const router = express.Router({ mergeParams: true });

//Done
router.get("/customer=:id", async (req, res) => {
    const order_by_user = await db_order.getOrderBYCustomer(req.params.id);
    console.log("order_by_user");
    res.json(order_by_user);
});

//Done
router.get("/supplier-orders=:id", async (req, res) => {
    const order_by_supplier = await db_order.getOrderBySupplier(req.params.id);
    console.log("order_by_supplier");
    res.json(order_by_supplier);
});

router.patch("/update-order-tracking=:id", async (req, res) => {
    const update_tracking_by_id = await db_order.updateOrderTrackingById(req.params.id, req.body);
    console.log("update_tracking_by_id");
    res.json(update_tracking_by_id);
});

//Done
router.get('/shipping-method/:id', async (req,res) => {
    const shipping_method_for_order = await db_order.getShippingMethodByOrder(req.params.id);
    console.log(shipping_method_for_order);
    res.json(shipping_method_for_order);
});

//Done
router.post('/create-order',async(req,res)=>{
    console.log(req.body);
    const create_order = await db_order.createOrder(req.body);
    console.log("create_order");
    res.json(create_order);
});

module.exports = router;
