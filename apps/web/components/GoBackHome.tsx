import styles from "./go_back_home.module.scss";

export default function GoBackHome() {
  return (
    <div className={`flex flex-wrap  ${styles["goback-maincontainer"]}`}>
      <div
        className={`md:w-full pr-4 pl-4 ${styles["goback-componentcontainer"]}`}
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
        </div>
      </div>
    </div>
  );
}
