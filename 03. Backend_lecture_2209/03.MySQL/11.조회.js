const mysql = require('mysql');
const config = require('./mysql.json');

const connection = mysql.createConnection(config);

connection.connect();           // MySQL DB에 접속
const sql = `SELECT * FROM city WHERE population > 9000000;`;
connection.query(sql, (err, rows, fields) => {
    if (err)
        throw err;
    //console.log(rows);          // rows : 배열 타입
    for (let row of rows) {
        const str = `${row.ID}\t${row.Name}\t${row.CountryCode}\t${row.District}\t${row.Population}`;
        console.log(str);
    }
    //console.log(fields);
});
connection.end();               // MySQL DB 접속 해제