import * as React from "react";
import Link from "next/link";

{
  /*STYLES*/
}
import styles from "./Footer.module.scss";

export default function Footer() {
  return (
    <>
      <div id={styles.footer}>
        <div
          className="container mx-auto sm:px-0" /* style="position: relative" */
        >
          <div
            className={` flex flex-wrap items-end justify-between ${styles["footer-linkswithlogo"]}`}
          >
            <div className="md:w-1/3 pr-3 pl-3">
              <Link href="/" className={styles["footer-skyhublogo"]} />
            </div>
            <div className="md:w-1/3 pr-3 pl-3">
              <div className={`text-right ${styles["footer-links"]}`}>
                <a href="{{ url('privacy-policy') }}">Privacy Policy</a>
                <a href="{{ url('terms-of-service') }}">Terms of Service</a>
              </div>
            </div>
          </div>
          <div className={`flex flex-wrap  ${styles["footer-copyrightbox"]}`}>
            <div className="md:w-1/2 pr-3 pl-3">
              <div className={styles["footer-copyrightinfo"]}>
                <span>
                  Copyright {/*&copy;{{ date('Y') }}*/}. All rights reserved.
                </span>
                <Link href="/" className={styles.skyhublogo}>
                  www.skyhub.aero
                </Link>
              </div>
            </div>
            <div className="md:w-1/2 pr-3 pl-3">
              <div className="text-right">
                {/* TODO: LINKEDIN */}
                <a className={styles["footer-linkedin"]} href="#">
                  Follow us on
                  <strong>LinkedIn</strong>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
