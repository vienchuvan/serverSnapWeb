const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Kết nối MySQL
 const db = mysql.createPool({
    host: 'host120.vietnix.vn',
    user: 'snapdevv_web', // Mặc định XAMPP user là root
    password: 'Vienit810@', // Mặc định không có password
    database: 'snapdevv_snapdevv',
    port: 3306,
    waitForConnections: true,
    connectionLimit: 10, 
    queueLimit: 0
});

db.getConnection((err, connection) => {
    if (err) {
        console.error('Lỗi kết nối MySQL:', err);
        return;
    }
    console.log('✅ Kết nối MySQL thành công!');
    connection.release(); // Giải phóng kết nối sau khi kiểm tra
});
module.exports = db;
