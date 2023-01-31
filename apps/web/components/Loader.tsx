import React from "react";
import styles from "./loader.module.scss";

export default function Loader() {
  return (
    <div className={styles.loader}>
      <span className={styles["loader.element"]}></span>
      <span className={styles["loader.element"]}></span>
      <span className={styles["loader.element"]}></span>
    </div>
  );
}
