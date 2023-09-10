const database = require("./create-and-executedb");

async function getOrderBYCustomer(id) {
    const sql = `
    SELECT O.ORDER_ID, O.ORDER_DATE, O.HOUSE, O.ROAD, O.AREA, O.CITY, O.STATE, O.CART_ID

    SELECT C.CUSTOMER_ID, CA.CART_ID, PC.PRODUCT_ID, P.TITLLE, PC.QUANTITY, (PC.QUANTITY*P.PRICE) AS TOTAL_PRICE
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


module.exports = {
  getOrderBYCustomer,
  updateOrderById, 
  createOrder,  
  deleteOrder,
};

SUPPLIER ER ORDER DEKHA
TRACKING ORDER UPDATE 
