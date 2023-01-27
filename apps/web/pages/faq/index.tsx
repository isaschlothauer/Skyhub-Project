import React from "react";
import { useState } from "react";
import useAxios from "../../hooks/useAxios";
import DOMPurify from "dompurify";

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

export interface AxiosDataProps {
  question: string;
  answer: string;
  id: string | number;
}

const FAQ = ({ domain }: FAQProps) => {
  const [searchValue, setSearchValue] = useState("");
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

  const handeInput = (
    event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => setSearchValue(event.target.value);

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
                onChange={handeInput}
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
                {faqData
                  .filter((singleQNA) =>
                    singleQNA.question
                      .toLowerCase()
                      .includes(searchValue.toLowerCase())
                  )
                  .map((singleQNA) => (
                    <div
                      key={singleQNA.id}
                      className={`${"row"} ${styles["faq-question-row"]}`}
                    >
                      <div className={"w-full"}>
                        <div className={styles["faq-question-box"]}>
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
      <GoHomeContainer arrowTitle={"Go Back to Home"} link={"/"} />
      <Footer />
    </div>
  );
};

export default FAQ;
