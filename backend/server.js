require("dotenv").config();

const app = require("./app");
const database = require("./database/create-and-executedb");
const run = database.dbexecute;
const format = database.dboptions;

process.env.UV_THREADPOOL_SIZE = 10;

const port = 5000;
// app.get("/api/v1/hotash/:hotashID", async(req,res)=>{
//   const hotashID = req.params.hotashID;
//   console.log(hotashID);
//   const data = await run(`SELECT *
//   FROM PRODUCT 
//   WHERE PRODUCT_ID = '${hotashID}'`, [], format);
//   if(!data){
//     res.status(404);
//     throw new Error("Error getting data from database");
//   }
//   res.status(200).json(data.rows);
// })

// app.post("/api/v1/hotash", async(req,res)=>{
//   const supplierID = req.query.supplier_id;
//   const categoryID = req.query.category_id;
//   const data = await run(`SELECT PRODUCT_ID
//   FROM PRODUCT 
//   WHERE SUPPLIER_ID = '${supplierID}' OR CATEGORY_ID = '${categoryID}'`, [], format);
//   if(!data){
//     res.status(404);
//     throw new Error("Error getting data from database");
//   }
//   res.status(200).json(data.rows);
// })

// app.post("/api/v1/bodytest", async(req,res)=>{
//   const supplierID = req.body.supplier_id;
//   const categoryID = req.body.category_id;
//   const data = await run(`SELECT PRODUCT_ID
//   FROM PRODUCT 
//   WHERE SUPPLIER_ID = '${supplierID}' OR CATEGORY_ID = '${categoryID}'`, [], format);
//   if(!data){
//     res.status(404);
//     throw new Error("Error getting data from database");
//   }
//   res.status(200).json(data.rows);
// })
app.listen(port, async () => {
  try {
    await database.dbstart();
    console.log(`listening on http://localhost:${port}`);
  } catch (err) {
    console.log("Error starting up database: " + err);
    process.exit(1);
  }
});

process
  .once("SIGTERM", database.dbshutdown)
  .once("SIGINT", database.dbshutdown);
