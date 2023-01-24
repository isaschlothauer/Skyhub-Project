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
import arrowButton from "../assets/images/icons/arrow-right-pink.png";
import Link from "next/link";
import TimeAgo from "javascript-time-ago";
import en from "javascript-time-ago/locale/en";

interface JobOffersContainerProps {
  position: string;
  company: string;
  base: string;
  link: string;
  date: string;
  dateAgo?: string;
}

{
  /* javascript-time-ago shenaningans */
}
TimeAgo.addDefaultLocale(en);
const timeAgo = new TimeAgo("en-GB");
{
  /* /javascript-time-ago shenaningans */
}

function JobOffersContainer(props: JobOffersContainerProps) {
  const { position, company, base, link, date, imageSRC } = props;

  const time = `${new Date(date).toLocaleDateString("en-GB", {
    weekday: "short",
    year: "numeric",
    month: "long",
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
              <p>{time}</p>
              <p>{ago}</p>
            </div>
          </div>

          <div className={`${styles["job-image-and-arrow"]}`}>
            <div className={styles["job-offer-list-item-image"]}>
              <Image src={imageSRC} width={200} height={200} alt={"offer-img"} />
            </div>

            <LearnMoreArrow
              arrowtext={"Learn more"}
              cSass={`${stylesArrow["arrow-domain"]} ${stylesArrow["dark-text"]}`}
              link={link}
            />
            <Link href={link}>
              <Image
                src={arrowButton}
                alt={"arrow-button"}
                className={stylesArrow.onlyButton}
              />
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
}

export default JobOffersContainer;
