import * as React from "react";
import Link from "next/link";

{
  /*STYLES*/
}
import styles from "./header.module.scss";

export interface HeaderProps {
  title: string;
  Scssdomain: string;
}

const Mini_Header = ({ title, Scssdomain }: HeaderProps) => {
  return (
    <div
      className={`${styles["header-container"]} ${
        styles["header-otherpages"]
      } ${styles[`header-${Scssdomain}`]}`}
    >
      <div className={"container mx-auto sm:px-0"}>
        <div>
          <div className={"md:w-full pr-0 pl-0"}>
            <Link href="/" className={styles["header-logo"]} />

            <h1>{title}</h1>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Mini_Header;
