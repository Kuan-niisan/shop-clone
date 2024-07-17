import { useEffect, useState } from "react";
import { useParams, useRouteLoaderData } from "react-router-dom";
import { loadStripe } from "@stripe/stripe-js";
import { EmbeddedCheckoutProvider, EmbeddedCheckout } from "@stripe/react-stripe-js";

import InlineErrorPage from "../../components/InlineErrorPage/InlineErrorPage";
import utilStyles from "../../App/utilStyles.module.css";

const stripePromise = loadStripe(`${process.env.REACT_APP_STRIPE_PUBLIC_KEY}`);

export default function PaymentPage() {
  
  const { orderId } = useParams();
  const authData = useRouteLoaderData("app");
  const [clientSecret, setClientSecret] = useState("");

  useEffect(() => {
    const basePath = `${process.env.REACT_APP_API_BASE_URL}/checkout/create-payment-session`;
    fetch(`${basePath}?order_id=${orderId}`,
    {
      method: "POST",
      credentials: "include",
    })
      .then((res) => res.json())
      .then((data) => setClientSecret(data.clientSecret));
  }, [orderId]);

  if (!authData.logged_in) {
    return <InlineErrorPage pageName="Order failed" type="login_required" loginRedirect="/orders" />;
  }

  return (
    <div className={utilStyles.pagePadding} id="checkout">
      <h1 className={utilStyles.h1}>Complete your payment below</h1>
      <p>The payment system Stripe is in test mode. Don't worry about your money</p>
      <p>Use this following demo credit card for making payment:</p>
      <ul className={utilStyles.mb3rem}>
        <li><strong>Email: </strong>test@example.com</li>
        <li><strong>Card number: </strong>4242 4242 4242 4242</li>
        <li><strong>Expiry date: </strong>12/34</li>
        <li><strong>CVC: </strong>123</li>
        <li><strong>Name: </strong>Any</li>
      </ul>
      {clientSecret && (
        <EmbeddedCheckoutProvider
          stripe={stripePromise}
          options={{clientSecret}}
        >
          <EmbeddedCheckout />
        </EmbeddedCheckoutProvider>
      )}
    </div>
  )
}
