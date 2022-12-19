import React from "react";
import styles from "./go_back_home.module.scss";

export default function GoBackHome() {
  return (
    <div className={`${"row"} ${styles["go-homepage-row"]}`}>
      <div
        className={`${"col-md-12"} ${styles["go-homepage-col"]} ${
          styles["branding-1"]
        } 
  ${styles["branding-size-75"]} ${styles["branding-right-95"]} ${
          styles["branding-top-0"]
        }`}
      >
        <div
          className={styles["go-homepage"]}
          onclick="window.open(`http://{{ env('MAIN_DOMAIN') }}`, '_self')"
          /* style="cursor:pointer;" */
        >
          <div className={styles["go-homepage-text"]}>
            <div className={styles["go-homepage-text-1"]}>
              Didn't find what you were looking for?
            </div>
            <div className={styles["go-homepage-text-2"]}>
              Start again from the <span>beginning</span>...
            </div>
          </div>
          <div className={styles["go-homepage-link"]}>
            <a href="http://{{ env('MAIN_DOMAIN') }}">Go to homepage</a>
          </div>
        </div>
      </div>
    </div>
  );
}
