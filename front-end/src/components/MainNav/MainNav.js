import { NavLink, useNavigate, useRouteLoaderData } from "react-router-dom";
import styles from "./MainNav.module.css";
import SearchBar from "components/SearchBar/SearchBar";

export default function MainNav() {
  const authData = useRouteLoaderData("app");
  const navigate = useNavigate();

  async function handleClickLogOut () {
    try {
      const res = await fetch(
        `${process.env.REACT_APP_API_BASE_URL}/auth/logout`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
        }
      );
      if (!res.ok) {
        throw new Error("Unexpected status code.");
      }
    } catch (error) {
      console.log(error);
    } finally {
      navigate(0);
    }
  }

  function renderNavItem(path, anchor, onClick=null) {
    return (
      <li className={styles.listItem}>
        <NavLink to={path} className={styles.link} onClick={onClick}>{anchor}</NavLink>
      </li>
    );
  }

  return (
    <nav className={styles.mainNav}>
      <div className={styles.leftNav}>
        <ul className={styles.navList}>
          {/* {renderNavItem("/Home", "Home")} */}
          {renderNavItem("/", "Browse products")}
          {renderNavItem("/seller/products", "Sell products")}
        </ul>
      </div>
      <SearchBar to="/" className={styles.search} />
      <div className={styles.rightNav}>
        {authData?.logged_in ?
        <ul className={styles.navList}>
          {renderNavItem("/account", "Account")}
          {renderNavItem("/cart", "Cart")}
          {renderNavItem("#", "Log out", handleClickLogOut)}
        </ul>
        :
        <ul className={styles.navList}>
          {renderNavItem("/login", "Log in")}
          {renderNavItem("/register", "Log out")}
        </ul>
        }
      </div>
    </nav>
  );
}
