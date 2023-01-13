import * as React from "react";
import { ReactElement } from "react";
import { useEffect, useState } from "react";
import axios from "axios";
import DOMPurify from "dompurify";

import { domainToLongName } from "../utils/domainToLongName";

{
  /*STYLES*/
}
import styles from "./staticpage.module.scss";

{
  /*COMPONENTS*/
}
import Footer from "../components/Footer";
import ContainerFAQContact from "./FAQ_Contact_Container";
import Mini_Header from "./Header";
import GoBackContainer from "./GoBackContainer";

export interface StaticProps {
  cSass?: string;
  miniheader?: ReactElement;
  domain: string;
  slug: string;
}

{
  /*UseEffect Implementation Test*/
}
const StaticPage = ({ cSass, miniheader, domain, slug }: StaticProps) => {
  const [title, setTitle] = useState("");
  const [contents, setContents] = useState("");
  const [cssClass, setCssClass] = useState("");

  useEffect(() => {
    axios
      .get(`http://localhost:5000/static/${domain}/${slug}`)
      .then((response) => response.data)
      .then(({ content, title, css_class }) => {
        setTitle(title);
        setCssClass(css_class);
        const clean = DOMPurify.sanitize(content);
        setContents(clean);
      });
  }, []);
  
  return (
    <div
      className={`${cSass} ${cssClass} ${styles["staticpage"]} ${
        styles[`header-${domain}`]
      }`}
    >
      {miniheader ?? <Mini_Header title={title} />}
      <div className={`container mx-auto sm:pl-0 pr-0`}>
        <div className={"flex flex-wrap"}>
          <div
            className={`md:w-full pr-3.5 pl-3.5 ${styles["staticpage-content"]}`}
          >
            <div className={styles["staticpage-databaseinfo"]}>
              <div dangerouslySetInnerHTML={{ __html: contents }} />

              {/*Beggining of the Database Info*/}
              <h2> </h2>
              {/*Ending of the Database Info*/}

              {/* ---> Do we need this info????
              <hr />

              <div className={styles["staticpage-company"]}>
                <div className={styles["staticpage-companytext"]}>
                  Company who employing
                </div>
                <div className={styles["staticpage-companylink"]}>
                  <a href="#">www.lufthansa.com</a>
                </div>
                <div className={styles["staticpage-companyarrow"]}>
                  <a href="#"></a>
                </div>
  </div>*/}
            </div>
          </div>
        </div>
        <GoBackContainer
          arrowTitle={`Back to ${domainToLongName(domain)} page`}
          link={`/${domain}`}
        />
        <ContainerFAQContact />
      </div>

      <Footer />
    </div>
  );
};

export default StaticPage;
