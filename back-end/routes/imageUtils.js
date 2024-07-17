const cloudinary = require("cloudinary").v2;
// Load biến môi trường từ file .env
require("dotenv").config();

// Cấu hình cloudinary
cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
});

async function uploadImage(file) {
  try {
    const result = await cloudinary.uploader.upload(file.path, {
      folder: "product_images", // Lưu vào folder product_images trên cloudinary
    });
    return result.secure_url;
  } catch (error) {
    console.error("Error uploading image:", error);
    throw error; // Hoặc trả về giá trị lỗi tùy thuộc vào cách xử lý của bạn
  }
}

module.exports = { uploadImage };
