import React from "react";
import useAxios from "../../hooks/useAxios";

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
import DOMPurify from "dompurify";

export interface FAQProps {
  domain: string;
}

export interface AxiosDataProps {
  question: string;
  answer: string;
  id: string | number;
}

const FAQ = ({ domain }: FAQProps) => {
  // fetching the data from backend using useAxios context
  const faqData = useAxios<AxiosDataProps[]>({
    url: "http://localhost:5000/faq",
    transform: (data) =>
      data.map((faqItem) => ({
        question: DOMPurify.sanitize(faqItem.question),
        answer: DOMPurify.sanitize(faqItem.answer),
        id: faqItem.id,
      })),
  });

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
            {faqData && (
              <div className={styles["faq-questions"]}>
                {faqData.map((singleQNA, id) => (
                  <div key={singleQNA.id} className={`${"row"} ${styles["faq-question-row"]}`}>
                    <div className={"w-full"}>
                      <div className={styles["faq-question-box"]} key={id}>
                        <div
                          className={styles["faq-question"]}
                          dangerouslySetInnerHTML={{
                            __html: singleQNA.question,
                          }}
                        />
                        <div
                          className={styles["faq-answer"]}
                          dangerouslySetInnerHTML={{
                            __html: singleQNA.answer,
                          }}
                        />
                      </div>
                    </div>
                  </div>
                ))}

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
            )}
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
