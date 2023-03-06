import React, { useEffect, useState } from "react";
import TimeAgo from "javascript-time-ago";
import en from "javascript-time-ago/locale/en";
import { useRouter } from "next/router";
import axios from "axios";
import Link from "next/link";
import useAxios from "../../../hooks/useAxios";
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
import { JobOffer } from "../../../components/DomainMainStaticCMP";
import { useDebouncedCallback } from "use-debounce";

{
  /* javascript-time-ago shenaningans */
}
TimeAgo.addDefaultLocale(en);
{
  /* /javascript-time-ago shenaningans */
}

const IMAGE_STORAGE_URL = "http://localhost:5080/static";

export interface OffersProps {
  domain: any;
  Scssdomain: string;
}

const Offers = ({}: OffersProps) => {
  const router = useRouter();

  const { domain } = router.query; //REVIEW THIS - It was giving a duplication problem with the interface.
  const [imagesMap, setImagesMap] = useState<Map<string, string>>();
  // const [jobType, setJobType] = useState<string[]>([]);

  const jobs = useAxios<JobOffer[]>({
    // TODO: paging
    url: `http://localhost:5000/jobs/?domain=${domain}`,
    initialValue: [],
    transform: (offers) => {
      // Generate map of images related to airline id
      const _imagesMap = new Map();
      Promise.all(
        offers.map((offer) => {
          // setJobType(offer.job_type);
          return axios
            .get(`http://localhost:5000/images?airline=${offer.company}`)
            .then((result) => {
              _imagesMap.set(
                offer.company,
                IMAGE_STORAGE_URL + result.data[0].source
              );
            });
        })
      ).then(() => {
        setImagesMap(_imagesMap);
      });

      // We don't change offers themselves
      return offers;
    },
  });

  const [searchJobType, setSearchJobType] = useState<string>("");

  const debounced = useDebouncedCallback((value) => {
    setSearchJobType(value);
  }, 500);

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
        <div className={styles["faq-search"]}>
          <input
            type={"text"}
            name={"job_type-search"}
            placeholder="First Officer, Lufthansa, Athens..."
            onChange={(e) => debounced(e.target.value.toLowerCase())}
            className={styles["faq-search-input"]}
          />
        </div>

        <div id={styles.offersContainer}>
          {jobs &&
            jobs
              .filter((singleJobTitle) => {
                return (
                  singleJobTitle.title.toLowerCase().includes(searchJobType) ||
                  singleJobTitle.company
                    .toLowerCase()
                    .includes(searchJobType) ||
                  singleJobTitle.base.toLowerCase().includes(searchJobType)
                );
              })
              .slice(/* TODO */)
              .reverse()
              .map((job) => (
                <Link href={`/${domain}/offers/${job.id}`}>
                  <JobOffersContainer
                    position={job.title}
                    company={job.company}
                    base={job.base}
                    date={job.date}
                    link={`/${domain}/offers/${job.id}`}
                    imageSrc={
                      imagesMap ? imagesMap.get(job.company) : undefined
                    }
                  />
                </Link>
              ))}
        </div>
      </div>
      <div
        onClick={() => {
          router.push(`/${domain}`);
        }}
      >
        <GoBackContainer
          arrowTitle={`Back to ${domainToLongName(domainClean)} page`}
          link={`/${domain}`}
        />
      </div>
      <Footer />
    </div>
  );
};

export default Offers;
