const express = require("express");
const bcrypt = require("bcrypt");
const bodyParser = require("body-parser");
const morgan = require("morgan");

const router = require("./router/indexrouter");
const api = "/api/v1";
const app = express();
//CORS
app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
  next();
});
app.use(`${api}/customer`, router);
app.use(bodyParser.json());
app.use(morgan("tiny"));

app.get("/", (req, res) => {
  res.send("Hi this is app.js");
});

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
// app.get("/", (req, res) => {
//   console.log("ok");
//   res.send("ok");
// });
// app.get(`${api}/customer`, async (req, res) => {
//   try {
//     // Create a connection
//     const connection = await oracledb.getConnection(dbConfig);

//     // Execute your database query
//     const sql = "SELECT * FROM Customer";
//     const result = await connection.execute(sql);
//     console.log(result);
//     // Release the connection
//     await connection.close();

//     // Send the fetched data as a JSON response
//     res.json(result.rows);
//   } catch (error) {
//     console.error("Error:", error);
//     res.status(500).send("Error fetching data.");
//   }
// });

// async function createCustomer(newCustomer) {
//   const encryptedPassword = await bcrypt.hash(newCustomer.password, 10);
//   let connection;

//   try {
//     // Create a connection pool
//     connection = await oracledb.getConnection(dbConfig);
//     const options = { autoCommit: true };

//     const insertCustomer = `
//   INSERT INTO Customer ( first_name, last_name,area,city,state,house,road,email,password,date_of_birth)
//   VALUES (:first_name, :last_name,:area,:city,:state,:house,:road,:email,:password,TO_DATE(:date_of_birth,'DD-MM-YYYY'))
//   `;

//     const bindParams = {
//       first_name: newCustomer.first_name,
//       last_name: newCustomer.last_name,
//       area: newCustomer.area,
//       city: newCustomer.city,
//       state: newCustomer.state,
//       house: newCustomer.house,
//       road: newCustomer.road,
//       email: newCustomer.email,
//       password: encryptedPassword,
//       date_of_birth: newCustomer.date_of_birth,
//     };

//     const result = await connection.execute(
//       insertCustomer,
//       bindParams,
//       options
//     );

//     console.log(result);
//   } catch (error) {
//     console.error(error);
//   } finally {
//     if (connection) {
//       try {
//         await connection.close();
//       } catch (error) {
//         console.error(error);
//       }
//     }
//   }
// }
// async function verifyPassword(customer_email, customer_password) {
//   try {
//     let connection = await oracledb.getConnection(dbConfig);
//     const options = { autoCommit: true };
//     const verifyCustomer = `SELECT password
//       FROM Customer
//       WHERE email=:customer_email`;
//     const bindParams = {
//       email: customer_email,
//     };
//     const result = await connection.execute(
//       verifyCustomer,
//       bindParams,
//       options
//     );
//     const encryptedPassword = result.rows[0].password;
//     connection.close();

//     return await bcrypt.compare(password, encryptedPassword);
//   } catch (error) {
//     console.error("Error verifying password:", error);
//     return false;
//   }
// }
// app.post(`${api}/customer`, (req, res) => {
//   const newCustomer = req.body;

//   console.log(newCustomer);
//   try {
//     createCustomer(newCustomer);
//     res.send("Data submitted successfully!");
//   } catch (error) {
//     res.status(500).send("Error submitting data.");
//   }
// });

// // app.post("/login", async (req, res) => {
// //   const { customer_email, customer_password } = req.body;
// //   const isValidPassword = await verifyPassword(username, password);
// //   console.log("Is password valid:", isValidPassword);

// //   if (isValidPassword) {
// //     constC;
// //     res.json({
// //       success: true,
// //       user: {
// //         id: user.id,
// //         email: user.email,
// //       },
// //     });
// //   } else {
// //     res.status(401).json({ success: false, message: "Invalid credentials" });
// //   }
// // });
// app.get("/login", async (req, res) => {
//   const customer_email = req.body;
//   try {
//     let connection = await oracledb.getConnection(dbConfig);
//     const options = { autoCommit: true };
//     const verifyCustomer = `SELECT *
//       FROM Customer
//       WHERE email=${customer_email}`;
//     // const bindParams = {
//     //   email: customer_email,
//     // };
//     const result = await connection.execute(verifyCustomer);

//     connection.close();
//     res.send(data.rows);
//   } catch (error) {
//     console.error("Error verifying email:", error);
//   }
// });
// app.get("/", (req, res) => {
//   res.send("ok");
// });
// app.listen(3000, () => {
//   console.log(api);
//   console.log("server is running http://localhost:3000");
// });

module.exports = app;
