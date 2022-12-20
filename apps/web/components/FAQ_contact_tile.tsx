import * as React from "react";
import styles from "./FAQ_Contact.module.scss";
import Image from "next/image";
import widgetcheck from "../assets/images/widget/bg-widget-check.png";
import widgetcontact from "../assets/images/widget/bg-widget-contact.png";
import Link from "next/link";

export interface FAQContactProps {
  label: string;
  subtext?: string;
  sprop: string;
  tailwindclass: string;
  pic: StaticImageData;
}

export const FAQContact = ({
  label,
  subtext,
  sprop,
  tailwindclass,
  pic,
}: FAQContactProps) => {
  return (
    <>
      <div className={tailwindclass}>
        <div className={`${styles.faqcontact} ${sprop}`}>
          <Image src={pic} alt="widgetcheck" />
          <div className={styles["faqcontact-textoverlay"]}>
            <div>
              <Link href="/faq" />
              <div className={styles["faqcontact-subtext"]}>{subtext}</div>
              <div className={styles["faqcontact-maintext"]}>{label}</div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default FAQContact;
