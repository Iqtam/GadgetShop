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

module.exports = {
  getAllCustomer,
};
