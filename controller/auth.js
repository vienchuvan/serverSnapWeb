const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const db = require("../connectSV/index"); // Nhớ import file connectSV/index.js
const router = express.Router();
const SECRET_KEY = "SnapLocationWebApplicationVienChuVan";

// 🔹 Sử dụng promise-based query đúng cách
router.post("/login", async (req, res) => {
  try {
    const { user, pass } = req.body;

    // Truy vấn user từ database
    db.getConnection(async (err, connection) => {
      if (err) {
        console.error("⚠️ Lỗi kết nối database:", err);
        return res.status(500).json({ error: "Lỗi kết nối database" });
      }

      try {
        const [users] = await connection.promise().query("SELECT * FROM users WHERE user = ?", [user]);

        if (users.length === 0) {
          connection.release();
          return res.status(401).json({ error: "Tài khoản chưa được đăng ký!" });
        }

        const userData = users[0];

        // Kiểm tra mật khẩu
        const isMatch = await bcrypt.compare(pass, userData.pass);
        if (!isMatch) {
          connection.release();
          return res.status(401).json({ error: "Mật khẩu không đúng" });
        }

        // Tạo JWT token
        const token = jwt.sign({ id: userData.id, user: userData.user }, SECRET_KEY, { expiresIn: "1h" });

        connection.release(); // Giải phóng kết nối
        res.status(200).json({
          message: "Đăng nhập thành công",
          accessToken: token,
          user: userData,
        });

      } catch (queryErr) {
        console.error("❌ Lỗi truy vấn MySQL:", queryErr);
        res.status(500).json({ error: "Lỗi server", details: queryErr.message });
        connection.release();
      }
    });

  } catch (err) {
    console.error("Lỗi đăng nhập:", err);
    res.status(500).json({ error: "Lỗi server", details: err.message });
  }
});

module.exports = router;
