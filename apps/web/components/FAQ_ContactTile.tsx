import * as React from "react";
import Image, { StaticImageData } from "next/image";

{
  /*STYLES*/
}
import styles from "./faq_contactTile.module.scss";
import Link from "next/link";

export interface FAQContactProps {
  tilename: string;
  subtilename?: string;
  cSass: string;
  cSass2nd: string;
  cTailwind?: string;
  picture: StaticImageData;
  arrowbinfo: any;
}

export const FAQContact = ({
  tilename,
  subtilename,
  cSass,
  cSass2nd,
  picture,
  arrowbinfo,
  cTailwind,
}: FAQContactProps) => {
  return (
    <div className={`${cTailwind}`}>
      <div className={`${styles.faqcontact} ${cSass}`}>
        <Image src={picture} alt="widgetcheck" />
        <div className={styles["faqcontact-textoverlay"]}>
          <div>
            <div className={styles["faqcontact-subtext"]}>{subtilename}</div>
            <div className={`${cSass2nd}`}>{tilename}</div>
            {arrowbinfo}
          </div>
        </div>
      </div>
    </div>
  );
};

export default FAQContact;
