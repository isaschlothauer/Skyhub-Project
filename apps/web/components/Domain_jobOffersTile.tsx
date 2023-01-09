import React from "react";
import Image from "next/image";

{
  /* STYLES */
}

import stylesArrow from "./arrowButton.module.scss";
import styles from "./domain_jobOffersContainer.module.scss";

{
  /* COMPOENTS */
}
import { LearnMoreArrow } from "./ArrowButton";

{
  /* IMG */
}
import jobImg from "../../web/assets/images/miscellaneous/job_logo_testing.png";

function Domain_jobOffersTile() {
  return (
    <div id={styles.offers} className={styles["offers-branding"]}>
      <div
        className={`${
          styles["job-offer-list-item"]
        } ${"flex flex-row justify-between"}`}
      >
        <div className={"flex flex-col justify-between"}>
          <div>
            <div className={styles["job-offer-list-item-role"]}>
              First Officer Boeing 737
            </div>
            <div className={styles["job-offer-list-item-company"]}>
              AEGEAN AIRLINES
            </div>
          </div>
          <div
            className={`${
              styles["job-offer-list-item-details"]
            } ${"flex flex-col justify-between"}`}
          >
            <div className={styles["job-offer-list-item-contract"]}>
              Contract
            </div>
            <div className={styles["job-offer-list-item-location"]}>
              Athens, Greece
            </div>
            <div className={styles["job-offer-list-item-date"]}>1 year ago</div>
          </div>
        </div>

        <div className={`${styles["job-image-and-arrow"]} ${"flex flex-col"}`}>
          <div className={styles["job-offer-list-item-image"]}>
            <Image src={jobImg} alt={"offer-img"} />
          </div>
          <LearnMoreArrow
            arrowtext={"Learn more"}
            cSass={`${stylesArrow["arrow-faqcontact"]} ${stylesArrow["dark-text"]}`}
            link={"#"}
          />
        </div>
      </div>
    </div>
  );
}

export default Domain_jobOffersTile;
