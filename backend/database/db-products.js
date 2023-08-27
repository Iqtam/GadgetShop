const database = require("./create-and-executedb");

async function getAllProduct() {
  const sql = `
    SELECT *
    FROM Product
    `;
  const binds = {};
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows;
    } else {
      console.error("Query result is undefined.");
    }
  } catch (error) {
    console.error("An error occurred:", error);
  }
}
async function getAllCategories() {
  const sql = `
  SELECT *
  FROM CATEGORY
  WHERE CHILD_PARENT_CATEGORY_ID IS NOT NULL
  `;
  const binds = {};
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows;
    } else {
      console.error("Query result is undefined.");
    }
  } catch (error) {
    console.error("An error occurred:", error);
  }
}

async function getAllProductsByCategory(category) {
  const sql = `
  SELECT * 
  FROM PRODUCT P JOIN CATEGORY C ON(P.CATEGORY_ID=C.CATEGORY_ID)
  WHERE  LOWER(REPLACE(CATEGORY_NAME,' ','')) LIKE LOWER(REPLACE(:category,' ',''))
  `;
  const binds = {
    category: category,
  };
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows;
    } else {
      console.error("Query result is undefined.");
    }
  } catch (error) {
    console.error("An error occurred:", error);
  }
}
async function getLimitedProducts(limit) {
  const sql = `
  SELECT * 
  FROM PRODUCT P JOIN CATEGORY C ON(P.CATEGORY_ID=C.CATEGORY_ID)
  WHERE  (
    SELECT COUNT(*)
    FROM PRODUCT P2
    WHERE P2.CATEGORY_ID=P.CATEGORY_ID AND P2.PRODUCT_ID<=P.PRODUCT_ID
  )<=(:limit)/10
  `;
  const binds = {
    limit: limit,
  };
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows;
    } else {
      console.error("Query result is undefined.");
    }
  } catch (error) {
    console.error("An error occurred:", error);
  }
}
async function getProductBYId(id) {
  const sql = `
  SELECT * 
  FROM PRODUCT P JOIN CATEGORY C ON(P.CATEGORY_ID=C.CATEGORY_ID)
  WHERE P.PRODUCT_ID=:id
  `;
  const binds = {
    id: id,
  };
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows;
    } else {
      console.error("Query result is undefined.");
    }
  } catch (error) {
    console.error("An error occurred:", error);
  }
}

module.exports = {
  getAllProduct,
  getAllCategories,
  getAllProductsByCategory,
  getLimitedProducts,
  getProductBYId,
};
