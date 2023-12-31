const oracledb = require("oracledb");
oracledb.autoCommit = true;

async function dbstart() {
  console.log("starting up database.");
  await oracledb.createPool({
    user: "GADGETSHOP",
    password: "12345",
    connectString: "localhost:1521/ORCLPDB",
    poolAlias:'default',
    poolMin: 4,
    poolMax: 10,
    poolIncrement: 1,
  });
  console.log("pool created");
}
async function dbshutdown() {
  console.log("shutting down database.");
  try {
    await oracledb.getPool().close(10);
    console.log("Pool closed");
  } catch (err) {
    console.log("ERROR shutting down database: " + err.message);
  }
}
async function dbexecute(sql, binds, options) {
  let connection, results;
  try {
    connection = await oracledb.getConnection();
    results = await connection.execute(sql, binds, options);
  } catch (err) {
    console.log("ERROR executing sql: " + err.message);
  } finally {
    if (connection) {
      try {
        await connection.close();
      } catch (err) {
        console.log("ERROR closing connection: " + err);
      }
    }
  }
  return results;
}
const dboptions = {
  outFormat: oracledb.OUT_FORMAT_OBJECT,
};
module.exports = {
  dbstart,
  dbshutdown,
  dbexecute,
  dboptions,
};
