import React, { useContext } from "react";
import Image from "next/image";
import useAxios from "../hooks/useAxios";
import { useRouter } from "next/router";
import TimeAgo from "javascript-time-ago";
import en from "javascript-time-ago/locale/en";
{
  /* STYLES */
}
import styles from "./offers_JobOffersPage.module.scss";

{
  /* IMG */
}
import jobImg from "../../web/assets/images/miscellaneous/job_logo_testing.png";
import contract from "../assets/images/icons/contract2.png";
import location from "../assets/images/icons/base.png";
import date from "../assets/images/icons/calendar.png";
import salary from "../assets/images/icons/salary.png";
import certificates from "../assets/images/icons/certificate.png";
import aircraft from "../assets/images/icons/aircraft.png";
import hours from "../assets/images/icons/hours.png";
import benefits from "../assets/images/icons/benefits.png";
import roster from "../assets/images/icons/roster.png";

{
  /* COMPONENTS */
}

import { JobOffer } from "./DomainMainStaticCMP";
import Mini_Header from "./Header";
import ContainerFAQContact from "./FAQ_Contact_Container";
import GoBackContainer from "./GoBackContainer";
import Footer from "./Footer";
import { domainToLongName } from "../utils/domainToLongName";
import DOMPurify from "dompurify";

