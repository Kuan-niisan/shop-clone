// Import thư viện
import React from "react";
import { Form, useRouteLoaderData, useNavigate, useActionData } from "react-router-dom";
import { useState, useEffect } from 'react';
import utilStyles from "../../App/utilStyles.module.css";
import styles from './ProductUpload.module.css';

export default function ProductUpload() {
  
  const [price, setPrice] = useState(0);
  const [quantity, setQuantity] = useState(1);
  const authData = useRouteLoaderData("app");
  const navigate = useNavigate();
  const [sellerId, setSellerId] = useState(null);
  const actionData = useActionData();
  const categories = ["Books"
    , "Electronics"
    , "Fashion"
    , "Home & Kitchen"
    , "Beauty & Personal Care"
    , "Automotive"
    , "Other"
  ]//db.getCategories();
  const [isLoading, setIsLoading] = useState(true);

  const handleSubmit = async (event) => {
    setSellerId(authData.id);
    event.preventDefault();
    const formData = new FormData(event.target);
    const productData = { ...Object.fromEntries(formData.entries()), seller_id: sellerId};
  
    if (!sellerId || isLoading) {
      return;
    }

    console.log("productData:", productData);
    try {
      const response = await fetch(
        `${process.env.REACT_APP_API_BASE_URL}/products/upload-product`,
        {
          method: "POST",
          credentials: "include",
          headers: {
            "Content-Type": "application/json"
          },
          body: JSON.stringify(productData),
        }
      );

      if (!response.ok) {
        const errorData = await response.json();
        navigate(`/FallbackErrorPage`);
        console.error("Lỗi tạo sản phẩm từ front-end:", errorData.error || "Lỗi tạo sản phẩm");
        return;
      }
      navigate(`/`);
    } catch (error) {
      navigate(`/FallbackErrorPage`);
      console.error("Lỗi tạo sản phẩm:", error.message);
    }
  };

  useEffect(() => {
    console.log("authData:", authData);
    if (authData.logged_in) {
      setSellerId(authData.id);
    } else {
      navigate("/login");
    }
    setIsLoading(false); 
  }, [authData, navigate]);

  return (
    <div className={`${styles.pagePadding} ${utilStyles.mw80rem}`}>
      <h1 className={utilStyles.h1}>Thêm sản phẩm mới</h1>
      {actionData?.error && <p className={utilStyles.errorText}>{actionData.error}</p>}
      {!isLoading && (
        <Form method="post" onSubmit={handleSubmit} className={utilStyles.stackedForm}>
          <label htmlFor="name" className={utilStyles.label}>Tên sản phẩm:</label>
          <input type="text" id="name" name="name" className={utilStyles.input} required />

          <label htmlFor="img_link" className={utilStyles.label}>Link ảnh (<a target="_blank" href="https://upanh.tv/upload" rel="noopener noreferrer">Tại đây</a> rồi lựa chọn Link trực tiếp):</label>
          <input type="text" id="img_link" name="img_link" className={utilStyles.input}/>

          <label htmlFor="price" className={utilStyles.label}>Giá sản phẩm (Đơn vị nghìn đồng):</label>
          <input type="number" 
              id="price" 
              name="price"
              className={utilStyles.input}
              required
              step="0.1"
              min="1" max="999"
              value={price}
              onChange={(e) => setPrice(parseFloat(e.target.value))} />

          <label htmlFor="available_stock_count" className={utilStyles.label}>Số lượng tồn kho:</label>
          <input type="number" id="available_stock_count" name="available_stock_count" min="1" max="10000" className={utilStyles.input} value={quantity} onChange={(e) => setQuantity(parseInt(e.target.value))} required />

          <label htmlFor="category_id" className={utilStyles.label}>Phân loại hàng:</label>
          <select id="category_id" name="category_id" className={utilStyles.input} required>
            {categories.map((category, index) => (
              <option key={index} value={index + 1}>
                {category}
              </option>
            ))}
          </select>
          
          <label htmlFor="short_description" className={utilStyles.label}>Mô tả ngắn:</label>
          <input type="text" id="short_description" name="short_description" className={utilStyles.input} />
          
          <label htmlFor="long_description" className={utilStyles.label}>Mô tả dài:</label>
          <textarea id="long_description" name="long_description" className={utilStyles.input} />

          <button type="submit" className={utilStyles.button}>Đăng sản phẩm</button>
        </Form>
      )}
    </div>
  );
}
