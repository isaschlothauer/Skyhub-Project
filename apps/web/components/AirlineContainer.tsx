import React from "react";
import Image from "next/image";

{
  /* STYLES */
}
import styles from "./airlineContainer.module.scss";
import stylesArrow from "../components/arrowButton.module.scss";

{
  /* IMAGES */
}
import airlineImg from "../assets/images/widget/InsightsPicJobPage.png";

{
  /* COMPONENTS */
}
import { LearnMoreArrow } from "./ArrowButton";

function InsightsContainer() {
  return (
    <div className={"container mx-auto sm:px-1"}>
      <div
        className={`${styles.mainContainer} ${styles["widget-insights"]}      `}
      >
        <div className={styles["widget-overlay"]}>
          <div className={styles["infoContainer"]}>
            <div className={styles["textContainer"]}>
              <div className={styles["widget-title"]}>
                Get to know your future employer
              </div>
              <div className={styles["widget-subtitle"]}>
                We prepared a comprehensive list of information about different
                airline companies worldwide. Check out...Some more text here to
                what to expect
              </div>
            </div>
            <div className={styles["imageContainer"]}>
              <Image src={airlineImg} alt={"airlines"} />
            </div>
          </div>
          <LearnMoreArrow
            cSass={`${stylesArrow["arrow-faqcontact"]} ${stylesArrow["dark-text"]}`}
            arrowtext={"Learn more here"}
            link={"/jobs/insights"}
          />
        </div>
      </div>
    </div>
  );
}

export default InsightsContainer;
