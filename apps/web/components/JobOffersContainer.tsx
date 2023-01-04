import React from "react";
import Image from "next/image";

import styles from "../pages/jobs/offers/offers.module.scss";
import stylesArrow from "./arrowButton.module.scss";

import { LearnMoreArrow } from "./ArrowButton";

import jobImg from "../../web/assets/images/widget/bg-widget-1.jpg";

function JobOffersContainer() {
  return (
    <div id={styles.offers} className={styles["offers-branding"]}>
      <div className={"flex flex-wrap "}>
        {/* Loop it, map it, whatever it works when the databse is operational */}
        <div className={"md:w-1/2 pr-4 pl-4"}>
          <div
            className={`${styles["job-offer-list-item"]} ${"flex flex-col"}`}
          >
            <div className={styles["job-details-list"]}>
              <div className={styles["job-offer-list-item-role"]}>
                First Officer Boeing 737
              </div>
              <div className={styles["job-offer-list-item-company"]}>
                AEGEAN AIRLINES
              </div>
              <div className={styles["job-offer-list-item-details"]}>
                <div className={styles["job-offer-list-item-contract"]}>
                  Contract
                </div>
                <div className={styles["job-offer-list-item-location"]}>
                  Athens, Greece
                </div>
                <div className={styles["job-offer-list-item-date"]}>
                  1 year ago
                </div>
              </div>
            </div>
            <div className={styles["job-offer-list-item-image"]}>
              <Image src={jobImg} alt={"offer-img"} />
            </div>
            <div className={styles["job-offer-list-item-more"]}>
              <LearnMoreArrow
                arrowtext={"Learn more"}
                cSass={`${stylesArrow["arrow-faqcontact"]} ${stylesArrow["dark-text"]}`}
                link={"#"}
              />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default JobOffersContainer;
