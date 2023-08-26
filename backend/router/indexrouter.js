// libraries
const express = require('express');


const router = express.Router({mergeParams : true});
const productRouter = require('./Products/products');




// ROUTE: home page
router.get('/', async (req, res) =>{
  
    

});



// setting up sub-routers

router.use('/products', productRouter);




module.exports = router;