import * as React from "react";
import FAQContact from "../components/FAQ_contact_tile";

{
  /*STYLES*/
}
import styles from "../components/containerFAQContact.module.scss";
import stylesFC from "../components/FAQ_Contact.module.scss";
import stylesArrow from "../components/LearnMoreArrow.module.scss";

{
  /*COMPONENTS*/
}
import { LearnMoreArrow } from "../components/LearnMoreArrow";

{
  /*IMAGES*/
}
import FAQTile from "../assets/images/widget/bg-widget-check.png";
import ContactTile from "../assets/images/widget/bg-widget-contact.png";

const arrowButtons = [
  {
    arrowtext: "Open a Ticket",
    cSass: stylesArrow["arrow-faqcontact"],
  },
  {
    arrowtext: "Check Now",
    cSass: stylesArrow["arrow-faqcontact"],
  },
  {
    arrowtext: "Learn More",
    cSass: stylesArrow["arrow-jobs"],
  },
];

const fcTiles = [
  {
    tilename: "FAQ",
    subtilename: "How can we help you?",
    cSass: stylesFC["contactus-container"],
    cTailwind: "md:w-1/3 pr-2 pl-2",
    picture: FAQTile,
    arrowbmap: arrowButtons
      .slice(1, 2)
      .map((arrowbutton) => (
        <LearnMoreArrow
          arrowtext={arrowbutton.arrowtext}
          cSass={arrowbutton.cSass}
          link={"/faq"}
        />
      )),
  },

  {
    tilename: "Contact Us",
    subtilename: "Do you have questions?",
    cSass: stylesFC["faq-container"],
    cTailwind: "md:w-2/3 pr-2 pl-2",
    picture: ContactTile,
    arrowbmap: arrowButtons
      .slice(1, 2)
      .map((arrowbutton) => (
        <LearnMoreArrow
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
