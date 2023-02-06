import * as React from "react";
import { ReactElement } from "react";
import { useEffect, useState } from "react";
import axios from "axios";
import DOMPurify from "dompurify";
import { useRouter } from "next/router";
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
  const router = useRouter();
  const [title, setTitle] = useState("");
  const [contents, setContents] = useState("");
  const [cssClass, setCssClass] = useState("");

  useEffect(() => {
    axios
      .get<{ content: string; title: string; css_class: string }>(
        `http://localhost:5000/static/${domain}/${slug}`
      )
      .then((response) => response.data)
      .then(({ content, title, css_class }) => {
        setTitle(title);
        setCssClass(css_class);
        const clean = DOMPurify.sanitize(content);
        setContents(clean);
      });
  }, []);

  return (
    <div className={`${cSass} ${cssClass} ${styles["staticpage"]}`}>
      {miniheader ?? <Mini_Header title={title} Scssdomain={domain} />}
      <div
        className={`container mx-auto pt-[20rem] sm:pl-0 pr-0 ${styles["staticpage-padding"]}`}
      >
        <div className={"flex flex-wrap"}>
          <div
            className={`md:w-full pr-3.5 pl-3.5 ${styles["staticpage-content"]}`}
          >
            <div className={styles["staticpage-databaseinfo"]}>
              <div dangerouslySetInnerHTML={{ __html: contents }} />
            </div>
          </div>
        </div>
        <div
          onClick={() => {
            router.push(`/${domain}`);
          }}
        >
          <ContainerFAQContact />
        </div>
        <div
          onClick={() => {
            router.push(`/${domain}`);
          }}
        >
          <GoBackContainer
            arrowTitle={`Back to ${domainToLongName(domain)} page`}
            link={`/${domain}`}
          />
        </div>
      </div>

      <Footer />
    </div>
  );
};

export default StaticPage;
