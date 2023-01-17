import React, { useContext } from "react";
import Image from "next/image";

{
  /* STYLES */
}
import styles from "./domain_jobOffersContainer.module.scss";

{
  /* IMG */
}
import jobImg from "../../web/assets/images/miscellaneous/job_logo_testing.png";

function JobOffersPage({
  company,
  title,
  jog_type,
  base,
  status,
  content,
  rating,
  position,
  aircraft_type,
  min_hours,
  certificates,
  roster,
  insurance,
  salary,
  benefits,
  apply_type,
  apply_link,
  apply_phone,
}) {
  return (
    <div id={styles.offers}>
      <div className={`${styles["job-offer-list-item"]} `}>
        <div className={"flex flex-col justify-between"}>
          <div>
            <div className={styles["job-offer-list-item-role"]}>{title}</div>
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
            <div>
              <ul>
                <li>
                  {status},{content},{rating},{position},{aircraft_type},
                  {min_hours},{certificates},{roster},{insurance},{salary},
                  {benefits},{apply_type},{apply_link},{apply_phone}
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default JobOffersPage;
