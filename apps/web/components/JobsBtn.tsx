import React from "react";
import styles from "./jobsBtn.module.scss";
import widgetjob from "../assets/images/widget/bg-widget-jobs.png";
import Image from "next/image";
import Link from "next/link";

export default function Jobs() {
  return (
      <div className={`${"col-md-4"} ${"px-md-2"}`}>
        <div className={`${styles.widget} ${styles["widget-contact-us"]}`}>
          <Image src={widgetjob} alt="widgetcontact" />
          <div className={styles["widget-overlay"]}>
            <div
              /* onClick="window.open('#', '_self')"  style="cursor:pointer;" */
            >
              <div className={styles["widget-subtitle"]}>Jobs</div>
              <div className={styles["widget-title"]}>Current offers</div>
              <Link href="/jobs" className={styles["widget-link"]}>
                Learn more
              </Link>
            </div>
          </div>
        </div>
      </div>
  );
}
