import React from "react";
import styles from "./faq.module.scss";
import Image from "next/image";
import bgWidget1 from "../../assets/images/widget/bg-widget-check.png";
import widgetContact from "../../assets/images/widget/bg-widget-contact.png";
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Mini_Header";

function FAQ() {
  return (
    <div className={styles["faq-page"]}>
      {/* Mini Header CMP */}

      <Mini_Header title={"Frequently Asked Questions"}/>

      <div className={"container"}>
        <div className={"row"}>
          <div className={"col-12"}>
            <div className={styles["faq-search"]}>
              <input
                type="text"
                name="faq_search"
                className={styles["faq-search-input"]}
                placeholder="Search for a topic or question"
              />
            </div>
          </div>
        </div>
      </div>

      {/* RESEARCH RESULT */}
      <div className={`${"container"} ${styles["faq-questions-container"]}`}>
        <div className={"row"}>
          <div className={"col-12"}>
            <div className={styles["faq-questions"]}>
              {/* @foreach ($faq as $data) */}
              <div className={`${"row"} ${styles["faq-question-row"]}`}>
                <div className={"col-12"}>
                  <div className={styles["faq-question-box"]}>
                    <div className={styles["faq-question"]}>
                      {" "}
                      {/* {{ $data['question'] }} */}
                    </div>
                    <div className={styles["faq-answer"]}>
                      {/* {!! $data['answer'] !!} */}
                    </div>
                  </div>
                </div>
              </div>
              {/* @endforeach */}

              <div className={`${"row"} ${styles["faq-question-no-row"]}`}>
                <div className={"col-12"}>
                  Nothing found with phrase <strong></strong>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className={"container"}>
        <div
          className={`${"row"} ${"align-items-end"} ${styles["row-widgets"]}`}
        >
          {/* // BACK TO HOMEPAGE TILE */}

          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div className={`${styles.widget} ${styles["widget-check-other"]}`}>
              <Image src={bgWidget1} alt="widget1" />
              <div className={styles["widget-overlay"]}>
                <div className={styles["widget-subtitle"]}>
                  You search for something else?
                </div>
                <div className={styles["widget-title"]}>Check other</div>
                <a href="/" className={styles["widget-link"]}>
                  Go back to homepage
                </a>
              </div>
            </div>
          </div>
          {/* // CONTACTS TILE */}
          <div className={"col-md-8 px-md-2"}>
            <div className={`${styles.widget} ${styles["widget-contact-us"]}`}>
              <Image src={widgetContact} alt={"widget-contact"} />
              <div className={styles["widget-overlay"]}>
                <div className={styles["widget-subtitle"]}>
                  Do you have questions?
                </div>
                <div className={styles["widget-title"]}>Contact us</div>
                <a href="#" className={styles["widget-link"]}>
                  learn more
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <Footer />
    </div>
  );
}

export default FAQ;
