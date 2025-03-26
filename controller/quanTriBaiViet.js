const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const db = require("../connectSV/index");
const router = express.Router();
const multer = require("multer");
const path = require("path");
const fs = require("fs"); // 🔥 Thêm module fs để kiểm tra thư mục
const { thongBao } = require("../Sevice/stringThongBao");

// Đảm bảo thư mục uploads tồn tại
const app = express();

// Đảm bảo Express có thể serve thư mục 'uploads'
const uploadDir = path.join(__dirname, "../uploads");

if (!fs.existsSync(uploadDir)) {
  fs.mkdirSync(uploadDir, { recursive: true }); // Tạo thư mục nếu chưa có
}

// Cấu hình lưu trữ file
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, uploadDir); // Sử dụng đường dẫn tuyệt đối của thư mục uploads
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + path.extname(file.originalname)); // Đổi tên file tránh trùng lặp
  },
});

const upload = multer({ storage: storage });

// API upload ảnh
router.post("/upload", upload.single("image"), (req, res) => {
  if (!req.file) {
    return res.status(400).json({ error: "Vui lòng chọn ảnh" });
  }

  const imageUrl = `http://localhost:3000/uploads/${req.file.filename}`;
  res.json({ message: "Tải lên thành công", imageUrl });
});

// Cấu hình cho phép truy cập thư mục uploads
router.use("/uploads", express.static(uploadDir));


router.post("/services/apiBaiViet ", async (req, res )=>{
  try{
    const { funcId,  user, title, shortContent, content, urlImgBaiViet, shortUrl } =
    req.body;
   
    if ( !funcId||!user || !title || !shortContent || !content || !urlImgBaiViet || !shortUrl) {
      return res.status(400).json({ error: "Thiếu dữ liệu đầu vào" });
    }

     title =  Buffer.from(title, 'utf-8').toString('base64')
    shortContent =  Buffer.from(shortContent, 'utf8').toString('base64')
    content  =  Buffer.from(content, 'utf-8').toString('base64')

    db.query("UPDATE quantri SET title = ?, shortContent = ?,content= ? ,urlImgBaiViet = ? ,shortUrl = ? "),[
      user,
      title,
      shortContent,
      content,
      urlImgBaiViet,
      shortUrl,
    ], (err , result)=>{
      if(err){
        return res.status(404).json({ err:"Lỗi update vui lòng thử lại"})
      }else{
        return res.status(200).json({ message: " Cập nhật dữ liệu thành công "})
      }
    }
  }catch(err){
    console.log(err);
    
  }
})


router.post("/services/postBaiViet", async (req, res) => {
  try {
    const { user, title, shortContent, content, urlImgBaiViet, shortUrl } =
      req.body;
     
      if (!user || !title || !shortContent || !content || !urlImgBaiViet || !shortUrl) {
        return res.status(400).json({ error: "Thiếu dữ liệu đầu vào" });
      }
    const titleMaHoa =  Buffer.from(title, 'utf-8').toString('base64')
    const shortContentMaHoa =  Buffer.from(shortContent, 'utf8').toString('base64')
    const contentMaHoa =  Buffer.from(content, 'utf-8').toString('base64')
    db.query(
      "INSERT INTO quantri(user,title,shortContent,content,urlImgBaiViet,shortUrl) VALUES (?,?,?,?,?,?)",
      [
        user,
        titleMaHoa,
        shortContentMaHoa,
        contentMaHoa,
        urlImgBaiViet,
        shortUrl,
      ],
      (err, result) => {
        if (err) {
          console.error("Lỗi đăng bài ", err);
          return res.status(404).json({ erro: thongBao.messThatBai });
        }
          return res.status(200).json({ message: thongBao.messThanhCong, result });
     
      }
    );
  } catch (err) {
    console.log(err);
    return res.status(500).json({ error: thongBao.messLoiServer});
  }
});
router.get("/services/getBaiViet", async (req, res )=>{
  db.query("SELECT * FROM quantri", (err, result) =>{
    if(err){
      console.log('Lỗi lấy bài viết, vui lòng thử lại sau');
      return res.status(404).json({error: "Lỗi lấy bài viết, vui lòng thử lại sau !"})
      
    }
    return res.status(200).json({response:result})
  })
})
module.exports = router;
