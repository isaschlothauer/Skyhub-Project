import React, { useContext } from "react";

{
  /* STYLES */
}
import styles from "./offers.module.scss";
import stylesS from "../../../components/staticpage.module.scss";

{
  /* COMPONENTS */
}
import Mini_Header from "../../../components/Header";
import Footer from "../../../components/Footer";
import JobOffersContainer from "../../../components/Domain_JobOffersContainer";
import GoBackContainer from "../../../components/GoBackContainer";
import { domainToLongName } from "../../../utils/domainToLongName";
import TimeAgo from "javascript-time-ago";
import en from "javascript-time-ago/locale/en";

import useAxios from "../../../hooks/useAxios";
import { JobOffer } from "../../../components/DomainMainStaticCMP";
import { useRouter } from "next/router";

export interface OffersProps {
  domain: any;
  Scssdomain: string;
}
const Offers = ({}: OffersProps) => {
  const router = useRouter();
  const { domain } = router.query; //REVIEW THIS - It was giving a duplication problem with the interface.

  const jobs = useAxios<JobOffer[]>({
    url: `http://localhost:5000/jobs/?domain=${domain}`,
    initialValue: [],
  });

  const airlineName = jobs[0] != null ? jobs[0].company : undefined;
  const imageSRC = useAxios<JobOffer[]>({
    url: `http://localhost:5000/images?airline=${airlineName}`,
    initialValue: [],
  });

  const apiUrlImages = "http://localhost:5080/static";

  const mainImage =
    imageSRC[0] != null ? apiUrlImages.concat(imageSRC[0].source) : undefined;

  console.log(airlineName);
  console.log(mainImage); //cd pro

  {
    /* javascript-time-ago shenaningans */
  }
  TimeAgo.addDefaultLocale(en);
  {
    /* /javascript-time-ago shenaningans */
  }

  const domainClean: string = domain
    ? typeof domain === typeof ""
      ? (domain as string)
      : domain[0]
    : "";

  return (
    <div id={stylesS.domainPage}>
      <Mini_Header title={"Job Offers"} Scssdomain={domainClean} />
      <div
        className={` ${styles.containerDomain} ${"container mx-auto sm:px-4 "}`}
      >
        <div
          className={
            "flex flex-wrap"
          } /* style="position: relative; z-index: 5; display: none;" */
        ></div>
        <div id={styles.offersContainer}>
          {jobs.slice(/* TODO */).map((job) => (
            <JobOffersContainer
              position={job.title}
              company={job.company}
              base={job.base}
              date={job.date}
              link={`/${domain}/offers/${job.id}`}
              imageSRC={mainImage}
            />
          ))}
        </div>
        <GoBackContainer
          arrowTitle={`Back to ${domainToLongName(domainClean)} page`}
          link={`/${domain}`}
        />
        <Footer />
      </div>
    </div>
  );
};

export default Offers;
