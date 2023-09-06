const database = require("./create-and-executedb");

async function getAllCustomer() {
  const sql = `
    SELECT *
    FROM Customer
    `;
  const binds = {};
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
async function getCustomerEmailValidation(email) {
  const sql = `
    SELECT CUSTOMER_EMAIL_VALIDATION(:email) AS IS_VALID
    FROM DUAL
    `;
  const binds = {
    email:email,
  };
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows[0].IS_VALID;
    } else {
      console.error('Query result is undefined.');
    }
  } catch (error) {
    console.error('An error occurred:', error);
  }
}
async function getCustomerByEmail(email) {
  const sql = `
    SELECT * FROM CUSTOMER C
    WHERE C.EMAIL=:email 
    `;
  const binds = {
    email:email,
    
  };
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows[0];
    } else {
      console.error('Query result is undefined.');
    }
  } catch (error) {
    console.error('An error occurred:', error);
  }
}



async function createCustomer(email,hashedPassword,firstName,lastName) {
  const sql = `
    INSERT INTO CUSTOMER(FIRST_NAME,LAST_NAME,EMAIL,PASSWORD) VALUES(:firstName,:lastName,:email,:hashedPassword)
    `;
  const binds = {
    email:email,
    hashedPassword:hashedPassword,
    firstName:firstName,
    lastName:lastName,
  };
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return getCustomerByEmail(email);
    } else {
      console.error('Query result is undefined.');
    }
  } catch (error) {
    console.error('An error occurred:', error);
  }
}
module.exports = {
  getAllCustomer,
  getCustomerEmailValidation,
  createCustomer,
  getCustomerByEmail,
};
