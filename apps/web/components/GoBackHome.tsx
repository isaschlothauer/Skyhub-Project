import styles from "./go_back_home.module.scss";

{
  /*STYLES*/
}
import stylesArrow from "../components/LearnMoreArrow.module.scss";

{
  /*COMPONENTS*/
}
import { LearnMoreArrow } from "./LearnMoreArrow";

export default function GoBackHome() {
  return (
    <div className="container mx-auto sm:px-0">
      <div className={`flex flex-wrap ${styles["goback-maincontainer"]}`}>
        <div
          className={`md:w-full pr-2 pl-2 ${styles["goback-componentcontainer"]}`}
        >
          <div
            className={styles["goback-textcontainer"]}
            onclick="window.open(`http://{{ env('MAIN_DOMAIN') }}`, '_self')"
            /* style="cursor:pointer;" */
          >
            <div>
              <div className={styles["goback-subtext"]}>
                Didn't find what you were looking for?
              </div>
              <div className={styles["goback-maintext"]}>
                Start again from the <span>beginning</span>...
              </div>
            </div>
            <LearnMoreArrow
              cSass={stylesArrow["arrow-gobackhome"]}
              arrowtext="Go to Homepage"
            />
          </div>
        </div>
      </div>
    </div>
  );
}
