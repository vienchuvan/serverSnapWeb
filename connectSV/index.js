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
 const db = mysql.createConnection({
    host: 'localhost',
    user: 'root', // Mặc định XAMPP user là root
    password: '', // Mặc định không có password
    database: 'snapweb'
});

db.connect(err => {
    if (err) {
        console.error('Lỗi kết nối MySQL:', err);
        return;
    }
    console.log('✅ Kết nối MySQL thành công!');
    
});
module.exports = db;
