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
import Select from "../../../components/Select";

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
  const [jobType, setJobType] = useState([""]);

  const jobs = useAxios<JobOffer[]>({
    // TODO: paging
    url: `http://localhost:5000/jobs/?domain=${domain}`,
    initialValue: [],
    transform: (offers) => {
      // Generate map of images related to airline id
      const _imagesMap = new Map();
      const _jobType = new Map();
      Promise.all(
        offers.map((offer) => {
          axios
            .get(`http://localhost:5000/images?airline=${offer.company}`)
            .then((result) => {
              console.log("result.data", result.data);
              _imagesMap.set(
                offer.company,
                IMAGE_STORAGE_URL + result.data[0].source
              );
            });
          setJobType(offer.job_type);
        })
      ).then(() => {
        // console.log("_imagesMap", _imagesMap);
        setImagesMap(_imagesMap);
      });

      // We don't change offers themselves
      return offers;
    },
  });

  console.log("jobs", jobs);
  console.log("jobType", jobType.toString().split(", "));

  const [selectJobType, setSelectJobType] = useState<string>("");
  const handleSelectedJobType = (e) => {
    setSelectJobType(e.target.value);
  };

  const [showAll, setShowAll] = useState<boolean>(false);
  const handleClick = () => {
    setShowAll(!showAll);
  };

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
            "flex flex-row space-x-4 justify-around items-center px-10 mx-auto h-32 rounded-[33px] bg-white mb-[60px] mt-[20px] shadow-main"
          }
        >
          <select
            className={styles.Select}
            value={selectJobType}
            onChange={handleSelectedJobType}
          >
            <option value="">job type</option>
            {jobType.toString().split(", ").map((job) => (
              <option
                value={job}
                // key={jobType ? jobType.get(job.id) : undefined}
              >
                {job}
              </option>
            ))}
          </select>
        </div>
        <div id={styles.offersContainer}>
          {jobs
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
                  imageSrc={imagesMap ? imagesMap.get(job.company) : undefined}
                />
              </Link>
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
