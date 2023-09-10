// libraries
const express = require('express');


const router = express.Router({mergeParams : true});
const productRouter = require('./Products/products');
const authenticationRouter=require('./Authentication/Authentication');
const orderRouter = require('./Orders/Orders');
const customerRouter = require('./User/Customer');
const supplierRouter = require('./User/Supplier');
const cartRouter = require('./cart/cart');



// ROUTE: home page
router.get('/', async (req, res) =>{
  
    

});



// setting up sub-routers
router.use('/products', productRouter);
router.use('/auth',authenticationRouter);
router.use('/orders', orderRouter);
router.use('/customer', customerRouter);
router.use('/supplier', supplierRouter);
router.use('/cart', cartRouter);



module.exports = router;