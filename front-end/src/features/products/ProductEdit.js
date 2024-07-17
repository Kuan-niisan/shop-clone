import React, { useState, useEffect } from "react";
import { useParams, useNavigate } from "react-router-dom";
import utilStyles from "../../App/utilStyles.module.css";
import styles from "./ProductEdit.module.css";

function ProductEdit() {
  const { id } = useParams();
  const [formData, setFormData] = useState({});
  const navigate = useNavigate();

  useEffect(() => {
    fetch(`${process.env.REACT_APP_API_BASE_URL}/products/${id}`)
      .then((res) => res.json())
      .then((data) => setFormData(data))
      .catch((err) => console.error(err));
  }, [id]);

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    fetch(`${process.env.REACT_APP_API_BASE_URL}/sellers/products/${id}`, {
      method: "PUT",
      credentials: "include",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(formData),
    })
      .then((res) => res.json())
      .then(() => navigate("/seller/products"))
      .catch((err) => console.error(err));
  };

  return (
    <div className={`${styles.pagePadding} ${utilStyles.mw80rem}`}>
      <h1 className={utilStyles.h1}>Edit Product</h1>
      <form onSubmit={handleSubmit} className={utilStyles.stackedForm}>
        <label htmlFor="name" className={utilStyles.label}>Product Name:</label>
        <input type="text" id="name" name="name" value={formData.name || ""} onChange={handleChange} required className={utilStyles.input} />

        <label htmlFor="price" className={utilStyles.label}>Product Price:</label>
        <input type="number" id="price" name="price" value={formData.price || ""} onChange={handleChange} required className={utilStyles.input} />

        <label htmlFor="available_stock_count" className={utilStyles.label}>Quantity:</label>
        <input type="number" id="available_stock_count" name="available_stock_count" value={formData.available_stock_count || ""} onChange={handleChange} required className={utilStyles.input} />

        <label htmlFor="category_id" className={utilStyles.label}>Category:</label>
        <select id="category_id" name="category_id" value={formData.category_id || ""} onChange={handleChange} required className={utilStyles.input}>
          <option value="1">Books</option>
          <option value="2">Movies</option>
          <option value="3">Vehicles</option>
          <option value="4">Clothing</option>
          <option value="5">Furniture</option>
        </select>

        <label htmlFor="short_description" className={utilStyles.label}>Short Description:</label>
        <input type="text" id="short_description" name="short_description" value={formData.short_description || ""} onChange={handleChange} className={utilStyles.input} />
        
        <label htmlFor="long_description" className={utilStyles.label}>Long Description:</label>
        <textarea id="long_description" name="long_description" value={formData.long_description || ""} onChange={handleChange} className={utilStyles.input} />

        <button type="submit" className={utilStyles.button}>Update Product</button>
      </form>
    </div>
  );
}

export default ProductEdit;
