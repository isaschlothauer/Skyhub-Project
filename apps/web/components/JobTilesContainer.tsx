import React from "react";
import Link from "next/link";
import styles from "../pages/jobs/jobs.module.scss";
import { LearnMoreArrow } from "./ArrowButton";
import Image from "next/image";

function JobTilesContainer() {
  return (
    <div>
      <div className={"container mx-auto sm:px-0"}>
        {/* All containers CONTAINER */}
        <div className={`${"flex"}`}>
          {/* first container line */}
          <div className={`${"md:w-1/3 pr-5 pl-5"} ${"md:px-2"}`}>
            {/* Individual tile */}
            <div className={`${styles.widget} ${styles["widget-general"]}`}>
              <div className={styles["widget-overlay"]}>
                <div
                /*  onclick="window.open('/general', '_self')"  style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>General</div>
                  <div className={styles["widget-subtitle"]}>
                    All you need to know
                  </div>

                  <Link href="/jobs/general" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>
          <div className={`${"md:w-1/3 pr-5 pl-5"} ${"md:px-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-requirements"]}`}
            >
              <div className={styles["widget-overlay"]}>
                <div
                /*  onclick="window.open('/requirements', '_self')"  style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Requirements</div>
                  <div className={styles["widget-subtitle"]}>
                    Do you have what it takes?
                  </div>

                  <Link
                    href="/jobs/requirements"
                    className={styles["widget-link"]}
                  >
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>
          <div className={`${"md:w-1/3 pr-5 pl-5"} ${"md:px-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-apply"]}`}
            >
              <div className={styles["widget-overlay"]}>
                <div
                /* onclick="window.open('/apply', '_self')" style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Application</div>
                  <div className={styles["widget-subtitle"]}>
                    How, where, why?
                  </div>

                  <Link href="/jobs/apply" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className={`${"flex justify-center"}`}>
          <div className={`${"md:w-1/3 pr-5 pl-5"} ${"md:px-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-training"]}`}
            >
              {" "}
              {/* -{{ $type }} */}
              <div className={styles["widget-overlay"]}>
                <div
                /*  onclick="window.open('/training', '_self')"  style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Training</div>
                  <div className={styles["widget-subtitle"]}>
                    Learning by doing
                  </div>

                  <Link href="/jobs/training" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>

          <div className={`${"md:w-1/3 pr-5 pl-5"} ${"md:px-2"}`}>
            <div
              className={`${styles.mainContainer} ${styles["insight"]}      `}
            >
              <div className={styles["overlay"]}>
                <div className={styles["infoContainer"]}>
                  <div className={styles["textContainer"]}>
                    <div className={styles["title"]}>
                      Get to know your future employer
                    </div>
                    <div className={styles["subtitle"]}>
                      We prepared a comprehensive list of information about
                      different airline companies worldwide. Check out...Some
                      more text here to what to expect
                    </div>
                  </div>
                  <div className={styles["imageContainer"]}>
                    <Image src={""} alt={"airlines"} />
                  </div>
                </div>
                <LearnMoreArrow
                  cSass={``}
                  arrowtext={"Learn more here"}
                  link={"/jobs/insights"}
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default JobTilesContainer;
