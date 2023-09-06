const database = require("./create-and-executedb");

async function getSupplierEmailValidation(email) {
  const sql = `
    SELECT SUPPLIER_EMAIL_VALIDATION(:email) AS IS_VALID
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
async function getSupplierByEmail(email) {
    const sql = `
      SELECT * FROM SUPPLIER S
      WHERE S.EMAIL=:email 
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
  async function createSupplier(email,hashedPassword,firstName,lastName) {
    const sql = `
      INSERT INTO SUPPLIER(FIRST_NAME,LAST_NAME,EMAIL,PASSWORD) VALUES(:firstName,:lastName,:email,:hashedPassword)
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
        return getSupplierByEmail(email);
      } else {
        console.error('Query result is undefined.');
      }
    } catch (error) {
      console.error('An error occurred:', error);
    }
  }

module.exports = {
  
  getSupplierEmailValidation,
  getSupplierByEmail,
  createSupplier,
  
};
