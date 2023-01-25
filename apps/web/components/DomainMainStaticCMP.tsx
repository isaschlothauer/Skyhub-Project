import React, { useEffect, useState } from "react";
import useAxios from "../hooks/useAxios";

/* STYLES */
import styles from "../components/staticpage.module.scss";
import stylesB from "../components/generalButton.module.scss";
import stylesC from "./domain_jobOffersContainer.module.scss";

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
import Link from "next/link";

export interface JobOffer {
  date: string;
  roster: JSX.Element;
  created_at: any;
  location: string;
  benefits: string;
  content: string;
  min_hours: number;
  aircraft_type: string;
  certificates: string;
  salary: number;
  airline: string;
  id: number;
  title: string;
  company: string;
  base: string;
  link: string;
}

export default function MainStaticCMP(
  { domain }: { domain: string },
  { cssOffers }: { cssOffers: string }
) {
  const [imagesMap, setImagesMap] = useState<Map<string, string>>();
  const jobs = useAxios<JobOffer[]>({
    // TODO: paging
    url: `http://localhost:5000/jobs/?domain=${domain}`,
    initialValue: [],
    transform: (offers) => {
      // Generate map of images related to airline id
      const _imagesMap = new Map();
      Promise.all(
        // going to wait for all Maping to be done and then setImagesMap all at once
        offers.map((offer) => {
          return axios
            .get(`http://localhost:5000/images?airline=${offer.company}`)
            .then((result) => {
              console.log(result.data);
              _imagesMap.set(
                offer.company,
                "http://localhost:5080/static" + result.data[0].source
              );
            });
        })
      ).then(() => {
        console.log("images map", _imagesMap);
        setImagesMap(_imagesMap);
      });

      // We don't change offers themselves
      return offers;
    },
  });

  console.log("jobs[0]", jobs[0]);

  return (
    <div id={styles.domainPage}>
      <Mini_Header title={"Available Jobs"} Scssdomain={domain} />

      <div
        className={`${stylesC.containerDomain} ${"container mx-auto sm:px-0 "}`}
      >
        {jobs
          .slice(0, 3)
          .reverse()
          .map((job) => (
            <div className="jobOffersContainer" key={job.id}>
              <Link href={`/${domain}/offers/${job.id}`}>
                <JobOffersContainer
                  position={job.title}
                  company={job.company}
                  base={job.base}
                  link={`/${domain}/offers/${job.id}`}
                  date={job.date}
                  imageSrc={imagesMap ? imagesMap.get(job.company) : undefined}
                />
              </Link>
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
        <GoBackContainer arrowTitle={"Go Back to Home"} link={"/"} />
        <Footer />
      </div>
    </div>
  );
}
