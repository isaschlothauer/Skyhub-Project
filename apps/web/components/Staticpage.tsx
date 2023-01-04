import * as React from "react";
import { ReactElement } from "react";
import { useEffect, useState } from "react";
import { useRouter } from "next/router";
import axios from "axios";


{/*STYLES*/}
import styles from "./staticpage.module.scss";

{/*COMPONENTS*/}
import Footer from "../components/Footer";
import ContainerFAQContact from "./FAQ_Contact_Container";



export interface StaticProps {
  cSass?: string;
  miniheader?: ReactElement;
}


{/*UseEffect Implementation Test*/}
const StaticPage = ({ cSass, miniheader }: StaticProps) => {

  const [contents, setContents] = useState([]);
  const router = useRouter()
  const { domain, slug } = router.query

  useEffect(() => {
    axios
      .get(`http://localhost:5000/${domain}/${slug}`) 
      .then((response) => response.data)
      .then((data) => setContents(data));
  }, []);

  return (
    <div className={cSass}>
      {miniheader}
      <div className={`container mx-auto sm:pl-0 pr-0`}>
        <div className={"flex flex-wrap"}>
          <div className={`md:w-full pr-3.5 pl-3.5 ${styles["staticpage-content"]}`}>
            <div className={styles["staticpage-databaseinfo"]}>



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
        <ContainerFAQContact/>
      </div>
        
         <Footer />
    </div>
  );
}

export default StaticPage;