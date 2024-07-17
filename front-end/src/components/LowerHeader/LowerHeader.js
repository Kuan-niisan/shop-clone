import { NavLink } from "react-router-dom";
import styles from "./LowerHeader.module.css";

export default function LowerHeader() {
  function renderNavItem(path, anchor, onClick=null) {
    return (
      <li className={styles.listItem}>
        <NavLink to={path} className={styles.link} onClick={onClick}>{anchor}</NavLink>
      </li>
    );
  }

  return (
    <div className={styles.header}>
      <nav className={styles.mainNav}>
        <ul className={styles.navList}>
          {renderNavItem("/category/books", "Books")}
          {renderNavItem("/category/electronics", "Electronics")}
          {renderNavItem("/category/fashion", "Fashion")}
          {renderNavItem("/category/home-kitchen", "Home & Kitchen")}
          {renderNavItem("/category/health-wellness", "Health & Wellness")}
          {renderNavItem("/category/automotive", "Automotive")}
          {renderNavItem("/category/others", "Others")}
        </ul>
      </nav>
    </div>
  );
}