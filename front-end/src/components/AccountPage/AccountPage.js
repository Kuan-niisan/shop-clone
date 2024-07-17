import { useRouteLoaderData } from "react-router-dom";

import InlineErrorPage from "../InlineErrorPage/InlineErrorPage";
import InlineLink from "../InlineLink/InlineLink";
import { OrdersHistory } from "../../features/orders/OrdersHistory";
import utilStyles from "../../App/utilStyles.module.css";


export default function AccountPage() {
  const authData = useRouteLoaderData("app");

  if (!authData.logged_in) {
    return <InlineErrorPage pageName="Your account" type="login_required" />;
  }

  return (
    <div className={utilStyles.pagePadding}>
      <h1 className={utilStyles.h1}>Account</h1>
      <p>You are logged in as email: <span className={utilStyles.email}>{authData.email_address}</span>. 🌈</p>
      <p className={utilStyles.mb3rem}>
        Check your wishlish products at <InlineLink path="/cart" anchor="open cart" />.
      </p>
      <h2>Orders History</h2>
      <OrdersHistory />
    </div>
  );
}
