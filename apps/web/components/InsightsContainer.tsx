import React from "react";
import styles from "./insightsContainer.module.scss";
import Link from "next/link";

function InsightsContainer() {
  return (
    <div className={"container mx-auto sm:px-1"}>
      
        <div
          className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-insights"]} ${styles["branding-2"]} 
          ${styles["branding-left-80"]} ${styles["branding-top-10"]}`}
        >
          <div className={styles["widget-overlay"]}>
            <div
            /*  onclick="window.open('/insights', '_self')"  style="cursor:pointer;" */
            >
              <div className={styles["widget-title"]}>Insights</div>
              <div className={styles["widget-subtitle"]}>
                Have a look inside
              </div>

              <Link href="/jobs/insights" className={styles["widget-link"]}>
                learn more
              </Link>
            </div>
          </div>
        </div>
     
    </div>
  );
}

export default InsightsContainer;
