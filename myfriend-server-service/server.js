const bodyParser = require("body-parser");
const express = require("express");
const cors = require("cors");
const user_Route = require("./routes/user_route.js");
const myfriend_Route = require("./routes/myfriend_route.js");

// เรียกใช้งาน dotenv จากไฟล์ .env ที่สร้างไว้
require("dotenv").config();
// สร้าง Web Server
const app = express();

// สร้างตัวแปรเก็บ PORT Number เพื่อใช้กับการเชื่อมต่อ Server
// จะใช้งาน process.env ได้ต้อง require("dotenv").config(); ก่อน
// process.env.PORT คือ PORT Number ที่เรากําหนด จาก ไฟล์.env
const PORT = process.env.PORT || 6000;

app.use(bodyParser.json());
app.use(cors());
app.use("/user", user_Route);
app.use("/myfriend", myfriend_Route);

app.get("/", (req, res) => {
  res.send("Test... Server is running on port " + PORT);
});

app.listen(PORT, () => {
  console.log("Server is running on port " + PORT);
});
