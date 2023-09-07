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

async function getAllProductsBySupplier(supplierId) {
  const sql = `
  SELECT * 
  FROM PRODUCT P JOIN CATEGORY C ON(P.CATEGORY_ID=C.CATEGORY_ID)
  WHERE  P.SUPPLIER_ID=:supplierId
  `;
  const binds = {
    supplierId: supplierId,
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


async function searchProducts(searchQuery) {
  const sql = `
  SELECT *
  FROM PRODUCT P 
  JOIN SUPPLIER S ON (S.SUPPLIER_ID = P.SUPPLIER_ID) JOIN CATEGORY C ON (C.CATEGORY_ID = P.CATEGORY_ID)
  WHERE LOWER(P.TITLLE) LIKE :searchQuery
  OR LOWER(S.COMPANY_NAME) LIKE :searchQuery
  OR LOWER(C.CATEGORY_NAME) LIKE :searchQuery
  `;
  const binds = {
    searchQuery: `%${searchQuery.toLowerCase()}%`,
  };
  console.log(searchQuery);

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

async function createProduct(productData) {
  const {PRODUCT_ID, TITLLE, PRICE, STOCK, DESCRIPTION, IMAGE, SUPPLIER_ID, CATEGORY_ID, BRAND} = productData;
  console.log(productData);
  const sql = `
  INSERT INTO PRODUCT (PRODUCT_ID, TITLLE, PRICE, STOCK, DESCRIPTION, IMAGE, SUPPLIER_ID, CATEGORY_ID, BRAND) VALUES (:product_id, :titlle, :price, :stock, :description, :image, :supplier_id, :category_id, :brand)
  `;
  console.log(productData);

  const binds = {
    product_id: PRODUCT_ID,
    titlle: TITLLE,
    price: PRICE,
    stock: STOCK,
    description: DESCRIPTION,
    image: IMAGE,
    supplier_id: SUPPLIER_ID,
    category_id: CATEGORY_ID,
    brand: BRAND
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

async function updateProductById(id, updatedProductData) {
  const sql = `
    UPDATE PRODUCT
    SET TITLLE = :titlle, PRICE = :price, STOCK = :stock, DESCRIPTION = :description, IMAGE = :image,  BRAND = :brand
    WHERE PRODUCT_ID = :id
  `;

  const binds = {
    titlle: updatedProductData.TITLLE,
    price: updatedProductData.PRICE,
    stock: updatedProductData.STOCK,
    description: updatedProductData.DESCRIPTION,
    image: updatedProductData.IMAGE,
    brand: updatedProductData.BRAND,
    id: id,
  };

  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows;
    } else {
      console.error('Query result is undefined.');
    }
  } catch (error) {
    console.error('An error occurred:', error);
  }
}

async function getAllBrands() {
  const sql = `
  SELECT DISTINCT BRAND
  FROM PRODUCT 
  `;
  const binds = {};
  console.log("Hello");
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if(result){
      return result.rows;
    } else {
      console.error("Query result is undefined.");
    }
  } catch(error) {
    console.error("An error occurred: ", error);
  }
}

async function getAllProductsByFilter(filter = {}) {
  let sql = `
    SELECT *
    FROM PRODUCT P 
    JOIN SUPPLIER S ON (S.SUPPLIER_ID = P.SUPPLIER_ID) 
    JOIN CATEGORY C ON (C.CATEGORY_ID = P.CATEGORY_ID)
    WHERE 1=1 
  `;

  const binds = {};

  if (filter.category) {
    sql += ` AND LOWER(REPLACE(C.CATEGORY_NAME, ' ', '')) LIKE LOWER(:categoryWithWildcards)`;
    binds.categoryWithWildcards = `%${filter.category.toLowerCase()}%`;
  }

  if (filter.brand) {
    sql += ` AND LOWER(P.BRAND) LIKE LOWER(:brandWithWildcards)`;
    binds.brandWithWildcards = `%${filter.brand.toLowerCase()}%`;
  }

  if (filter.priceMin) {
    sql += ` AND P.PRICE >= :priceMin`;  
    binds.priceMin = filter.priceMin;
  }

  if (filter.priceMax) {
    sql += ` AND P.PRICE <= :priceMax`;
    binds.priceMax = filter.priceMax;
  }

  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows;
    } else {
      console.error('Query result is undefined.');
      return [];
    }
  } catch (error) {
    console.error('An error occurred:', error);
    return [];
  }
}

module.exports = {
  getAllProduct,
  getAllCategories,
  getAllProductsByCategory,
  getLimitedProducts,
  getProductBYId,
  getAllProductsBySupplier,
  searchProducts,
  createProduct,
  updateProductById,
  getAllBrands,
  getAllProductsByFilter,
};
