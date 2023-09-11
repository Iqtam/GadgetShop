const database = require("./create-and-executedb");

async function getOrderBYCustomer(id) {
    const sql = `
    SELECT O.ORDER_ID, O.ORDER_DATE, O.HOUSE, O.ROAD, O.AREA, O.CITY, O.STATE, O.CART_ID, S.SHIPPING_NAME, S.CHARGE, PC.PRODUCT_ID, P.TITLLE, PC.QUANTITY, PC.TOTAL_PRICE, P.IMAGE, P.BRAND
    FROM ORDERS O 
    JOIN SHIPPING_METHOD S ON (S.SHIPPING_ID = O.SHIPPING_ID)
    JOIN PRODUCT_CART PC ON (PC.CART_ID = O.CART_ID)
    JOIN PRODUCT P ON (P.PRODUCT_ID = PC.PRODUCT_ID)
    WHERE O.CUSTOMER_ID = :id
    ORDER BY O.ORDER_DATE DESC
    `;
    const binds = {
      id: id
    };
    try {
      const result = await database.dbexecute(sql, binds, database.dboptions);
      if (result) {
        return result.rows;
      } else {
        console.error("Query result is undefined.");
        return [];
      }
    } catch (error) {
      console.error("An error occurred:", error);
      throw error;
    }
    
    // const sql = `
    // SELECT O.ORDER_ID, O.ORDER_DATE, O.HOUSE, O.ROAD, O.AREA, O.CITY, O.STATE,
    // O.CART_ID, S.SHIPPING_NAME, S.CHARGE,
    // PC.PRODUCT_ID, P.TITLLE, P.BRAND, PC.QUANTITY, PC.TOTAL_PRICE,
    // P.IMAGE
    // FROM ORDERS O 
    // JOIN ORDER_TRACKING OT ON (OT.ORDER_ID = O.ORDER_ID)
    // JOIN SHIPPING_METHOD S ON (S.SHIPPING_ID = O.SHIPPING_ID)
    // JOIN PRODUCT_CART PC ON (PC.CART_ID = O.CART_ID)
    // JOIN PRODUCT P ON (P.PRODUCT_ID = PC.PRODUCT_ID)
    // WHERE O.CUSTOMER_ID = :id
    // ORDER BY O.ORDER_DATE DESC
    // `;

    // const binds = {
    //   id: id
    // };
    // try {
    //   const results = await database.dbexecute(sql, binds, database.dboptions);

    //   const formattedData = [];
    //   const ordersMap = new Map();

    //   results.forEach((row) => {
    //     const orderId = row.ORDER_ID;

    //     if (!ordersMap.has(orderId)) {
    //       // Initialize a new order
    //       const order = {
    //         ORDER_ID: row.ORDER_ID,
    //         STATUS: row.STATUS, // You should include the status in the SQL query
    //         items: [],
    //         TOTAL_AMOUNT: 0, // You should calculate the total amount
    //         address: {
    //           HOUSE: row.HOUSE,
    //           ROAD: row.ROAD,
    //           AREA: row.AREA,
    //           CITY: row.CITY,
    //           STATE: row.STATE,
    //         },
    //       };
    //       ordersMap.set(orderId, order);
    //       formattedData.push(order);
    //     }

    //     // Add product details to the order
    //     const product = {
    //       PRODUCT_ID: row.PRODUCT_ID,
    //       IMAGE: row.IMAGE,
    //       TITLLE: row.TITLLE,
    //       BRAND: row.BRAND,
    //       QUANTITY: row.QUANTITY,
    //       TOTAL_PRICE: row.TOTAL_PRICE,
    //     };

    //     ordersMap.get(orderId).items.push(product);
    //     ordersMap.get(orderId).TOTAL_AMOUNT += row.TOTAL_PRICE;
    //   });

    //   const TOTAL_ITEMS = formattedData.length;

    // // Create the final JSON structure
    //   const jsonData = {
    //     orders: formattedData,
    //     TOTAL_ITEMS,
    //   };
  
    //   return jsonData;
    // } catch (error) {
    //   console.error("An error occurred:", error);
    //   throw error;
    // }
}

async function getOrderBySupplier(id) {
  const sql = `
  SELECT O.ORDER_ID, O.ORDER_DATE, O.HOUSE, O.ROAD, O.AREA, O.CITY, O.STATE, O.CART_ID, S.SHIPPING_NAME, S.CHARGE, PC.PRODUCT_ID, P.TITLLE, PC.QUANTITY, PC.TOTAL_PRICE, P.IMAGE, P.BRAND
  FROM ORDERS O 
  JOIN SHIPPING_METHOD S ON (S.SHIPPING_ID = O.SHIPPING_ID)
  JOIN PRODUCT_CART PC ON (PC.CART_ID = O.CART_ID)
  JOIN PRODUCT P ON (P.PRODUCT_ID = PC.PRODUCT_ID)
  WHERE PC.SUPPLIER_ID = :id
  ORDER BY O.ORDER_DATE DESC
  `;
  const binds = {
    id: id
  };
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    console.log("FUAD");
    if (result) {
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

async function getShippingMethodByOrder(id) {
  const sql = `
  SELECT S.SHIPPING_ID,
  S.SHIPPING_NAME,
  S.CHARGE 
  FROM SHIPPING_METHOD
  JOIN ORDERS O ON (O.SHIPPING_ID = S.SHIPPING_ID)
  WHERE O.ORDER_ID = :id
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

async function createOrder(orderData) {
  const {ORDER_ID, ORDER_DATE, HOUSE, ROAD, AREA, CITY, STATE, CART_ID, CUSTOMER_ID, SHIPPING_ID} = orderData;
  console.log(orderData);
  const sql = `
  INSERT INTO ORDERS (ORDER_ID, ORDER_DATE, HOUSE, ROAD, AREA, CITY, STATE, CART_ID, CUSTOMER_ID, SHIPPING_ID)
  VALUES (:order_id, :order_date, :house, :road, :area, :city, :state, :cart_id, :customer_id, :shipping_id)
  `;

  const binds = {
    order_id: ORDER_ID,
    order_date: ORDER_DATE,
    house: HOUSE,
    road: ROAD,
    area: AREA,
    city: CITY,
    state: STATE,
    cart_id: CART_ID,
    customer_id: CUSTOMER_ID,
    shipping_id: SHIPPING_ID
  };
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows[0];
    } else {
      console.error("Query result is undefined.");
    }
  } catch (error) {
    console.error("An error occurred:", error);
  }
}

async function updateOrderTrackingById(id, updateShippingData) {
  const sql = `
    UPDATE ORDER_TRACKING 
    SET STATUS = :shipping_status
    WHERE ORDER_ID = :id
  `;

  const binds = {
    shipping_status: updateShippingData.STATUS,
    id: id
  };

  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return "Shipping status updated successfully";
    } else {
      return "Query result is undefined.";
    }
  } catch (error) {
    console.error('An error occurred:', error);
  }
}



module.exports = {
  getOrderBYCustomer,
  getOrderBySupplier,
  getShippingMethodByOrder,
  createOrder, 
  updateOrderTrackingById,
};