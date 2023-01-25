import React, { useContext } from "react";
import Image from "next/image";
import Link from "next/link";
{
  /* STYLES */
}
import styles from "./domain_jobOffersContainer.module.scss";
import stylesArrow from "./arrowButton.module.scss";
{
  /* COMPONENTS */
}
import { LearnMoreArrow } from "./ArrowButton";
import TimeAgo from "javascript-time-ago";
import en from "javascript-time-ago/locale/en";

{
  /* IMG */
}
import arrowButton from "../assets/images/icons/arrow-right-pink.png";
import calendar from "../assets/images/icons/contract2.png";
import base from "../assets/images/icons/base.png";
import contract from "../assets/images/icons/contract2.png";

interface JobOffersContainerProps {
  position: string;
  company: string;
  base: string;
  link: string;
  date: string;
  dateAgo?: string;
  imageSrc?: string;
}

{
  /* javascript-time-ago shenaningans */
}
TimeAgo.addDefaultLocale(en);
const timeAgo = new TimeAgo("en-GB");
{
  /* /javascript-time-ago shenaningans */
}

const jobDetailsImages = [
  {
    contract: contract,

    base: base,

    date: calendar,
  },
];

function JobOffersContainer(props: JobOffersContainerProps) {
  const { position, company, base, link, date, imageSrc } = props;

  const timeBig = `${new Date(date).toLocaleDateString("en-GB", {
    weekday: "short",
    year: "numeric",
    month: "long",
    day: "numeric",
  })}`;
  const timeTiny = `${new Date(date).toLocaleDateString("en-GB", {
    year: "2-digit",
    month: "2-digit",
    day: "numeric",
  })}`;
  const ago = `${timeAgo.format(new Date(date))}`;

  return (
    <div id={styles.offers}>
      <div className={`${styles["job-offer-list-item"]} `}>
        <div className={"flex flex-col justify-between"}>
          <div>
            <div className={styles["job-offer-list-item-role"]}>{position}</div>
            <div className={styles["job-offer-list-item-company"]}>
              <p>{company}</p>
            </div>
          </div>
        </div>

        <div className={`${styles["job-offer"]}`}>
          <div className={`${styles["job-offer-details"]}`}>
            {jobDetailsImages.map((image) => (
              <>
                <div className={styles["job-offer-image"]}>
                  <Image src={image.contract} alt={"contract"} />
                  <div>
                    <p>Contract</p>
                  </div>
                </div>
                <div className={styles["job-offer-image"]}>
                  <Image src={image.base} alt={"base"} />
                  <p>{base}</p>
                </div>
                <div className={styles["job-offer-image"]}>
                  <Image src={image.date} alt={"date"} />
                  <div>
                    <p className={styles.timeBig}>{timeBig}</p>
                    <p className={styles.timeTiny}>{timeTiny}</p>
                    <p className={styles.ago}>{ago}</p>
                  </div>
                </div>
              </>
            ))}
          </div>

          <div className={`${styles["job-image-and-arrow"]}`}>
            <div className={styles["airline-container"]}>
              {imageSrc && (
                <Image
                  src={imageSrc}
                  alt={"offer-img"}
                  className={styles.airlineImage}
                  width={200}
                  height={150}
                />
              )}
              <div className={styles["job-offer-list-item-company-sub"]}>
                <p>{company}</p>
              </div>
            </div>

            <LearnMoreArrow
              arrowtext={"Learn more"}
              cSass={`${stylesArrow["arrow-domain"]} ${stylesArrow["dark-text"]}`}
              link={link}
            />
          </div>
        </div>
      </div>
    </div>
  );
}

export default JobOffersContainer;
