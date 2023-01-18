import React, { useContext } from "react";
import Image from "next/image";

{
  /* STYLES */
}
import styles from "./domain_jobOffersContainer.module.scss";

{
  /* IMG */
}
import jobImg from "../../web/assets/images/miscellaneous/job_logo_testing.png";
import { JobOffer } from "./DomainMainStaticCMP";
import useAxios from "../hooks/useAxios";
import { useRouter } from "next/router";
import Mini_Header from "./Header";
import ContainerFAQContact from "./FAQ_Contact_Container";
import GoBackContainer from "./GoBackContainer";
import Footer from "./Footer";
import { domainToLongName } from "../utils/domainToLongName";

function JobOffersPage({ domain }: { domain: string }) {
  const router = useRouter();
  const { id } = router.query;
  const jobs = useAxios<JobOffer[]>({
    url: `http://localhost:5000/jobs/offers?domain=${domain}&id=${id}`,
    initialValue: [],
  });
  console.log(jobs);

  return (
    <div id={styles.domainPage}>
      <Mini_Header title={"jobs[0].title"} Scssdomain={domain} />
      <div
        className={`${styles.containerDomain} ${"container mx-auto sm:px-0 "}`}
      >
        <div id={styles.offers}>
          {jobs.map((job) => (
            <>
              <div className={`${styles["job-offer-list-item"]}`} key={job.id}>
                <div className={"flex flex-col justify-between"}>
                  <div>
                    <div className={styles["job-offer-list-item-role"]}>
                      {job.title}
                    </div>
                    <div className={styles["job-offer-list-item-company"]}>
                      {job.company}
                    </div>
                  </div>
                </div>

                <div
                  className={`${
                    styles["job-offer-item-and-images"]
                  } ${"flex flex-row justify-between"}`}
                >
                  <div className={`${styles["job-offer-list-item-details"]}`}>
                    <div className={styles["job-offer-list-item-contract"]}>
                      <p>Contract</p>
                    </div>
                    <div className={styles["job-offer-list-item-location"]}>
                      <p>{job.base}</p>
                    </div>
                    <div className={styles["job-offer-list-item-date"]}>
                      <p>1 year ago</p>
                    </div>
                  </div>

                  <div className={`${styles["job-image-and-arrow"]}`}>
                    <div className={styles["job-offer-list-item-image"]}>
                      <Image src={jobImg} alt={"offer-img"} />
                    </div>
                    <div></div>
                  </div>
                </div>
              </div>
              <ul>
                <li>company={jobs[0].company}</li>
                <li>title={jobs[0].title}</li>
                <li>job_type={jobs[0].jog_type}</li>
                <li>base={jobs[0].base}</li>
                <li>status={jobs[0].status}</li>
                <li>content={jobs[0].content}</li>
                <li>rating={jobs[0].rating}</li>
                <li>position={jobs[0].position}</li>
                <li>aircraft_type={jobs[0].aircraft_type}</li>
                <li>min_hours={jobs[0].min_hours}</li>
                <li>certificates={jobs[0].certificates}</li>
                <li>roster={jobs[0].roster}</li>
                <li>insurance={jobs[0].insurance}</li>
                <li>salary={jobs[0].salary}</li>
                <li>benefits={jobs[0].benefits}</li>
                <li>apply_type={jobs[0].apply_type}</li>
                <li>apply_link={jobs[0].apply_link}</li>
                <li>apply_phone={jobs[0].apply_phone}</li>
              </ul>
            </>
          ))}
        </div>
        <div className={`container mx-auto sm:px-0`}>
          <ContainerFAQContact />
        </div>
        <GoBackContainer
          arrowTitle={`Back to ${domainToLongName(domain)} page`}
          link={`/${domain}`}
        />
        <Footer />
      </div>
    </div>
  );
}

export default JobOffersPage;

{
}
