import React from "react";
import Image from "next/image";
import Link from "next/link";
{
  /* STYLES */
}
import styles from "./domain_airlineContainer.module.scss";
import stylesB from "../components/generalButton.module.scss";

{
  /* IMAGES */
}
import airlineImg from "../assets/images/widget/InsightsPicJobPage.png";
import checkbox from "../assets/images/icons/checkbox.png";

{
  /* COMPONENTS */
}
import ButtonCMP from "./GeneralButton";

const checkBoxes = [
  {
    id: 1,
    content: `How much <span>salary</span> can I expect?`,
  },
  { id: 2, content: `Are there any additional <span>benefits</span>?` },
  { id: 3, content: `Of what does the <span>assesment</span> consists?` },
  { id: 4, content: `What is the actual <span>revenue</span> of the company?` },
  { id: 5, content: "And much more ..." },
];

function AirLineContainer({ domain }: { domain: string }) {
  return (
    <>
      <Link href={`/${domain}/insights`}>
        <div className={"container mx-auto sm:px-1 mb-10"}>
          <div
            className={`${styles.mainContainer} ${styles[`insight-${domain}`]}`}
          >
            <div className={styles["overlay"]}>
              <div className={styles["infoContainer"]}>
                <div className={styles["textContainer"]}>
                  <div className={styles["title"]}>
                    Get to know your <span>future employer</span>
                  </div>
                  <div className={styles["subtitle"]}>
                    We prepared a comprehensive list of information about
                    different airline companies worldwide. Check it out!
                  </div>
                  <div className={styles.checkBoxes}>
                    <ul>
                      {checkBoxes.map((check) => (
                        <li
                          className="flex flex-row items-center content-center gap-3 mb-1"
                          key={check.id}
                        >
                          <Image
                            src={checkbox}
                            width={25}
                            height={25}
                            alt="checkbox"
                          />
                          <p
                            dangerouslySetInnerHTML={{ __html: check.content }}
                          ></p>
                        </li>
                      ))}
                    </ul>
                  </div>
                </div>
                <div className={styles["imageContainer"]}>
                  <Link href={`/${domain}/insights`}>
                    <Image src={airlineImg} alt={"airlines"} />
                  </Link>
                </div>
              </div>
              <div className={styles.buttonDiv}>
                <ButtonCMP
                  route={`/${domain}/insights`}
                  buttontext={"Go To insights"}
                  cSass={`${stylesB["see-more-btn-insights"]}`}
                />
              </div>
            </div>
          </div>
        </div>
      </Link>
    </>
  );
}

export default AirLineContainer;

{
  /* Unused onlyButton img (pinky roundy thingy)
 <Image
                src={arrowButton}
                alt={"arrow-button"}
                className={stylesArrow.onlyButton}
              />
*/
}
