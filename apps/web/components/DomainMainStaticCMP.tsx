import React from "react";
/* STYLES */
import stylesB from "../components/generalButton.module.scss";

{
  /* COMPONENTS */
}
import Mini_Header from "./Header";
import Footer from "./Footer";
import GoBackContainer from "./GoBackContainer";
import AirLineContainer from "./Domain_AirlineContainer";
import ContainerFAQContact from "./FAQ_Contact_Container";
import ButtonCMP from "./GeneralButton";

{
  /* IMAGES */
}
import JobTilesContainer from "./Domain_JobTilesContainer";
import JobOffersContainer from "./Domain_JobOffersContainer";

export default function MainStaticCMP({ domain }) {
  return (
    <div id={"page"}>
      <Mini_Header title={"Available Jobs"} />

      <div className={"container mx-auto sm:px-0"}>
        <JobOffersContainer />
        <div className="flex flex-row justify-center mb-10">
          <ButtonCMP
            route={`/${domain}/offers`}
            buttontext={"SEE MORE OFFERS"}
            cSass={`${stylesB["see-more-btn"]}`}
          />
        </div>

        <JobTilesContainer domain={domain}/>

        <AirLineContainer domain={domain} />

        {/* FAQ & CONTACT US COMPONENT*/}
        <div className={`container mx-auto sm:px-0`}>
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
        <GoBackContainer arrowTitle={"Go Back to Home"} link={"/"} />
      </div>

      <Footer />
    </div>
  );
}
