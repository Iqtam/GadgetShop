// libraries
const express = require("express");
const db_products = require("../../database/db-products");

// creating router
const router = express.Router({ mergeParams: true });

router.get("/categories", async (req, res) => {
  const all_categories = await db_products.getAllCategories();
  console.log("all categories");
  res.json(all_categories);
});

router.get("/category/:category", async (req, res) => {
  const productsOfcategory = await db_products.getAllProductsByCategory(
    req.params.category
  );
  console.log("productsOfcategory");
  // console.log(productsOfcategory)
  res.json(productsOfcategory);
});
router.get("/limit=:limit", async (req, res) => {
  const limited_products = await db_products.getLimitedProducts(
    req.params.limit
  );
  console.log("limited_products");
  res.json(limited_products);
});

router.get("/supplierId=:supplierId", async (req, res) => {
  const productsOfSupplier = await db_products.getAllProductsBySupplier(
    req.params.supplierId );
  // console.log(productsOfSupplier);
  console.log("productsOfSupplier");
  res.json(productsOfSupplier);
});

router.get("/search", async(req, res) => {
  console.log(req.query)
  const  {q}  = req.query;
  if(!q) {
    return res.status(400).json({error: "Missing search query"});
  }

  const searchResults = await db_products.searchProducts(q);
  console.log(searchResults);
  res.status(200).json(searchResults);
});
 
router.get("/:id", async (req, res) => {
  const product_by_id = await db_products.getProductBYId(req.params.id);
  // const DISCOUNTED_PRICE=100;
  // const PERCENT_DISCOUNT=10;
  // product_by_id={...product_by_id,DISCOUNTED_PRICE,PERCENT_DISCOUNT}
  product_by_id[0].DISCOUNTED_PRICE=100;
  product_by_id[0].PERCENT_DISCOUNT=10;
  console.log(product_by_id);
  console.log("product_by_id");
  res.json(product_by_id);
});



///FUAD FUAD next er gula kor
router.post("/create-product", async (req, res) => {
  const create_product = await db_products.createProduct(req.body);/// database er product e lekhbi
  console.log("create_product");
  res.json(create_product);
});
router.patch("/update-productid=:id", async (req, res) => {
  const update_product_by_id = await db_products.updateProductBYId(req.params.id);/// database er product e lekhbi
  console.log("update_product_by_id");
  res.json(update_product_by_id);
});

router.get("/brands", async (req, res) => {
  const all_brands = await db_products.getAllBrands();/// database er product e lekhbi
  console.log("all brands");
  res.json(all_brands);
});
router.get("/riviews/:id",async(req,res)=>{
  res.send([{ RATINGS: 3, COMMENTS:"this is good",CUSTOMER_NAME:"MD.tamim iqbal"}, {RATINGS: 4, COMMENTS:"this is good",CUSTOMER_NAME:"MD.tamim iqbal"}])
  
})
router.get("/", async (req, res) => {
  const products_by_filter = await db_products.getAllProductsByFilter();/// database er product e lekhbi fetchall porducts er moto
  console.log("products_by_filter");
  res.json(products_by_filter);
});


// exports.fetchAllProducts = async (req, res) => {
//   // filter = {"category":["smartphone","laptops"]}
//   // sort = {_sort:"price",_order="desc"}
//   // pagination = {_page:1,_limit=10}
//   let condition = {}
//   if(!req.query.admin){
//       condition.deleted = {$ne:true}
//   }
  
//   let query = Product.find(condition);
//   let totalProductsQuery = Product.find(condition);

//   console.log(req.query.category);

//   if (req.query.category) {
//     query = query.find({ category: {$in:req.query.category.split(',')} });
//     totalProductsQuery = totalProductsQuery.find({
//       category: {$in:req.query.category.split(',')},
//     });
//   }
//   if (req.query.brand) {
//     query = query.find({ brand: {$in:req.query.brand.split(',')} });
//     totalProductsQuery = totalProductsQuery.find({ brand: {$in:req.query.brand.split(',') }});
//   }
//   if (req.query._sort && req.query._order) {
//     query = query.sort({ [req.query._sort]: req.query._order });
//   }

//   const totalDocs = await totalProductsQuery.count().exec();
//   console.log({ totalDocs });

//   if (req.query._page && req.query._limit) {
//     const pageSize = req.query._limit;
//     const page = req.query._page;
//     query = query.skip(pageSize * (page - 1)).limit(pageSize);
//   }

//   try {
//     const docs = await query.exec();
//     res.set('X-Total-Count', totalDocs);
//     res.status(200).json(docs);
//   } catch (err) {
//     res.status(400).json(err);
//   }
// };


module.exports = router;
