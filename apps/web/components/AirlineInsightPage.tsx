import * as React from "react";
import Image from "next/image";
import Mini_Header from "./Header";
import SalaryMobile from "./SalaryMobile";
import SalaryTablet from "./SalaryTablet";

import styles from "./airline_insight_page.module.scss";
import AirlineInfoTiles from "./AirlineInfoTiles";

// images
import aircraft from "../../web/assets/images/icons/aircraft.png";

// images
import IconRankCaptain from "../assets/images/icons/icon-rank-captain.png";
import IconRankSFO from "../assets/images/icons/icon-rank-sfo.png";
import IconRankFO from "../assets/images/icons/icon-rank-fo.png";
import IconRankSO from "../assets/images/icons/icon-rank-so.png";
import { StaticImageData } from "next/image";
import SalaryDesktop from "./SalaryDesktop";

export type GeneralAirlineProps = {
  domain: string;
  slug: string;
  airlineInfo: AirlineInformationType;
};

export type AirlineSalary = {
  title: string;
  min: number;
  avg: number;
  max: number;
  icon: StaticImageData;
};
export type AirlineSalaries = {
  [key: string]: AirlineSalary[];
};

const buildSalaries = (
  airlineInfo: AirlineInformationType
): AirlineSalaries => {
  return {
    pilot: [
      {
        title: "Captain",
        min: airlineInfo.salary_captain_min,
        avg: airlineInfo.salary_captain_avg,
        max: airlineInfo.salary_captain_max,
        icon: IconRankCaptain,
      },
      {
        title: "Senior First Officer",
        min: airlineInfo.salary_sfo_min,
        avg: airlineInfo.salary_sfo_avg,
        max: airlineInfo.salary_sfo_max,
        icon: IconRankSFO,
      },
      {
        title: "First Officer",
        min: airlineInfo.salary_fo_min,
        avg: airlineInfo.salary_fo_avg,
        max: airlineInfo.salary_fo_max,
        icon: IconRankFO,
      },
      {
        title: "Second Officer",
        min: airlineInfo.salary_so_min,
        avg: airlineInfo.salary_so_avg,
        max: airlineInfo.salary_so_max,
        icon: IconRankSO,
      },
    ],
  };
};

export default function AirlineInsight({
  domain,
  slug,
  airlineInfo,
}: GeneralAirlineProps) {
  if (airlineInfo == null) return <p>Loading...</p>;
  const salaries = buildSalaries(airlineInfo);
  return (
    <div>
      <Mini_Header title={"Airline Insight"} Scssdomain={domain} />
      {/*airline information container*/}
      <div className={styles["all-container-except-salaries"]}>
        <div
          className={`container shadow-main p-4 mobile:top-[15.625rem] tablet:top-[16.25rem] ${styles["airline-information-tile"]}`}
        >
          <h2 className={"nunito text-[#000e94] text-xl font-extrabold mt-4 "}>
            Airline Information
          </h2>
          <Image
            className={`object-contain ${styles["airline-logo"]}`}
            alt="Logo"
            src={`https://pilot.skyhub.staging.d-a-pfeiffer.info/${airlineInfo.src}`}
            width={airlineInfo.width}
            height={airlineInfo.height}
          />
          <p className={"nunito text-[#727481] leading-7"}>Company Name</p>
          <h2
            className={"nunito text-pink-primary font-extrabold text-xl mb-4 "}
          >
            {airlineInfo.name}
          </h2>
          <AirlineInfoTiles airlineInfo={airlineInfo} />
        </div>
        {/*airline information container ends*/}
        <div className={styles["aircraft-assessment-and-benefits-container"]}>
          <div className={styles["aircraft-and-assessment-container"]}>
            {/*aircraft fleet and aircraft orders tile*/}
            <div
              className={`container shadow-main pt-4 pb-7 px-7 ${styles["aircraft-fleet-and-orders-tile"]}`}
            >
              <div className={styles["img-and-h2-container"]}>
                <Image src={aircraft} alt={"aircraft-img"} />
                <h2 className={"nunito text-[#000e94] text-xl font-extrabold"}>
                  Aircraft Fleet
                </h2>
              </div>
              <p
                className={"nunito text-[#727481]"}
                dangerouslySetInnerHTML={{
                  __html: airlineInfo.fleet,
                }}
              ></p>
              <div className={styles["img-and-h2-container"]}>
                <Image src={aircraft} alt={"aircraft-img"} />
                <h2 className={"nunito text-[#000e94] text-xl font-extrabold"}>
                  Aircraft Orders
                </h2>
              </div>
              <p
                className={"nunito text-[#727481]"}
                dangerouslySetInnerHTML={{
                  __html: airlineInfo.orders,
                }}
              ></p>
            </div>
            {/*end of aircraft fleet and aircraft orders tile*/}

            {/*assesment tile*/}
            <div
              className={`container shadow-main ${
                styles[`assessment-tile-${domain}`]
              }`}
            >
              <h2
                className={"nunito text-[#000e94] text-xl font-extrabold mb-4"}
              >
                {airlineInfo.name + " " + airlineInfo.job_type}{" "}
                <span className={"nunito text-pink-primary font-extrabold "}>
                  assessment
                </span>{" "}
                consists of:
              </h2>
              <div>
                {airlineInfo.assessments.split("\n").map((line, index) => (
                  <div key={index}>
                    <div
                      className={`nunito ${styles["assessment-tile-list"]}`}
                      dangerouslySetInnerHTML={{ __html: line }}
                    ></div>
                  </div>
                ))}
              </div>
            </div>
            {/*end of assesment tile*/}
          </div>

          {/*airline benefits tile*/}
          <div
            className={`container shadow-main ${styles["airline-benefits-tile"]}`}
          >
            <h2 className={"nunito text-[#000e94] text-xl font-extrabold mb-4"}>
              Airline Benefits
            </h2>
            <p
              className={`nunito ${styles["airline-benefits-tile-text"]}`}
              dangerouslySetInnerHTML={{
                __html: airlineInfo.benefits,
              }}
            ></p>
          </div>
          {/*end of airline benefits tile*/}
        </div>
      </div>
      <div className="mx-auto container relative z-10 mb-12 ">
        <h2 className="text-xl font-extrabold mb-4 ml-7 pt-4 text-[#000e94] ">
          Airline Salaries
        </h2>
        {salaries[domain].map((salary) => (
          <SalaryMobile key={salary.title} salary={salary} />
        ))}

        <div className="grid grid-cols-2 gap-8 ">
          {salaries[domain].map((salary) => (
            <SalaryTablet key={salary.title} salary={salary} />
          ))}
        </div>
        <SalaryDesktop salaries={salaries[domain]} />
      </div>
    </div>
  );
}
