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

  async function getsupplierBYId(id) {
    const sql = `
    SELECT S.SUPPLIER_ID, S.COMPANY_NAME, S.HOUSE, S.ROAD, S.AREA, S.CITY, S.STATE, S.EMAIL, S.WEBSITE, S.PASSWORD, S.FIRST_NAME, S.LAST_NAME
    FROM SUPPLIER S
    WHERE S.SUPPLIER_ID=:id
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
      }
    } catch (error) {
      console.error("An error occurred:", error);
    }
  }
  
  async function updateSupplierById(id, updatedSupplierData) {
    const sql = `
    UPDATE SUPPLIER
    SET COMPANY_NAME = :company_name,
        HOUSE = :house,
        ROAD = :road,
        AREA = :area,
        CITY = :city,
        STATE = :state,
        EMAIL = :email,
        WEBSITE = :website,
        PASSWORD = :password,
        FIRST_NAME = :first_name,
        LAST_NAME = :last_name
    WHERE SUPPLIER_ID = :id
    `;
  
    const binds = {
      company_name: updatedSupplierData.COMPANY_NAME,
      house: updatedSupplierData.HOUSE,
      road: updatedSupplierData.ROAD ,
      area: updatedSupplierData.AREA,
      city: updatedSupplierData.CITY,
      state: updatedSupplierData.STATE,
      email: updatedSupplierData.EMAIL,
      website: updatedSupplierData.WEBSITE,
      password: updatedSupplierData.PASSWORD,
      first_name: updatedSupplierData.FIRST_NAME,
      last_name: updatedSupplierData.LAST_NAME,
      id: id
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

module.exports = {
  getSupplierEmailValidation,
  getSupplierByEmail,
  createSupplier,
  getsupplierBYId,
  updateSupplierById
};