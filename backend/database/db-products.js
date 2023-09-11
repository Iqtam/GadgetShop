const database = require("./create-and-executedb");

async function getAllProduct() {
  const sql = `
    SELECT P.PRODUCT_ID, 
    P.TITLLE, 
    P.PRICE, 
    P.STOCK, 
    P.DESCRIPTION, 
    P.IMAGE, 
    P.CATEGORY_ID, 
    P.BRAND, 
    CASE 
      WHEN SYSDATE BETWEEN O.START_DATE AND O.END_DATE THEN O.PERCENT_DISCOUNT ELSE 0 
    END AS PERCENT_DISCOUNT, 
    CASE 
      WHEN SYSDATE BETWEEN O.START_DATE AND O.END_DATE THEN P.PRICE*(1-(O.PERCENT_DISCOUNT/100)) ELSE P.PRICE 
    END AS DISCOUNTED_PRICE 
    FROM PRODUCT P 
    JOIN CATEGORY C ON(P.CATEGORY_ID=C.CATEGORY_ID)
    JOIN PRODUCT_OFFER PO ON (P.PRODUCT_ID = PO.PRODUCT_ID)
    JOIN OFFER O ON(O.OFFER_ID = PO.OFFER_ID)
    ORDER BY PRODUCT_ID
    `;
  const binds = {};
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    console.log(result);
    if (result) {
      return result.rows;
    } else {
      console.error("Query result is undefined.");
      return null;
    }
  } catch (error) {
    console.error("An error occurred:", error);
    throw error;
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
  SELECT P.PRODUCT_ID, 
  P.TITLLE, 
  P.PRICE, 
  P.STOCK, 
  P.DESCRIPTION, 
  P.IMAGE, 
  P.CATEGORY_ID, 
  P.BRAND, 
  CASE 
    WHEN SYSDATE BETWEEN O.START_DATE AND O.END_DATE THEN O.PERCENT_DISCOUNT ELSE 0 
  END AS PERCENT_DISCOUNT, 
  CASE 
    WHEN SYSDATE BETWEEN O.START_DATE AND O.END_DATE THEN P.PRICE*(1-(O.PERCENT_DISCOUNT/100)) ELSE P.PRICE 
  END AS DISCOUNTED_PRICE 
  FROM PRODUCT P 
  JOIN CATEGORY C ON(P.CATEGORY_ID=C.CATEGORY_ID)
  JOIN PRODUCT_OFFER PO ON (P.PRODUCT_ID = PO.PRODUCT_ID)
  JOIN OFFER O ON(O.OFFER_ID = PO.OFFER_ID)
  WHERE P.PRODUCT_ID = :id
  `;
  const binds = {
    id: id,
  };
  console.log(binds);
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    console.log(result);
    if (result) {
      return result.rows;
    } else {
      console.error("Query result is undefined.");
      return null;
    }
  } catch (error) {
    console.error("An error occurred:", error);
    throw error;
  }
}


async function searchProducts(searchQuery) {
  const sql = `
  SELECT *
  FROM PRODUCT
  WHERE LOWER(TITLLE) LIKE :searchQuery
  OR LOWER(BRAND) LIKE :searchQuery
  OR LOWER(DESCRIPTION) LIKE :searchQuery
  `;
  const binds = {
    searchQuery: `%${searchQuery.text?.toLowerCase()}%`,
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

async function getReviewById(id) {
  const sql = `
  SELECT R.RATINGS,
  R.COMMENTS,
  (C.FIRST_NAME || ' ' || C.LAST_NAME) AS CUSTOMER_NAME
  FROM REVIEWS R 
  JOIN CUSTOMER C ON (C.CUSTOMER_ID = R.CUSTOMER_ID)
  WHERE R.PRODUCT_ID = :id
  `;
  const binds = {
    id: id,
  }
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows;
    } else {
      console.error("Query result is undefined.");
      return null;
    }
  } catch (error) {
    console.error("An error occurred:", error);
    throw error;
  }
}

async function deleteProduct(id) {
  const relatedTables = ["PRODUCT_FEATURES", "PRODUCT_OFFER", "PRODUCT_CART"]
  console.log("AMAR");
  try {
      for(const tableName of relatedTables){
        const deleteSql = `
        DELETE FROM ${tableName}
        WHERE PRODUCT_ID = :id
        `;

        await database.dbexecute(deleteSql, { id }, database.dboptions);
      }

      const sql = `
      DELETE FROM PRODUCT
      WHERE PRODUCT_ID = :id
      `;

      const result = await database.dbexecute(sql, { id }, database.dboptions);
      console.log("hjhgf" , result.rows);

      if (result.rowsAffected === 1) {
          return "successful";
      } else {
          throw new Error("Product not found in the cart");
      }
  } catch (error) {
      console.error("An error occured:", error);      
      return null;
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
  getReviewById,
  deleteProduct
};