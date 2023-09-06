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
router.get("/limit=:limit",async(req,res)=>{
  const limited_products = await db_products.getLimitedProducts(
    req.params.limit
  );
  console.log("limited_products");
  res.json(limited_products);
});
router.get("/:id",async(req,res)=>{
  const product_by_id = await db_products.getProductBYId(
    req.params.id
  );
  console.log("product_by_id");
  res.json(product_by_id);
});

module.exports = router;
