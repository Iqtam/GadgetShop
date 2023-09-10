// libraries
const express = require("express");
const db_products = require("../../database/db-products");

// creating router
const router = express.Router({ mergeParams: true });

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
