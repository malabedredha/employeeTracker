import mysql from "mysql2";
import inquirer from "inquirer";

const pool = mysql.createPool({
    host: "localhost",
    user: "root",
    database: "test",
    password: "rootroot",
    waitForConnections: true,
    connectionLimit: 10,
    maxIdle: 10,
    idleTimeout: 60000,
    queueLimit: 0,
});


let { firstName } = await inquirer.prompt([
    {
        type: "input",
        name: "firstName",
    },
]);

const promisePool = pool.promise();

const [rows, fields] = await promisePool.query(
    "SELECT * from example where name = ?",
    firstName
);

console.table(rows);