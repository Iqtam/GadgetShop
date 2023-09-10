require("dotenv").config();

const app = require("./app");
const database = require("./database/create-and-executedb");
const run = database.dbexecute;
const format = database.dboptions;

process.env.UV_THREADPOOL_SIZE = 10;

const port = 5000;

app.listen(port, async () => {
  try {
    await database.dbstart();
    console.log(`listening on http://localhost:${port}`);
  } catch (err) {
    console.log("Error starting up database: " + err);
    process.exit(1);
  }
});

process
  .once("SIGTERM", database.dbshutdown)
  .once("SIGINT", database.dbshutdown);
  
