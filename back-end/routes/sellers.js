const express = require('express');
const db = require('../db/index');
const router = express.Router();
const requireLogin = require('./middleware');

// Lấy danh sách sản phẩm của người bán
router.get('/products', requireLogin, async (req, res) => {
    try {
        const sellerId = req.user.id;
        const products = await db.query(
            'SELECT * FROM products WHERE seller_id = $1',
            [sellerId]
        );
        res.status(200).json(products.rows);
    } catch (err) {
        res.status(500).send('Lỗi khi lấy danh sách sản phẩm.');
    }
});

// Thêm sản phẩm mới
router.post('/products', requireLogin, async (req, res) => {
    try {
        const { name, short_description, long_description, price, available_stock_count, category_id } = req.body;
        const sellerId = req.user.id; // Lấy id của người bán từ req.user
        const newProduct = await db.createProduct({
            name, short_description, long_description, price, available_stock_count, category_id, seller_id: sellerId
        });
        res.status(201).json(newProduct);
    } catch (err) {
        res.status(500).send('Lỗi khi tạo sản phẩm.');
    }
});

// Cập nhật sản phẩm
router.put('/products/:id', requireLogin, async (req, res) => {
    try {
        const { id } = req.params;
        const { name, short_description, long_description, price, available_stock_count, category_id } = req.body;
        const sellerId = req.user.id;
        const updatedProduct = await db.query(
            `UPDATE products SET name = $1, short_description = $2, long_description = $3, price = $4, available_stock_count = $5, category_id = $6 
             WHERE id = $7 AND seller_id = $8 RETURNING *`,
            [name, short_description, long_description, price, available_stock_count, category_id, id, sellerId]
        );
        if (updatedProduct.rowCount === 0) return res.status(404).send('Không tìm thấy sản phẩm.');
        res.status(200).json(updatedProduct.rows[0]);
    } catch (err) {
        res.status(500).send('Lỗi khi cập nhật sản phẩm.');
    }
});

// Xóa sản phẩm
router.delete('/products/:id', requireLogin, async (req, res) => {
    try {
        const { id } = req.params;
        const sellerId = req.user.id;
        const deletedProduct = await db.query(
            'DELETE FROM products WHERE id = $1 AND seller_id = $2 RETURNING *',
            [id, sellerId]
        );
        if (deletedProduct.rowCount === 0) return res.status(404).send('Không tìm thấy sản phẩm.');
        res.status(200).json(deletedProduct.rows[0]);
    } catch (err) {
        res.status(500).send('Lỗi khi xóa sản phẩm.');
    }
});

module.exports = router;
