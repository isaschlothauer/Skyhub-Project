import * as React from "react";

{/*STYLES*/}
import styles from "./Footer.module.scss";



export default function Footer() {
  return (
    <>
      <div id={styles.footer}>
        <div className="container mx-auto sm:px-0" /* style="position: relative" */>
          <div
            className={` flex flex-wrap items-end ${styles["linkswithlogo"]}`}
          >
            <div className="md:w-1/2 pr-3 pl-3">
              <a
                href="http://{{ env('MAIN_DOMAIN') }}"
                className={styles.skyhublogo}
              ></a>
            </div>
            <div className="md:w-1/2 pr-3 pl-3">
              <div className={`text-right ${styles["links"]}`}>
                <a href="{{ url('privacy-policy') }}">Privacy Policy</a>
                <a href="{{ url('terms-of-service') }}">Terms of Service</a>
              </div>
            </div>
          </div>
          <div className={`flex flex-wrap  ${styles["copyrightbox"]}`}>
            <div className="md:w-1/2 pr-3 pl-3">
              <div className={styles.copyrightinfo}>
                <span>
                  Copyright {/*&copy;{{ date('Y') }}*/}. All rights reserved.
                </span>
                <a href="http://{{ env('MAIN_DOMAIN') }}">www.skyhub.aero</a>
              </div>
            </div>
            <div className="md:w-1/2 pr-3 pl-3">
              <div className="text-right">
                {/* TODO: LINKEDIN */}
                <a className={styles["linkedin"]} href="#">
                  Follow us on
                  <strong>LinkedIn</strong>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
