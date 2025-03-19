const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const db = require("../connectSV/index");
const router = express.Router();
const SECRET_KEY = "SnapLocationWebApplicationVienChuVan";
if (db.state === "disconnected") {
  console.error("⚠️ Kết nối MySQL đã bị đóng!");
} else {
  router.get("/getUser", async (req, res) => {
    db.query("SELECT * FROM users", (err, results) => {
      if (err) {
        console.error("Lỗi truy vấn:", err);
        return;
      }
      console.log(results);
    });
  });
}

router.post("/register", async (req, res) => {
  try {
    const { user, pass, email, hoten, sdt, imgtk } = req.body;

    const maHoaMatKhau = await bcrypt.hash(pass, 10);
    console.log("maHoaMatKhau ", maHoaMatKhau);
    if (!db) {
      console.error(" Kết nối MySQL không tồn tại");
      return res.status(500).json({ error: "Mất kết nối với Server" });
    }
    db.query(
      "SELECT * FROM users Where user = ? OR  email = ?",
      [user, email],
      (err, results) => {
        if (err) {
          console.error("❌ Lỗi kiểm tra tài khoản:", err);
          return res
            .status(500)
            .json({ error: "Lỗi kiểm tra tài khoản", details: err.message });
        }

        if (results.length > 0) {
          console.log("⚠️ Email hoặc username đã tồn tại:", results);
          return res
            .status(400)
            .json({ error: "Email hoặc tài khoản đã tồn tại!" });
        }
        db.query(
          "INSERT INTO users (user, pass, email, hoten, sdt, imgtk) VALUES (?, ?, ?, ?, ?, ?)",
          [user, maHoaMatKhau, email, hoten, sdt, imgtk],
          (err, result) => {
            if (err) {
              console.error("❌ Lỗi MySQL:", err);
              return res
                .status(400)
                .json({ error: "Lỗi đăng ký", details: err.message });
            }

            console.log("✅ Đăng ký thành công:", result);
            return res
              .status(200)
              .json({ message: "Đăng ký thành công!", result });
          }
        );
      }
    );
  } catch (error) {
    console.error("Lỗi server:", error);
    res.status(500).json({ error: "Lỗi server", details: error.message });
  }
});

router.post("/login", (req, res) => {
  const { user, pass } = req.body;
  console.log("req.body ", req.body);
  db.query(
    "SELECT * FROM users WHERE user = ?",
    [user],
    async (err, results) => {
      if (err) return res.status(401).json({ error: err.message });
      if (results.length === 0)
        return res.status(1).json({ message: "Tài khoản chưa được đăng ký !", results: results });
      const user = results[0];
      console.log("user ", user);
      // Kiểm tra mật khẩu
      const isMatch = await bcrypt.compare(pass, user.pass);
      if (!isMatch)
        return res.status(0).json({ message: "Mật khẩu không đúng" });

      // Tạo JWT token
      const token = jwt.sign({ id: user.id, user: user.user }, SECRET_KEY, {expiresIn: "1h", });
      res.status(200).json({message: "Đăng nhập thành công",accessToken: token,users: user, });
    }
  );
});

module.exports = router;
