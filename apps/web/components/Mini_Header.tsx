import Link from "next/link";
import React from "react";
import styles from "./mini_header.module.scss";

export default function Mini_Header({ title }) {
  return (
    <div id={styles["mini-header"]}>
      <div className={"container mx-auto sm:px-0"}>
        <div className={"flex flex-wrap "}>
          <div className={"md:w-full pr-0 pl-0"}>
            <Link href="/" className={styles.logo} />
            <h1>{title}</h1>
          </div>
        </div>
      </div>
    </div>
  );
}
