import React, { useContext } from "react";
import Image from "next/image";

{
  /* STYLES */
}
import styles from "./domain_jobOffersContainer.module.scss";
import stylesArrow from "./arrowButton.module.scss";
{
  /* COMPONENTS */
}
import { LearnMoreArrow } from "./ArrowButton";

{
  /* IMG */
}
import jobImg from "../../web/assets/images/miscellaneous/job_logo_testing.png";
import arrowButton from "../assets/images/icons/arrow-right-pink.png";

interface JobOffersContainerProps {
  position: string;
  company: string;
  base: string;
  link: string;
}

function JobOffersContainer(props: JobOffersContainerProps) {
  const { position, company, base, link } = props;

  return (
      <div id={styles.offers}>
        <div className={`${styles["job-offer-list-item"]} `}>
          <div className={"flex flex-col justify-between"}>
            <div>
              <div className={styles["job-offer-list-item-role"]}>
                {position}
              </div>
              <div className={styles["job-offer-list-item-company"]}>
                {company}
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
                <p>{base}</p>
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
                link={link}
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

export default JobOffersContainer;
