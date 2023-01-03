{/*THIS COMES FROM THE LEGACY FILE*/}

import React from "react";
import styles from "./contact_us.module.scss";
import Image from "next/image";
import widgetcontact from "../assets/images/widget/bg-widget-contact.png";

export default function ContactUs() {
  return (
    <>
      {/* CONTACT US COMPONENT */}
      <div className={`${"col-md-8"} ${"px-md-2"}`}>
        <div className={`${styles.widget} ${styles["widget-contact-us"]}`}>
          <Image src={widgetcontact} alt="widgetcontact" />
          <div className={styles["widget-overlay"]}>
            <div
              onClick="window.open('#', '_self')" /* style="cursor:pointer;" */
            >
              <div className={styles["widget-subtitle"]}>
                Do you have questions?
              </div>
              <div className={styles["widget-title"]}>Contact us</div>
              <a href="#" className={styles["widget-link"]}>
                open a ticket
              </a>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
