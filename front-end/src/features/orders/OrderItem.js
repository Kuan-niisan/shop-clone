import { Form, Link } from "react-router-dom";

import { getProductDetailPath } from "../products/utils";
import styles from "./OrderItem.module.css";
import utilStyles from "../../App/utilStyles.module.css";
import Quantity from "components/Quantity/Quantity";

export async function removeCartItemAction({ request }) {
  // https://reactrouter.com/en/main/start/tutorial#data-writes--html-forms
  // https://reactrouter.com/en/main/route/action
  let formData = await request.formData();
  const productId = formData.get("product_id");
  const productName = formData.get("product_name");
  try {
    const res = await fetch(
      `${process.env.REACT_APP_API_BASE_URL}/cart/items/${productId}`,
      {
        method: "DELETE",
        credentials: "include",
      }
    );

    if (res.ok) {
      return { error: false, productId, productName };
    }
    throw new Error("Unexpected status code.");
  } catch (error) {
    return { error: true, productId, productName };
  }
}


export function OrderItem({ productData, editable, lastItem }) {
  const { product_id, product_name, product_price, product_quantity } = productData;
  const productPath = getProductDetailPath(product_id, product_name);

  const handleQuantityChange = (newQuantity) => {
    // Xử lý thay đổi số lượng, có thể là một hàm callback để cập nhật số lượng trong giỏ hàng
  };

  return (
    <div className={styles.orderItem}>
      <hr className={utilStyles.separator} />
      <article className={styles.flexContainer}>
        <div className={styles.contentContainer}>
          <strong>
            <Link to={productPath} className={`${utilStyles.largeText} ${utilStyles.link}`}>{product_name}</Link>
          </strong>
          <div className={utilStyles.mt1rem}>{product_price}</div>
          <div className={utilStyles.mt1rem}>
            <Quantity
              initialValue={product_quantity}
              onChange={handleQuantityChange}
              max={99} // Giới hạn số lượng tối đa, tùy chỉnh theo yêu cầu
            />
          </div>
        </div>
        {editable ? (
          <Form method="post">
            <input type="hidden" name="product_id" value={product_id}></input>
            <input type="hidden" name="product_name" value={product_name}></input>
            <button type="submit" className={styles.button}>Remove</button>
          </Form>
        ) : null}
      </article>
      {lastItem ? <hr className={utilStyles.separator} /> : null}
    </div>
  );
}
