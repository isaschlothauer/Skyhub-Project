import React from "react";
import Link from "next/link";

{
  /* STYLES */
}
import styles from "./jobs.module.scss";

{
  /* COMPONENTS */
}
import Mini_Header from "../../components/Mini_Header";
import Footer from "../../components/Footer";
import GoBackHome from "../../components/GoBackHome";
import InsightsContainer from "../../components/InsightsContainer";
import ContainerFAQContact from "../../components/containerFAQContact";

function Jobs() {
  return (
    <div id={"page"}>
      <Mini_Header title={"Available Jobs"} />
      <div className={"container mx-auto sm:px-0"}>
        {" "}
        {/* All containers CONTAINER */}
        <div className={`${"flex flex-wrap"} ${styles["subject-branding"]}`}>
          {" "}
          {/* first container line */}
          <div className={`${"md:w-1/3 pr-4 pl-4"} ${"md:px-2"}`}>
            {" "}
            {/* Individual tile */}
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-general"]} ${styles["branding-1"]} ${styles["branding-left-80"]} ${styles["branding-top-45"]}`}
            >
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
          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-requirements"]} 
          ${styles["branding-1"]} ${styles["branding-left-65"]} ${styles["branding-top-75"]}`}
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
          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-apply"]} ${styles["branding-1"]} 
          ${styles["branding-left-15"]} ${styles["branding-bottom-80"]}`}
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
        <div className={"row"}>
          <div className={`${"col-md-4"} ${"px-md-2"}`}>
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

          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-costs"]} ${styles["branding-1"]} 
          ${styles["branding-right-85"]} ${styles["branding-bottom-60"]}`}
            >
              <div className={styles["widget-overlay"]}>
                <div
                /*  onclick="window.open('/costs', '_self')"  style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Costs</div>
                  <div className={styles["widget-subtitle"]}>
                    Doing the maths
                  </div>

                  <Link href="/jobs/costs" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>

          {/* INSIGHTS CONTAINER */}
          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div
              className={`${styles.widget} ${styles["widget-2"]} ${styles["widget-insights"]} ${styles["branding-2"]} 
          ${styles["branding-left-80"]} ${styles["branding-top-10"]}`}
            >
              <div className={styles["widget-overlay"]}>
                <div
                /*  onclick="window.open('/insights', '_self')"  style="cursor:pointer;" */
                >
                  <div className={styles["widget-title"]}>Insights</div>
                  <div className={styles["widget-subtitle"]}>
                    Have a look inside
                  </div>

                  <Link href="/jobs/insights" className={styles["widget-link"]}>
                    learn more
                  </Link>
                </div>
              </div>
            </div>
          </div>
        </div>
        <InsightsContainer />
        {/* FAQ & CONTACT US COMPONENT*/}
        <div
          className={`container mx-auto sm:px-0 ${styles["mainpage-faqcontact"]}`}
        >
          <ContainerFAQContact />
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
