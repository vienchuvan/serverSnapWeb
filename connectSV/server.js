const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const authRoutes = require('../controller/auth')
const quanTri = require('../controller/quanTriBaiViet')
const app = express();
const port = 3000;
const path = require("path");
const fs = require("fs");
// Middleware
app.use(cors());
app.use(bodyParser.json());
const uploadDir = path.join(__dirname, "../uploads");
fs.readdir(uploadDir, (err, files) => {
    if (err) {
        console.error("Lỗi đọc thư mục uploads:", err);
    } else {
        console.log("Danh sách file trong uploads:", files);
    }
});

// Routes
app.use('/api/auth', authRoutes);
app.use('/api/quantri', quanTri);
app.use("/uploads", express.static(uploadDir));

console.log("Serving static files from:", uploadDir);
app.listen(port, () => {
    console.log(`🚀 Server chạy tại: http://localhost:${port}`);
});