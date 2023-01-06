import React from "react";
{
  /* STYLES */
}
import styles from "./jobs.module.scss";
import stylesB from "../../components/generalButton.module.scss";

{
  /* COMPONENTS */
}
import Mini_Header from "../../components/Header";
import Footer from "../../components/Footer";
import GoBackHome from "../../components/GoBackContainer";
import InsightsContainer from "../../components/Domain_AirlineContainer";
import ContainerFAQContact from "../../components/FAQ_Contact_Container";
import ButtonCMP from "../../components/GeneralButton";

{
  /* IMAGES */
}
import JobTilesContainer from "../../components/Domain_JobTilesContainer";
import JobOffersContainer from "../../components/Domain_JobOffersContainer";

function Jobs() {
  return (
    <div id={"page"}>
      <Mini_Header title={"Available Jobs"} />

      <div className={"container mx-auto sm:px-0"}>
        <JobOffersContainer />
        <ButtonCMP
          route={"/"}
          buttontext={"SEE MORE OFFERS"}
          cSass={`${stylesB["see-more-btn"]}`}
        />
        <JobTilesContainer />
        <InsightsContainer />

        {/* FAQ & CONTACT US COMPONENT*/}
        <div
          className={`container mx-auto sm:px-0 ${styles["mainpage-faqcontact"]}`}
        >
          <ContainerFAQContact />
        </div>
        {/* 

  @widget('GoBack', [
      'back_url' => '/offers',
      'back_text' => 'learn more',
      'reverse' => true,
      'class' => 'widget-3 widget-jobs',
      'image' => asset('css/skyhub/images/widget/bg-widget-jobs.png'),
      'title' => 'Jobs',
      'subtitle' => 'Current offers'
  ])

  @widget('GoHomepage')

*/}
        <GoBackHome />
      </div>

      <Footer />
    </div>
  );
}

export default Jobs;
