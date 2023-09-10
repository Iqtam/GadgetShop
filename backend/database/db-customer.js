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
    email: email,
  };
  try {
    const result = await database.dbexecute(sql, binds, database.dboptions);
    if (result) {
      return result.rows[0].IS_VALID === 'TRUE';
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

async function getUserBYId(id) {
  const sql = `
  SELECT C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, C.AREA, C.CITY, C.STATE, C.HOUSE, C.ROAD, C.EMAIL, C.PASSWORD, C.DATE_OF_BIRTH,
  (SELECT JSON_ARRAYAGG(CC.CONTACT_NO) FROM CUSTOMER_CONTACT_NO CC WHERE CC.CUSTOMER_ID = C.CUSTOMER_ID) AS CONTACT_N0s
  FROM CUSTOMER C
  WHERE C.CUSTOMER_ID=:id
  `;
  const binds = {
    id: id
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

async function updateCustomerById(id, updatedCustomerData) {
  const {FIRST_NAME, LAST_NAME, AREA, CITY, STATE, HOUSE, ROAD, EMAIL, PASSWORD, DATE_OF_BIRTH } = updatedCustomerData;

  const isCustomerDuplicateEmail = await getCustomerEmailValidation(EMAIL);

  if (isCustomerDuplicateEmail == "TRUE") {
    return res.status(400).json({ error: "User Email already exists" });
  } else {

      const sql = `
      UPDATE CUSTOMER C
      SET C.FIRST_NAME = :first_name,
          C.LAST_NAME = :last_name,
          C.AREA = :area,
          C.CITY = :city,
          C.STATE = :state,
          C.HOUSE = :house,
          C.ROAD = :road,
          C.EMAIL = :email,
          C.PASSWORD = :password,
          C.DATE_OF_BIRTH = :date_of_birth
      WHERE C.CUSTOMER_ID = :id
      `;

      const binds = {
        first_name: FIRST_NAME,
        last_name: LAST_NAME,
        area: AREA,
        city: CITY,
        state: STATE,
        house: HOUSE,
        road: ROAD,
        email: EMAIL,
        password: PASSWORD,
        date_of_birth: DATE_OF_BIRTH,
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
        throw error;
      }
  }
}

async function updateContactById(id, updatedContactData) {
  let sql = `
  DELETE FROM CUSTOMER_CONTACT_NO 
  WHERE CUSTOMER_ID = :id;
  `;

  let binds = {
    id: id,
  };
  try {
    await database.dbexecute(sql, binds, database.dboptions);
  } catch (error) {
    console.error('An error occurred while deleting:', error);
    return;
  }

  const contacts = updatedContactData.contacts;

  for(const contact of contacts){
    sql = `
    INSERT INTO CUSTOMER_CONTACT_NO  (CUSTOMER_ID, CONTACT_NO)
    VALUES (:id, :CONTACT_NO)
    `;
    binds = {
      id: id,
      CONTACT_NO: contact.CONTACT_NO,
    };
    try {
      const result = await database.dbexecute(sql, binds, database.dboptions);
    } catch (error) {
      console.error('An error occurred while inserting:', error);
      return;
    }
  }
}

module.exports = {
  getAllCustomer,
  getCustomerEmailValidation,
  createCustomer,
  getCustomerByEmail,
  getUserBYId,
  updateCustomerById,
  updateContactById,
};
