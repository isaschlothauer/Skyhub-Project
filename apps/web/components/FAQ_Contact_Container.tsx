import * as React from "react";
import FAQContact from "./FAQ_ContactTile";

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

{
  /*IMAGES*/
}
import FAQTile from "../assets/images/widget/FAQWidget.jpg";
import ContactTile from "../assets/images/widget/ContactUsWidget.jpg";

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
    cTailwind: "md:w-1/3 pr-2 pl-2",
    picture: FAQTile,
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
    cTailwind: "md:w-2/3 pr-2 pl-2",
    picture: ContactTile,
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
  return (
    <div
      className={`container mx-auto sm:px-0 ${styles["containerfaqcontact"]}`}
    >
      <div className={`${"flex flex-wrap"} ${"items-end"}`}>
        {fcTiles.map((fctile) => (
          <FAQContact
            key={fctile.id}
            tilename={fctile.tilename}
            cSass={fctile.cSass}
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
