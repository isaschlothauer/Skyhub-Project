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
import GoHomeContainer from "../../components/GoBackContainer";

export interface FAQProps {
  domain: string;
}

{
  /*UseEffect Implementation Test*/
}
const FAQ = ({ domain }: FAQProps) => {
  return (
    <div className={styles["faq-page"]}>
      {/* Mini Header CMP */}

      <Mini_Header title={"Frequently Asked Questions"} Scssdomain={domain} />

      <div
        className={`container mx-auto sm:px-0 ${styles["search-container"]}`}
      >
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
        className={`${"container mx-auto sm:px-0"} ${
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
        {/* // BACK TO HOMEPAGE TILE */}
      </div>
      <GoHomeContainer arrowTitle={"Go Back to Home Page"} link={"/"} />
      <Footer />
    </div>
  );
};

export default FAQ;
