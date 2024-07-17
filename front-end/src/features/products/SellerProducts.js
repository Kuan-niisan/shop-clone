import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import utilStyles from "../../App/utilStyles.module.css";
import styles from "./SellerProducts.module.css";

export async function sellerProductsLoader() {
  const res = await fetch(`${process.env.REACT_APP_API_BASE_URL}/sellers/products`, {
    credentials: "include",
  });
  if (res.ok) {
    return res.json();
  } else {
    throw new Error("Failed to load seller products.");
  }
}

function SellerProducts() {
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch(`${process.env.REACT_APP_API_BASE_URL}/sellers/products`, {
      credentials: "include",
    })
      .then((res) => res.json())
      .then((data) => {
        setProducts(data);
        setLoading(false);
      })
      .catch((err) => {
        console.error(err);
        setLoading(false);
      });
  }, []);

  const handleDelete = (productId) => {
    fetch(`${process.env.REACT_APP_API_BASE_URL}/sellers/products/${productId}`, {
      method: "DELETE",
      credentials: "include",
    })
      .then(() => setProducts(products.filter((product) => product.id !== productId)))
      .catch((err) => console.error(err));
  };

  if (loading) {
    return <div>Loading...</div>;
  }

  return (
    <div className={utilStyles.pagePadding}>
      <h1 className={utilStyles.h1}>Your Products</h1>
      <Link to="/seller/products/new" className={utilStyles.button}>Add New Product</Link>
      <ul className={styles.productGrid}>
        {products.length === 0 ? (
          <li>No products found.</li>
        ) : (
          products.map((product) => (
            <li key={product.id} className={styles.productItem}>
              <li key={product.id} className={styles.productItem}>
              <div>{product.name}</div>
              <div>
                <img src={product.img_link} alt={product.name} className={styles.productImage} />
              </div>
              <div>{product.price}</div>
              <div>
                <Link to={`/seller/products/${product.id}/edit`} className={utilStyles.button}>Edit</Link>
                <button onClick={() => handleDelete(product.id)} className={utilStyles.button}>Delete</button>
              </div>
              </li>
              
            </li>
          ))
        )}
      </ul>
    </div>
  );
}

export default SellerProducts;
