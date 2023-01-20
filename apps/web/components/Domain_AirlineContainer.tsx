import React from "react";
import Image from "next/image";
import Link from "next/link";
{
  /* STYLES */
}
import styles from "./domain_airlineContainer.module.scss";
import stylesArrow from "../components/arrowButton.module.scss";

{
  /* IMAGES */
}
import airlineImg from "../assets/images/widget/InsightsPicJobPage.png";
import arrowButton from "../assets/images/icons/arrow-right-pink.png";

{
  /* COMPONENTS */
}
import { LearnMoreArrow } from "./ArrowButton";

function AirLineContainer({ domain }) {
  return (
    <div className={"container mx-auto sm:px-1 mb-10"}>
      <div className={`${styles.mainContainer} ${styles[`insight-${domain}`]}`}>
        <div className={styles["overlay"]}>
          <div className={styles["infoContainer"]}>
            <div className={styles["textContainer"]}>
              <div className={styles["title"]}>
                Get to know your future employer
              </div>
              <div className={styles["subtitle"]}>
                We prepared a comprehensive list of information about different
                airline companies worldwide. Check out...Some more text here to
                what to expect
              </div>
            </div>
            <div className={styles["imageContainer"]}>
              <Link href={`/${domain}/insights`}>
                <Image src={airlineImg} alt={"airlines"} />
              </Link>
            </div>
          </div>
          <LearnMoreArrow
            cSass={`${stylesArrow["arrow-domain"]} ${stylesArrow["dark-text"]}`}
            arrowtext={"Learn more here"}
            link={`/${domain}/insights`}
          />
          <Image
            src={arrowButton}
            alt={"arrow-button"}
            className={stylesArrow.onlyButton}
          />
        </div>
      </div>
    </div>
  );
}

export default AirLineContainer;
