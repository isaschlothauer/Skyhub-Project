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

  const airlineName = jobs[0] != null ? jobs[0].airline : undefined;
  const imageSRC = useAxios<JobOffer[]>({
    url: `http://localhost:5000/images?airline=${airlineName}`,
    initialValue: [],
  });

  const apiUrlImages = "http://localhost:5080/static";

  const mainImage =
    imageSRC[0] != null ? apiUrlImages.concat(imageSRC[0].source) : undefined;

  console.log(airlineName);
  console.log(mainImage);
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
            title: `${jobs[0].salary
              .toString()
              .replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.")}€`,
            image: salary,
          },
        ]
      : undefined;

  const JobReqDetails =
    jobs[0] != null
      ? [
          {
            id: 1,
            container: "Min hours:",
            title: `${jobs[0].min_hours}h`,
            image: hours,
          },

          {
            id: 2,
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
            title: `${jobs[0].roster}`,
            image: roster,
          },
        ]
      : undefined;

  const certificateValues =
    jobs[0] != undefined ? jobs[0].certificates.split(", ") : undefined;

  // console.log(certificateValues);
  return (
    <>
      {jobs[0] != undefined ? (
        <div id={"AllPage"}>
          <Mini_Header title={jobs[0].title} Scssdomain={domain} />
          <div>{`${timeAgo.format(new Date())}`}</div>
          <div className={`${styles.zIndex} ${"container mx-auto sm:px-0"}`}>
            <div className={styles.MainContainer}>
              <div className={styles["first-container"]}>
                <div className={`${styles["offer-container"]}`}>
                  <div className={styles["role"]}>Offer</div>
                  <div className={styles["offer-images"]}>
                    <div className={styles["offer-companyimage"]}>
                      <Image
                        src={mainImage}
                        width={250}
                        height={250}
                        alt={"offer-img"}
                      />
                    </div>
                    <div className={styles["offer-company-name"]}>
                      {jobs[0].airline}
                    </div>
                  </div>

                  <div className={` ${"flex flex-row justify-between"}`}>
                    <div className={`${styles["details"]}`}>
                      {(JobDetails ?? []).map((job) => (
                        <div className={styles["map-individual"]}>
                          <Image
                            src={job.image}
                            height={25}
                            width={25}
                            alt="base"
                          />
                          <h2 className={styles.title}>{job.container}</h2>
                          <p className={styles.paragraph}>{job.title}</p>
                          {job.timeago != undefined ? (
                            <p className={styles.timeago}>{job.timeago}</p>
                          ) : null}
                        </div>
                      ))}
                    </div>
                  </div>
                </div>
                <div className={styles["incentives"]}>
                  <div>
                    <div className={styles["role"]}>Incentives</div>
                    <div className="flex flex-row flex-wrap justify-between">
                      {(JobIncentives ?? []).map((incentive) => (
                        <div className={styles["map-individual"]}>
                          <Image
                            src={incentive.image}
                            height={25}
                            width={25}
                            alt="base"
                          />
                          <h2 className={styles.title}>
                            {incentive.container}
                          </h2>
                          <p className={styles.paragraph}>{incentive.title}</p>
                        </div>
                      ))}
                    </div>
                  </div>
                </div>
              </div>

              <div className={styles["second-container"]}>
                <div className={`${styles["description"]}`}>
                  <div>
                    <div className={styles["role"]}>Description</div>
                    <div
                      dangerouslySetInnerHTML={{ __html: jobs[0].content }}
                    />
                  </div>
                </div>

                <div className={styles["req"]}>
                  <div className={styles["role"]}>Requirements</div>
                  <div className={`${styles["details"]}`}>
                    {(JobReqDetails ?? []).map((detail) => (
                      <div className={styles["map-individual-req"]}>
                        <Image
                          src={detail.image}
                          height={25}
                          width={25}
                          alt="base"
                        />
                        <h2 className={styles.title}>{detail.container}</h2>
                        <p className={styles.paragraph}>{detail.title}</p>
                      </div>
                    ))}
                    <div className="w-full">
                      <div className={`${styles["certificate-tile"]}`}>
                        <Image
                          src={certificates}
                          height={25}
                          width={25}
                          alt="certificate"
                        />
                        <h2 className={styles.title}>Certificates:</h2>
                        {(certificateValues ?? []).map((certi) => (
                          <p className={styles.paragraph}>{certi}</p>
                        ))}
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            {/*
            
                      {
            id: 1,
            container: "Certificates",
            title: `${jobs[0].certificates}`,
            image: certificates,
          },
            
            <ul>
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
      ) : (
        <p>Loading...</p>
      )}
    </>
  );
}

export default JobOffersPage;

{
}
