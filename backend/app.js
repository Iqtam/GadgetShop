const express = require("express");
const bcrypt = require("bcrypt");
const app = express();
const bodyParser = require("body-parser");
const morgan = require("morgan");
const oracledb = require("oracledb");
const dbConfig = {
  user: "GADGETSHOP",
  password: "12345",
  connectString: "localhost:1521/orclpdb",
};
//middleware
app.use(bodyParser.json());
app.use(morgan("tiny"));
// require("dotenv/config");

// const api = process.env.API_URL;
const api = "/api/v1";

// async function insertData(newProduct) {
//   let connection;

//   try {
//     // Create a connection pool
//     connection = await oracledb.getConnection(dbConfig);
//     const options = { autoCommit: true };
//     // Insert data into a table
//     // Create the table
//     // const createTableSql = `
//     // CREATE TABLE demotable2 (
//     //   id NUMBER PRIMARY KEY,
//     //   name VARCHAR2(50),
//     //   description VARCHAR2(200)
//     // )
//     // `;

//     // await connection.execute(createTableSql);

//     // Insert data into the table
//     const insertDataSql = `
// INSERT INTO Customer (id, name, description)
// VALUES (:id, :name, :description)
// `;

//     const bindParams = {
//       id: newProduct.id,
//       name: newProduct.name,
//       description: newProduct.description,
//     };

//     const result = await connection.execute(insertDataSql, bindParams, options);

//     console.log(result);
//   } catch (error) {
//     console.error(error);
//   } finally {
//     // Release the connection
//     if (connection) {
//       try {
//         await connection.close();
//       } catch (error) {
//         console.error(error);
//       }
//     }
//   }
// }
app.get(`${api}/customer`, async (req, res) => {
  try {
    // Create a connection
    const connection = await oracledb.getConnection(dbConfig);

    // Execute your database query
    const sql = "SELECT * FROM Customer";
    const result = await connection.execute(sql);

    // Release the connection
    await connection.close();

    // Send the fetched data as a JSON response
    res.json(result.rows);
  } catch (error) {
    console.error("Error:", error);
    res.status(500).send("Error fetching data.");
  }
});
app.get("/", async (req, res) => {
  console.log("Hellooo");
  res.send();
});
async function createCustomer(newCustomer) {
  const encryptedPassword = await bcrypt.hash(newCustomer.password, 10);
  let connection;

  try {
    // Create a connection pool
    connection = await oracledb.getConnection(dbConfig);
    const options = { autoCommit: true };

    const insertCustomer = `
  INSERT INTO Customer ( first_name, last_name,area,city,state,house,road,email,password,date_of_birth)
  VALUES (:first_name, :last_name,:area,:city,:state,:house,:road,:email,:password,TO_DATE(:date_of_birth,'DD-MM-YYYY'))
  `;

    const bindParams = {
      first_name: newCustomer.first_name,
      last_name: newCustomer.last_name,
      area: newCustomer.area,
      city: newCustomer.city,
      state: newCustomer.state,
      house: newCustomer.house,
      road: newCustomer.road,
      email: newCustomer.email,
      password: encryptedPassword,
      date_of_birth: newCustomer.date_of_birth,
    };

    const result = await connection.execute(
      insertCustomer,
      bindParams,
      options
    );

    console.log(result);
  } catch (error) {
    console.error(error);
  } finally {
    // Release the connection
    if (connection) {
      try {
        await connection.close();
      } catch (error) {
        console.error(error);
      }
    }
  }
}
app.post(`${api}/customer`, (req, res) => {
  const newCustomer = req.body;

  console.log(newCustomer);
  try {
    createCustomer(newCustomer);
    res.send("Data submitted successfully!");
  } catch (error) {
    res.status(500).send("Error submitting data.");
  }
});

app.listen(3000, () => {
  console.log(api);
  console.log("server is running http://localhost:3000");
});
