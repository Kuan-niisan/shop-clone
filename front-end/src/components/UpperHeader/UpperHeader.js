/* eslint-disable jsx-a11y/alt-text */
import { Link } from "react-router-dom";

import MainNav from "../MainNav/MainNav";
import styles from "./UpperHeader.module.css";

export default function UpperHeader() {
  return (
    <div className={styles.header}>
      <div className={styles.logoContainer}>
        <Link to="/" className={styles.logo}><img src="https://img.upanh.tv/2024/05/30/logo.png" className={styles.image}></img></Link>
      </div>
      
      <MainNav />
    </div>
  );
}
