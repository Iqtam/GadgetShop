//http://localhost:5000/api/v1/products

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
  const q  = req.query;
  if(!q) {
    return res.status(400).json({error: "Missing search query"});
  }

  const searchResults = await db_products.searchProducts(q);
  console.log(searchResults);
  res.status(200).json(searchResults);
});

router.post("/create-product", async (req, res) => {
  console.log(req.body);
  const create_product = await db_products.createProduct(req.body);
  console.log("create_product");
  res.json(create_product);
});

router.patch("/update-productid=:id", async (req, res) => {
  const update_product_by_id = await db_products.updateProductById(req.params.id, req.body);
  console.log("update_product_by_id");
  res.json(update_product_by_id);
});

router.get("/brands", async (req, res) => {
  const all_brands = await db_products.getAllBrands();
  console.log("all brands");
  res.json(all_brands);
});

router.get("/:id", async (req, res) => {
  const product_by_id = await db_products.getProductBYId(req.params.id);
  console.log("product_by_id");
  res.json(product_by_id);
});

router.get("/", async (req, res) => {
  const products_by_filter = await db_products.getAllProductsByFilter(req.body);
  console.log("products_by_filter");
  res.json(products_by_filter);
});

router.get("/reviews/:id", async (req, res) => {
  const product_review = await db_products.getReviewById(req.params.id);
  console.log("product_review");
  res.json(product_review);
});

router.delete("/delete-product/:id", async(req, res) => {
  const delete_product = await db_products.deleteProduct(req.params.id);
  console.log("delete_product");
  if(!delete_product) {
    
    res.status(200).json(delete_product);
  } else {
    res.status(404)
  }
});



module.exports = router;
