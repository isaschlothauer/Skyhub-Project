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

  {
    /* javascript-time-ago shenaningans */
  }
  TimeAgo.addDefaultLocale(en);
  const timeAgo = new TimeAgo("en-GB");
  {
    /* /javascript-time-ago shenaningans */
  }


  return (
    <div id={stylesS.domainPage}>
      <Mini_Header title={"Job Offers"} Scssdomain={domain} />
      <div
        className={` ${styles.containerDomain} ${"container mx-auto sm:px-4 "}`}
      >
        <div
          className={
            "flex flex-wrap"
          } /* style="position: relative; z-index: 5; display: none;" */
        ></div>
        <div id={styles.offers}>
          {jobs.slice(/* TODO */).map((job) => (
            <JobOffersContainer
              position={job.title}
              company={job.company}
              base={job.base}
              date={job.date}
              link={`/${domain}/offers/${job.id}`}
            />
          ))}
        </div>
        <GoBackContainer
          arrowTitle={`Back to ${domainToLongName(domain)} page`}
          link={`/${domain}`}
        />
        <Footer />
      </div>
    </div>
  );
};

export default Offers;
