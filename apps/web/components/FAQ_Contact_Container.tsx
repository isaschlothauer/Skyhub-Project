import * as React from "react";
import { useRouter } from "next/router";

{
  /*STYLES*/
}
import styles from "../components/faq_contactContainer.module.scss";
import stylesFC from "../components/faq_contactTile.module.scss";
import stylesArrow from "../components/arrowButton.module.scss";

{
  /*COMPONENTS*/
}
import { LearnMoreArrow } from "./ArrowButton";
import FAQContact from "./FAQ_ContactTile";
{
  /*IMAGES*/
}
import FAQTile from "../assets/images/widget/FAQWidget.jpg";
import ContactTile from "../assets/images/widget/ContactUsWidget.jpg";
import Link from "next/link";

const arrowButtons = [
  {
    id: 1,
    arrowtext: "Open a Ticket",
    cSass: stylesArrow["arrow-faqcontact"],
  },
  {
    id: 2,
    arrowtext: "Check Now",
    cSass: stylesArrow["arrow-faqcontact"],
  },
  {
    id: 3,
    arrowtext: "Learn More",
    cSass: stylesArrow["arrow-jobs"],
  },
];

const fcTiles = [
  {
    id: 1,
    tilename: "FAQ",
    subtilename: "How can we help you?",
    cSass: stylesFC["contactus-container"],
    cSass2nd: stylesFC["faqcontact-maintextfaq"],
    cTailwind: `w-full w-[calc(33.33%-0.5rem)] ${stylesFC["faqcontact-generalcontainer"]}`,
    picture: FAQTile,
    linkT: "/faq",
    arrowbmap: arrowButtons
      .slice(1, 2)
      .map((arrowbutton) => (
        <LearnMoreArrow
          key={arrowbutton.id}
          arrowtext={arrowbutton.arrowtext}
          cSass={arrowbutton.cSass}
          link={"/faq"}
        />
      )),
  },

  {
    id: 2,
    tilename: "Contact Us",
    subtilename: "Do you have questions?",
    cSass: stylesFC["faq-container"],
    cSass2nd: stylesFC["faqcontact-maintextcontact"],
    cTailwind: `w-full w-[calc(66.66%-0.5rem)] ${stylesFC["faqcontact-generalcontainer"]}`,
    picture: ContactTile,
    linkT: "/contacts",
    arrowbmap: arrowButtons
      .slice(0, 1)
      .map((arrowbutton) => (
        <LearnMoreArrow
          key={arrowbutton.id}
          arrowtext={arrowbutton.arrowtext}
          cSass={arrowbutton.cSass}
          link={"/contacts"}
        />
      )),
  },
];

const ContainerFAQContact = () => {
  const router = useRouter();
  return (
    <div
      className={`container mx-auto sm:px-0 ${styles["containerfaqcontact"]}`}
    >
      <div className={"flex items-end gap-4 flex-nowrap"}>
        {fcTiles.map((fctile) => (
          <FAQContact
            tilename={fctile.tilename}
            cSass={fctile.cSass}
            cSass2nd={fctile.cSass2nd}
            subtilename={fctile.subtilename}
            cTailwind={fctile.cTailwind}
            picture={fctile.picture}
            arrowbinfo={fctile.arrowbmap}
          />
        ))}
      </div>
    </div>
  );
};

export default ContainerFAQContact;
