const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const db = require("../connectSV/index");
const router = express.Router();;
const multer = require('multer');

const app = express();


// Cấu hình lưu trữ file
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'uploads/'); // Thư mục lưu ảnh
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + path.extname(file.originalname)); // Đổi tên file tránh trùng lặp
    }
});

const upload = multer({ storage: storage });
console.log("vào đây quan trị bài viết", upload);
// API upload ảnh
app.post('/upload', upload.single('image'), (req, res) => {
    console.log("res ", req.body);
    
    if (!req.file) {
        return res.status(400).json({ error: 'Vui lòng chọn ảnh' });
    }
    const imageUrl = `http://localhost:3000/uploads/${req.file.filename}`;
    res.json({ message: 'Tải lên thành công', imageUrl });
});

// Serve static files
app.use('/uploads', express.static('uploads'));
module.exports = router;
