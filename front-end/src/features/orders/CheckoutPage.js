import { Form, Link, redirect, useActionData, useLoaderData, useRouteLoaderData } from "react-router-dom";

import { renderOrderItems } from "./utils";
import InlineErrorPage from "../../components/InlineErrorPage/InlineErrorPage";
import utilStyles from "../../App/utilStyles.module.css";


export async function checkoutAction({ request }) {
  let formData = await request.formData();
  try {
    const address = formData.get("address");
    const postcode = formData.get("postcode");
    const res = await fetch(
      `${process.env.REACT_APP_API_BASE_URL}/checkout/create-pending-order`,
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ address, postcode })
      }
    );

    if (res.ok) {
      const { order_id } = await res.json();
      return redirect(`/checkout/${order_id}/payment`);
    }
    throw new Error("Unexpected status code.");
  } catch (error) {
    return { checkoutError: "Sorry, your order could not be completed. Please try again later." };
  }
}

export function CheckoutPage() {
  const authData = useRouteLoaderData("app");
  const { cartData, cartLoaderError } = useLoaderData();
  const checkoutError = useActionData()?.checkoutError;

  if (!authData.logged_in) {
    return <InlineErrorPage pageName="Checkout" type="login_required" loginRedirect="/cart" />;
  } else if (cartLoaderError) {
    return <InlineErrorPage pageName="Checkout" message={cartLoaderError} />;
  } else if (cartData.length === 0) {
    return <InlineErrorPage pageName="Checkout" message="Your cart is empty so it is not possible to checkout." />;
  }

  function getTotalCost() {
    let totalCost = 0;
    cartData.forEach(item => {
      const price = parseFloat(item.product_price.replace(/[^0-9.-]+/g,""));
      totalCost += price * item.product_quantity;
    });
    return totalCost.toFixed(2);
  }

  return (
    <div className={utilStyles.pagePadding}>
      <h1 className={utilStyles.h1}>Checkout</h1>
      <p className={utilStyles.mb3rem}>Complete your order below.</p>
      <h2>Order items</h2>
      {renderOrderItems(cartData, false)}
      <div className={`${utilStyles.mb3rem} ${utilStyles.XLText}`}>
        <strong>Total cost: <span className={utilStyles.red}>${getTotalCost()}</span></strong>
      </div>
      <h2>Delivery address</h2>
      <Form method="post" className={utilStyles.stackedForm}>
        <label htmlFor="address" className={utilStyles.label}>Delivery name and address:</label>
        <textarea id="address" className={utilStyles.input} name="address" rows="5" minLength={15} maxLength={300} required />
        <label htmlFor="postcode" className={utilStyles.label}>Phone Number:</label>
        <input id="postcode" className={utilStyles.input} type="text" name="postcode" minLength={7} maxLength={12} required />
        <button type="submit" className={`${utilStyles.mt2rem} ${utilStyles.button}`}>Continue to payment</button>
      </Form>
      {checkoutError ? (
        <div className={utilStyles.mt2rem}>
          <p className={`${utilStyles.mb2rem} ${utilStyles.red}`}><strong>{checkoutError}</strong></p>
          <Link to="/" className={utilStyles.button}>Continue shopping</Link>
        </div>
      ) : null}
    </div>
  );
}
