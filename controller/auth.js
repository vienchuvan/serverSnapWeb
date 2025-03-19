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

    // Kết nối database
    const connection = await db.getConnection();
    try {
      // Truy vấn user từ database
      const [users] = await connection.query("SELECT * FROM users WHERE user = ?", [user]);

      if (users.length === 0) {
        return res.status(200).json({ code: 1, message: "Tài khoản chưa được đăng ký!" });
      }

      const userData = users[0];

      // Kiểm tra mật khẩu
      const isMatch = await bcrypt.compare(pass, userData.pass);
      if (!isMatch) {
        return res.status(200).json({ code: 0, message: "Mật khẩu không đúng" });
      }

      // Tạo JWT token
      const token = jwt.sign({ id: userData.id, user: userData.user }, SECRET_KEY, { expiresIn: "1h" });

      res.status(200).json({
        code: 200,
        message: "Đăng nhập thành công",
        accessToken: token,
        user: userData,
      });

    } catch (queryErr) {
      console.error("❌ Lỗi truy vấn MySQL:", queryErr);
      res.status(500).json({ code: 500, error: "Lỗi server", details: queryErr.message });
    } finally {
      connection.release(); // Giải phóng kết nối dù có lỗi hay không
    }

  } catch (err) {
    console.error("⚠️ Lỗi kết nối database:", err);
    res.status(500).json({ code: 500, error: "Lỗi kết nối database", details: err.message });
  }
});



module.exports = router;
