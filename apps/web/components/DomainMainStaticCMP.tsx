import React, { useEffect, useState } from "react";
import useAxios from "../hooks/useAxios";
/* STYLES */
import styles from "../components/staticpage.module.scss"
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
import axios from "axios";
import JobOffersContainerContext from "../contexts/JobOffersContainerContext";

export interface JobOffer {
  id: number;
  title: string;
  company: string;
  base: string;
  link: string;
}

export default function MainStaticCMP({ domain }: { domain: string }) {
  const jobs = useAxios<JobOffer[]>({
    url: `http://localhost:5000/static/jobs?domain=${domain}`,
    initialValue: [],
  });

  return (
    <div id={"page"} className={styles[`header-${domain}`]}>
      <Mini_Header title={"Available Jobs"} />

      <div className={"container mx-auto sm:px-0"}>
        {jobs.slice(0, 3).map((job) => (
          <div className="jobOffersContainer" key={job.id}>
            <JobOffersContainer
              position={job.title}
              company={job.company}
              base={job.base}
              link={domain}
            />
          </div>
        ))}

        <div className="flex flex-row justify-center mb-10">
          <ButtonCMP
            route={`/${domain}/offers`}
            buttontext={"SEE MORE OFFERS"}
            cSass={`${stylesB["see-more-btn"]}`}
          />
        </div>

        <JobTilesContainer domain={domain} />

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
