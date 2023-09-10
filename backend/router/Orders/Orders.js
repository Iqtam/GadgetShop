//http://localhost:5000/api/v1/orders

// libraries
const express = require("express");
const db_order = require("../../database/db-order.js");

// creating router
const router = express.Router({ mergeParams: true });

router.get("/order=:id", async (req, res) => {
    const order_by_user = await db_cart.getOrderBYCustomer(req.params.id);
    console.log("order_by_user");
    res.json(order_by_user);
});

router.patch("/update-cart=:id", async (req, res) => {
    const update_cart_by_id = await db_cart.updateCartById(req.params.id, req.body);
    console.log("update_customer_by_id");
    res.json(update_cart_by_id);
});

router.post("/add", async (req, res) => {
    console.log(req.body);
    const add_to_cart = await db_cart.addToCart(req.body);
    console.log("add_to_cart");
    res.json(add_to_cart);
});

router.delete("/delete/:id1/:id2", async(req, res) => {
    const { id1, id2 } = req.params;
    const deletedItem = await db_cart.deleteFromCart(id1, id2);
    if(deletedItem) {
        res.status(200).json({ message: 'Cart item deleted successfully' });
    } else {
        res.status(404).json({ error: 'Cart item not deleted' });
    }
});

router.get('/shipping-method',async(req,res)=>{
    console.log("yes")
    res.send([{SHIPPING_ID:1,SHIPPING_NAME:"Courier",CHARGE:20},{SHIPPING_ID:2,SHIPPING_NAME:"Sundor Courier",CHARGE:30}])
    console.log("yes2");
});
router.post('/create-order',async(req,res)=>{
    console.log(req.body);
    res.send();
})



module.exports = router;

