const express = require('express');

const db = require('../db/index');

const router = express.Router();

const multer = require("multer");
const { uploadImage } = require("./imageUtils");
const upload = multer({ dest: "uploads/" });

router.post("/upload-product", async (req, res) => {
  try {
    let {
      name,
      short_description,
      long_description,
      price,
      available_stock_count,
      category_id,
      img_link,
      seller_id,
    } = req.body;
    
    if (!req.body.seller_id) {
      return res.status(400).json({ error: "Missing seller_id" });
    }
    
    const newProduct = await db.createProduct({
      name,
      short_description,
      long_description,
      price,
      available_stock_count,
      img_link,
      category_id,
      seller_id
    });
    
    res.status(201).json(newProduct);
  } catch (error) {
    console.error("Error uploading product:", error);
    res.redirect("/");
    res.status(500).json({ error: "Product upload failed" });
  }
});

router.post("/upload", upload.single("image"), async (req, res) => {
  try {
    const imageUrl = await uploadImage(req.file);
    const product_id = req.body.product_id; 
    await db.query(
      "UPDATE products SET img_link = $1 WHERE id = $2",
      [imageUrl, product_id]
    );

    res.status(200).json({ imageUrl });
  } catch (error) {
    res.status(500).json({ error: "Upload failed" });
  }
});

router.get('', async (req, res) => {
  try {
    productsData = await db.getProducts(
      category_id=req.query.category_id,
      search_term=req.query.search_term,
    );
    res.status(200).json(productsData);
  } catch(err) {
    res.status(500).send('Query failed.');
  }
});

router.get('/:id', async (req, res) => {
  try {
    productData = await db.getProductById(req.params.id);
    if (!productData) {
      return res.status(404).send(`A product with the ID '${req.params.id}' does not exist.`);
    }
    res.status(200).json(productData);
  } catch(err) {
    res.status(500).send('Query failed.');
  }
});


module.exports = router;
