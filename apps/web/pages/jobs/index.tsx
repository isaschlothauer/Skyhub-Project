import React from "react";
import Mini_Header from "../../components/Mini_Header";
import styles from "./jobs.module.scss";
import Link from "next/link";
import Footer from "../../components/Footer";
import GoBackHome from "../../components/GoBackHome";
import ContactUs from "../../components/ContactUs";
import JobsBtn from "../../components/JobsBtn";

function Jobs() {
  return (
    <div className={styles["faq-page"]}>
      <Mini_Header title={"Available Jobs"} />
      <div className={"container"}>
        <div className={"row subject-branding"}>
          <div className={"col-md-4 px-md-2"}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-general"]} ${styles["branding-1"]} ${styles["branding-left-80"]} ${styles["branding-top-45"]}`}
            >
              <div className={styles["widget-overlay"]}>
                <div
                  onclick="window.open('/general', '_self')" /* style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>General</div>
                  <div className={styles["widget-subtitle"]}>
                    All you need to know
                  </div>

                  <Link href="/general" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>

          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-requirements"]} 
          ${styles["branding-1"]} ${styles["branding-left-65"]} ${styles["branding-top-75"]}`}
            >
              <div className={styles["widget-overlay"]}>
                <div
                  onclick="window.open('/requirements', '_self')" /* style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Requirements</div>
                  <div className={styles["widget-subtitle"]}>
                    Do you have what it takes?
                  </div>

                  <Link href="/requirements" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>

          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-apply"]} ${styles["branding-1"]} 
          ${styles["branding-left-15"]} ${styles["branding-bottom-80"]}`}
            >
              <div className={styles["widget-overlay"]}>
                <div
                  onclick="window.open('/apply', '_self')" /* style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Application</div>
                  <div className={styles["widget-subtitle"]}>
                    How, where, why?
                  </div>

                  <Link href="/apply" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div className={"row"}>
          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-training"]}`}
            >
              {" "}
              {/* -{{ $type }} */}
              <div className={styles["widget-overlay"]}>
                <div
                  onclick="window.open('/training', '_self')" /* style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Training</div>
                  <div className={styles["widget-subtitle"]}>
                    Learning by doing
                  </div>

                  <Link href="/training" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>

          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-costs"]} ${styles["branding-1"]} 
          ${styles["branding-right-85"]} ${styles["branding-bottom-60"]}`}
            >
              <div className={styles["widget-overlay"]}>
                <div
                  onclick="window.open('/costs', '_self')" /* style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Costs</div>
                  <div className={styles["widget-subtitle"]}>
                    Doing the maths
                  </div>

                  <Link href="/costs" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>

          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-insights"]} ${styles["branding-2"]} 
          ${styles["branding-left-80"]} ${styles["branding-top-10"]}`}
            >
              <div className={styles["widget-overlay"]}>
                <div
                  onclick="window.open('/insights', '_self')" /* style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Insights</div>
                  <div className={styles["widget-subtitle"]}>
                    Have a look inside
                  </div>

                  <Link href="/insights" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div
          className={`${"row"} ${"align-items-end"} ${styles["row-widgets"]}}`}
        >
          <JobsBtn />
          <ContactUs />
        </div>
        {/* 

  @widget('GoBack', [
      'back_url' => '/offers',
      'back_text' => 'learn more',
      'reverse' => true,
      'class' => 'widget-3 widget-jobs',
      'image' => asset('css/skyhub/images/widget/bg-widget-jobs.png'),
      'title' => 'Jobs',
      'subtitle' => 'Current offers'
  ])

  @widget('GoHomepage')

*/}
        <GoBackHome />
      </div>

      <Footer />
    </div>
  );
}

export default Jobs;
