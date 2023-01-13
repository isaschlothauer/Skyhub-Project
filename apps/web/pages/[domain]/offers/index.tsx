import React, { useContext } from "react";

{
  /* STYLES */
}
import styles from "./offers.module.scss";

{
  /* COMPONENTS */
}
import Mini_Header from "../../../components/Header";
import Footer from "../../../components/Footer";
import JobTilesContainer from "../../../components/Domain_JobOffersContainer";
import GoBackContainer from "../../../components/GoBackContainer";

{
  /* CONTEXT */
}
import JobOffersContainerContext from "../../../contexts/JobOffersContainerContext";

import useAxios from "../../../hooks/useAxios";
import { JobOffer } from "../../../components/DomainMainStaticCMP";
import { useRouter } from "next/router";

export default function Offers() {
  const router = useRouter();
  const { domain } = router.query;

  const jobs = useAxios<JobOffer[]>({
    url: `http://localhost:5000/static/jobs?domain=${domain}`,
    initialValue: [],
  });

  return (
    <div id={"page"}>
      <Mini_Header title={"Job Offers"} />
      <div className="container mx-auto sm:px-4">
        <div
          className={
            "flex flex-wrap"
          } /* style="position: relative; z-index: 5; display: none;" */
        >
          <div className={"md:w-full pr-4 pl-4"}>
            <div id={styles["offers-filter"]}>
              <div className={"flex flex-wrap"}>
                <div className={"md:w-3/4 pr-4 pl-4"}>
                  <div className={styles["sky-select"]}>
                    <div className={styles["sky-select-content"]}>
                      <label className={styles["sky-select-label"]}>
                        Fow what position are you looking for?
                      </label>
                      <select>
                        <option value="1">Hejo</option>
                        <option value="2">Hejo 2</option>
                        <option value="3">Hejo 3</option>
                        <option value="4">Hejo 4</option>
                        <option value="5">Hejo 5</option>
                      </select>
                      <div className={styles["sky-select-help"]}></div>
                    </div>
                  </div>
                </div>
                <div className={"md:w-1/4 pr-4 pl-4"}>
                  <button
                    type="submit"
                    className={`${"btn"} ${"btn-lg"} ${"btn-pink"} ${"btn-full-width"} ${"btn-rounded"}`}
                  >
                    Search
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id={styles.offers} className={styles["offers-branding"]}>
          {jobs.slice(/* TODO */).map((job) => (
            <JobTilesContainer
              position={job.title}
              company={job.company}
              base={job.base}
              link={"#"}
            />
          ))}
        </div>
        <div
          className={`${"flex flex-wrap items-end"} ${styles["row-widgets"]}}`}
        ></div>
        <GoBackContainer
          arrowTitle={"Go Back to 'Domain' Page"}
          link={"/jobs"}
        />
      </div>
      <Footer />
    </div>
  );
}
