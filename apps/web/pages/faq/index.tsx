import React from "react";

{
  /* STYLES */
}
import styles from "./faq.module.scss";

{
  /* COMPONENTS */
}
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";
import ContainerFAQContact from "../../components/FAQ_Contact_Container";

function FAQ() {
  return (
    <div className={styles["faq-page"]}>
      {/* Mini Header CMP */}

      <Mini_Header title={"Frequently Asked Questions"} />

      <div className={"container mx-auto sm:px-4"}>
        <div className={"flex flex-wrap"}>
          <div className={"w-full"}>
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
      <div
        className={`${"container mx-auto sm:px-4"} ${
          styles["faq-questions-container"]
        }`}
      >
        <div className={"flex flex-wrap"}>
          <div className={"w-full"}>
            <div className={styles["faq-questions"]}>
              {/* @foreach ($faq as $data) */}
              <div className={`${"row"} ${styles["faq-question-row"]}`}>
                <div className={"w-full"}>
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

              <div
                className={`${"flex flex-wrap"} ${
                  styles["faq-question-no-row"]
                }`}
              >
                <div className={"w-full"}>
                  Nothing found with phrase <strong></strong>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className={"container mx-auto sm:px-4"}>
          {/* // BACK TO HOMEPAGE TILE */}

          {/* // CONTACTS TILE */}
          <div
            className={`container mx-auto sm:px-0 ${styles["mainpage-faqcontact"]}`}
          >
            <ContainerFAQContact />
          </div>
        </div>
      </div>
      <Footer />
    </div>
  );
}

export default FAQ;
