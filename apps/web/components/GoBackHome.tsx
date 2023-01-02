import * as React from "react";

import Router from "next/router";
import { LearnMoreArrow } from "./LearnMoreArrow";

{/*STYLES*/}
import styles from "./go_back_home.module.scss";
import stylesArrow from "../components/LearnMoreArrow.module.scss";

{
  /*COMPONENTS*/
}

export default function GoBackHome() {
  return (
    <div className="container mx-auto sm:px-0">
      <div className={`flex flex-wrap ${styles["goback-maincontainer"]}`}>
        <div
          className={`md:w-full pr-2 pl-2 ${styles["goback-componentcontainer"]}`}
        >
          <div
            className={styles["goback-textcontainer"]}


            /* style="cursor:pointer;" */
          >
            <div>
              <div
                className={styles["goback-subtext"]}
                onClick={(e: React.MouseEvent<HTMLDivElement, MouseEvent>) => {
                  Router.push("/");
                }}
              >
                Didn't find what you were looking for?
              </div>
              <div
                className={styles["goback-maintext"]}
                onClick={(e: React.MouseEvent<HTMLDivElement, MouseEvent>) => {
                  Router.push("/");
                }}
              >
                Start again from the <span>beginning</span>...
              </div>

            </div>
            <LearnMoreArrow
              cSass={stylesArrow["arrow-gobackhome"]}
              arrowtext="Go to Homepage"
              link="/"
            />
          </div>
        </div>
      </div>
    </div>
  );
}
