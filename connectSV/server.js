const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const authRoutes = require('../controller/auth')
const quanTri = require('../controller/quanTriBaiViet')
const app = express();
const port = 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Routes
app.use('/api/auth', authRoutes).use('/api/quantri', quanTri);


app.listen(port, () => {
    console.log(`🚀 Server chạy tại: http://localhost:${port}`);
});