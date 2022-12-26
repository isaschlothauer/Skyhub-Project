import * as React from "react";
import styles from "./FAQ_Contact.module.scss";
import Image from "next/image";
import Link from "next/link";

export interface FAQContactProps {
  tilename: string;
  subtilename?: string;
  cSass: string;
  cTailwind: string;
  picture: StaticImageData;
  arrowbinfo:string;
}

export const FAQContact = ({
  tilename,
  subtilename,
  cSass,
  cTailwind,
  picture,
  arrowbinfo
}: FAQContactProps) => {
  return (
    <>
      <div className={cTailwind}>
        <div className={`${styles.faqcontact} ${cSass}`}>
          <Image src={picture}  alt="widgetcheck" />
          <div className={styles["faqcontact-textoverlay"]}>
            <div>
              <Link href="/faq" />
              <div className={styles["faqcontact-subtext"]}>{subtilename}</div>
              <div className={styles["faqcontact-maintext"]}>{tilename}</div>
              {arrowbinfo}
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default FAQContact;
