//http://localhost:5000/api/v1/cart

// libraries
const express = require("express");
const db_cart = require("../../database/db-cart.js");

// creating router
const router = express.Router({ mergeParams: true });

router.get("/customer/:id", async (req, res) => {
    const cart_by_user = await db_cart.getCartBYCustomer(req.params.id);
    console.log("cart_by_user");
    res.json(cart_by_user);
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

router.delete("/delete", async(req, res) => {
    const {product_id, cart_id} = req.query;
    console.log(product_id, cart_id);
    const deletedItem = await db_cart.deleteFromCart(product_id, cart_id);
    if(deletedItem !== null) {
        res.status(200).json({ message: 'Cart item deleted successfully' });
    } else {
        res.status(404).json({ error: 'Cart item not deleted' });
    }
});

module.exports = router;