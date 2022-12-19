import Link from "next/link";
import React from "react";
import styles from "./mini_header.module.scss";

export default function Mini_Header({ title }) {
  return (
    <div id={styles["mini-header"]}>
      <div className={"container"}>
        <div className={"row"}>
          <div className={"col-md-12"}>
            <Link href="/" className={styles.logo} />
            <h1>{title}</h1>
          </div>
        </div>
      </div>
    </div>
  );
}
