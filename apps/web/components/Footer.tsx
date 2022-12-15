import React from 'react'
import styles from "./Footer.module.scss";

export default function Footer() {
  return (
    <>
    <div id={styles.footer}>
    <div className={styles.container} /* style="position: relative" */>
        <div className={styles["footer-branding"]}></div>
        <div className={`${styles.row} ${styles["align-items-end"]} ${styles["row-links"]}`}>
            <div className={styles["col-md-6"]}>
                <a href="http://{{ env('MAIN_DOMAIN') }}" className={styles.logo}></a>
            </div>
            <div className={styles["col-md-6"]}>
                <div className={`${styles["text-right"]} ${styles["links-top"]}`}>
                    <a href="{{ url('privacy-policy') }}">Privacy Policy</a>
                    <a href="{{ url('terms-of-service') }}">Terms of Service</a>
                </div>
            </div>
        </div>
        <div className={`${styles.row} ${styles["row-copyright"]}`}>
            <div className={styles["col-md-6"]}>
                <div className={styles.copyright}>
                    <span>Copyright  {/*&copy;{{ date('Y') }}*/}. All rights reserved.</span>
                    <a href="http://{{ env('MAIN_DOMAIN') }}">www.skyhub.aero</a>
                </div>
            </div>
            <div className={styles["col-md-6"]}>
                <div className={styles["text-right"]}>
                    {/* TODO: LINKEDIN */}
                    <a className={styles["linked-in"]} href="#">
                        Follow us on
                        <strong>LinkedIn</strong>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
</>
  )
}
