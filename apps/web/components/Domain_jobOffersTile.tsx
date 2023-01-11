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
import arrowButton from "../assets/images/icons/arrow-right-pink.png";

function Domain_jobOffersTile() {
  return (
    <div id={styles.offers}>
      <div className={`${styles["job-offer-list-item"]} `}>
        <div className={"flex flex-col justify-between"}>
          <div>
            <div className={styles["job-offer-list-item-role"]}>
              First Officer Boeing 737
            </div>
            <div className={styles["job-offer-list-item-company"]}>
              AEGEAN AIRLINES
            </div>
          </div>
        </div>

        <div
          className={`${
            styles["job-offer-item-and-images"]
          } ${"flex flex-row justify-between"}`}
        >
          <div className={`${styles["job-offer-list-item-details"]}`}>
            <div className={styles["job-offer-list-item-contract"]}>
              <p>Contract</p>
            </div>
            <div className={styles["job-offer-list-item-location"]}>
              <p>Athens, Greece</p>
            </div>
            <div className={styles["job-offer-list-item-date"]}>
              <p>1 year ago</p>
            </div>
          </div>

          <div className={`${styles["job-image-and-arrow"]}`}>
            <div className={styles["job-offer-list-item-image"]}>
              <Image src={jobImg} alt={"offer-img"} />
            </div>

            <LearnMoreArrow
              arrowtext={"Learn more"}
              cSass={`${stylesArrow["arrow-domain"]} ${stylesArrow["dark-text"]}`}
              link={"#"}
            />
            <Image
              src={arrowButton}
              alt={"arrow-button"}
              className={stylesArrow.onlyButton}
            />
          </div>
        </div>
      </div>
    </div>
  );
}

export default Domain_jobOffersTile;
