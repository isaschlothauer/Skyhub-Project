import React from "react";
import styles from "./Footer.module.scss";
import Link from "next/link";

export default function Footer() {
  return (
    <>
      <div id={styles.footer}>
        <div className={"container"} /* style="position: relative" */>
          <div className={styles["footer-branding"]}></div>
          <div
            className={`${"row"} ${"align-items-end"} ${styles["row-links"]}`}
          >
            <div className={"col-md-6"}>
              <Link href="/" className={styles.logo} />
            </div>
            <div className={"col-md-6"}>
              <div className={`${"text-right"} ${styles["links-top"]}`}>
                <a href="{{ url('privacy-policy') }}">Privacy Policy</a>
                <a href="{{ url('terms-of-service') }}">Terms of Service</a>
              </div>
            </div>
          </div>
          <div className={`${"row"} ${styles["row-copyright"]}`}>
            <div className={"col-md-6"}>
              <div className={styles.copyright}>
                <span>
                  Copyright {/*&copy;{{ date('Y') }}*/}. All rights reserved.
                </span>
                <Link href="/">www.skyhub.aero </Link>
              </div>
            </div>
            <div className={"col-md-6"}>
              <div className={"text-right"}>
                {/* TODO: LINKEDIN */}
                <a className={styles["linked-in"]} href="#">
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