function JobOffersPage({ domain }: { domain: string }) {
  const router = useRouter();
  const { id } = router.query;
  const jobs = useAxios<JobOffer[]>({
    url: `http://localhost:5000/jobs/offers?domain=${domain}&id=${id}`,
    initialValue: [],
    transform: (offers) =>
      offers.map((offer) => ({
        ...offer,
        content: DOMPurify.sanitize(offer.content),
      })),
  });

  {
    /* javascript-time-ago shenaningans */
  }
  TimeAgo.addDefaultLocale(en);
  const timeAgo = new TimeAgo("en-GB");
  {
    /* /javascript-time-ago shenaningans */
  }

  const JobDetails =
    jobs[0] != null
      ? [
          {
            id: 1,
            container: "Type of offer:",
            title: "Contract",
            image: contract,
          },
          {
            id: 2,
            container: "Base:",
            title: jobs[0].base,
            image: location,
          },
          {
            id: 3,
            container: "Created at:",
            title: `${new Date(jobs[0].created_at).toLocaleDateString("en-GB", {
              weekday: "short",
              year: "numeric",
              month: "long",
              day: "numeric",
            })}`,
            timeago: `${timeAgo.format(new Date(jobs[0].created_at))}`,
            image: date,
          },
          {
            id: 4,
            container: "Salary:",
            title: `${jobs[0].salary}€`,
            image: salary,
          },
        ]
      : undefined;

  const JobReqDetails =
    jobs[0] != null
      ? [
          {
            id: 1,
            container: "Certificates",
            title: `${jobs[0].certificates}`,
            image: certificates,
          },
          {
            id: 2,
            container: "Min hours:",
            title: `${jobs[0].min_hours}h`,
            image: hours,
          },

          {
            id: 3,
            container: "Aircraft:",
            title: jobs[0].aircraft_type,
            image: aircraft,
          },
        ]
      : undefined;

  const JobIncentives =
    jobs[0] != null
      ? [
          {
            id: 1,
            container: "Benefits",
            title: `${jobs[0].benefits}`,
            image: benefits,
          },
          {
            id: 2,
            container: "Roster",
            title: `${jobs[0].roster}h`,
            image: roster,
          },
        ]
      : undefined;

  console.log(jobs);
  return (
    <>
      {jobs[0] != undefined ? (
        <div id={styles.domainPage}>
          <Mini_Header title={jobs[0].title} Scssdomain={domain} />
          <div>{`${timeAgo.format(new Date())}`}</div>
          <div
            className={`${
              styles.containerDomain
            } ${"container mx-auto sm:px-0"}`}
          >
            <div id={styles.offer}>
              <div className={styles.offerMainContainer}>
                <div className={styles["job-offers-first-container"]}>
                  <div className={`${styles["job-offer-container"]}`}>
                    <div className={styles["job-offer-list-item-role"]}>
                      Offer
                    </div>
                    <div className={styles["job-offer-logo-name"]}>
                      <div
                        className={styles["job-offer-list-item-companyimage"]}
                      >
                        <Image src={jobImg} alt={"offer-img"} />
                      </div>
                      <div className={styles["job-offer-list-item-company"]}>
                        {jobs[0].airline}
                      </div>
                    </div>

                    <div className={` ${"flex flex-row justify-between"}`}>
                      <div
                        className={`${styles["job-offer-list-item-details"]}`}
                      >
                        {JobDetails.map((job) => (
                          <div
                            className={styles["job-offer-list-item-individual"]}
                          >
                            <Image
                              src={job.image}
                              height={25}
                              width={25}
                              alt="base"
                            />
                            <h2 className={styles.containerTitle}>
                              {job.container}
                            </h2>
                            <p className={styles.containerParagraph}>
                              {job.title}
                            </p>
                            {job.timeago != undefined ? (
                              <p className={styles.timeago}>{job.timeago}</p>
                            ) : null}
                          </div>
                        ))}
                      </div>
                    </div>
                  </div>
                  <div className={styles["job-offer-list-benefits"]}>
                    <div>
                      <div className={styles["job-offer-list-item-role"]}>
                        Incentives
                      </div>
                      <div className="flex flex-row flex-wrap justify-between">
                        {JobIncentives.map((incentive) => (
                          <div
                            className={styles["job-offer-list-item-individual"]}
                          >
                            <Image
                              src={incentive.image}
                              height={25}
                              width={25}
                              alt="base"
                            />
                            <h2 className={styles.containerTitle}>
                              {incentive.container}
                            </h2>
                            <p className={styles.containerParagraph}>
                              {incentive.title}
                            </p>
                          </div>
                        ))}
                      </div>
                    </div>
                  </div>
                </div>

                <div
                  className={styles["job-offer-list-content-details-benefits"]}
                >
                  <div className={`${styles["job-offer-list-content"]}`}>
                    <div>
                      <div className={styles["job-offer-list-item-role"]}>
                        Description
                      </div>
                      <div
                        dangerouslySetInnerHTML={{ __html: jobs[0].content }}
                      />
                    </div>
                  </div>

                  <div className={styles["job-offer-list-req"]}>
                    <div className={styles["job-offer-list-item-role"]}>
                      Requirements
                    </div>
                    <div className={`${styles["job-offer-list-item-details"]}`}>
                      {JobReqDetails.map((detail) => (
                        <div
                          className={
                            styles["job-offer-list-item-individual-req"]
                          }
                        >
                          <Image
                            src={detail.image}
                            height={25}
                            width={25}
                            alt="base"
                          />
                          <h2 className={styles.containerTitle}>
                            {detail.container}
                          </h2>
                          <p className={styles.containerParagraphReq}>
                            {detail.title}
                          </p>
                        </div>
                      ))}
                    </div>
                  </div>
                </div>
              </div>
              {/* <ul>
                <li>company={jobs[0].airline}</li>
                <li>title={jobs[0].title}</li>
                <li>job_type={jobs[0].job_type}</li>
                <li>base={jobs[0].base}</li>
                <li>status={jobs[0].status}</li>
                <li>content={jobs[0].content}</li>
                <li>rating={jobs[0].rating}</li>
                <li>position={jobs[0].position}</li>
                <li>aircraft_type={jobs[0].aircraft_type}</li>
                <li>min_hours={jobs[0].min_hours}h</li>
                <li>certificates={jobs[0].certificate}</li>
                <li>roster={jobs[0].roster}</li>
                <li>insurance={jobs[0].insurance}</li>
                <li>salary={jobs[0].salary}€</li>
                <li>benefits={jobs[0].benefits}</li>
                <li>apply_type={jobs[0].apply_type}</li>
                <li>apply_link={jobs[0].apply_link}</li>
                <li>apply_phone={jobs[0].apply_phone}</li>
                <li>apply_email={jobs[0].apply_email}</li>
              </ul>*/}
            </div>
            <div className={`container mx-auto sm:px-0`}>
              <ContainerFAQContact />
            </div>
            <GoBackContainer
              arrowTitle={`Back to ${domainToLongName(domain)} job offers`}
              link={`/${domain}/offers`}
            />
            <Footer />
          </div>
        </div>
      ) : (
        <p>Loading...</p>
      )}
    </>
  );
}

export default JobOffersPage;

{
}
