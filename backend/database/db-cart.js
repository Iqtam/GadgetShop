const database = require("./create-and-executedb");

async function getCartBYCustomer(id) {
    const sql = `
    SELECT C.CUSTOMER_ID, CA.CART_ID, PC.PRODUCT_ID, P.TITLLE, PC.QUANTITY, PC.TOTAL_PRICE
    FROM CUSTOMER C
    JOIN CART CA ON (C.CUSTOMER_ID = CA.CUSTOMER_ID)
    JOIN PRODUCT_CART PC ON (PC.CART_ID = CA.CART_ID)
    JOIN PRODUCT P ON (P.PRODUCT_ID = PC.PRODUCT_ID)
    WHERE C.CUSTOMER_ID = :id
    `;
    const binds = {
      id: id
    };
    try {
      const result = await database.dbexecute(sql, binds, database.dboptions);
      if (result && result.rows) {
        return result.rows;
      } else {
        console.error("Query result is undefined.");
        return [];
      }
    } catch (error) {
      console.error("An error occurred:", error);
      throw error;
    }
}

async function updateCartById(id, updatedCartData) {
    const sql = `
    UPDATE PRODUCT_CART
    SET PRODUCT_ID = :product_id,
        QUANTITY = :quantity,
    WHERE CART_ID = :id
    `;
  
    const binds = {
        product_id: updatedCartData.PRODUCT_ID,
        quantity: updatedCartData.QUANTITY,
        id: id,
    };
    try {
      const result = await database.dbexecute(sql, binds, database.dboptions);
      console.log("What's wrong!");
      if (result) {
        return "Cart updated successfully";
      } else {
        console.error('Query result is undefined.');
      }
    } catch (error) {
      console.error('An error occurred:', error);
    }
}

async function addToCart(cartData) {
    const {QUANTITY, CART_ID, CUSTOMER_ID, PRODUCT_ID, SUPPLIER_ID} = cartData;
    console.log(cartData);
    const sql = `
    INSERT INTO PRODUCT_CART (QUANTITY, CART_ID, CUSTOMER_ID, PRODUCT_ID, SUPPLIER_ID) VALUES (:quantity, :cart_id, :customer_id, :product_id, :supplier_id)
    `;
    console.log(cartData);
  
    const binds = {
      quantity: QUANTITY,
      cart_id: CART_ID,
      customer_id: CUSTOMER_ID,
      product_id: PRODUCT_ID,
      supplier_id: SUPPLIER_ID
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

async function deleteFromCart(product_id, cart_id) {
  
    const sql = `
    DELETE FROM PRODUCT_CART 
    WHERE PRODUCT_ID = :product_id AND CART_ID = :cart_id
    `;
    try {
        const result = await database.dbexecute(sql, { product_id, cart_id }, database.dboptions);
        console.log(result.rows);

        if (result.rowsAffected === 1) {
            return "successful"
        } else {
            throw new Error("Product not found in the cart");
        }
    } catch (error) {
            console.error("An error occured:", error);
    }
}

module.exports = {
  getCartBYCustomer,
  updateCartById,
  addToCart,  
  deleteFromCart,
};