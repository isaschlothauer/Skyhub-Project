import * as React from "react";
import Mini_Header from "./Header";
import SalaryMobile from "./SalaryMobile";
import SalaryTablet from "./SalaryTablet";

import styles from "./airline_insight_page.module.scss";

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
      <div
        className={
          "mx-auto container relative z-10 mobile:top-[15.625rem] tablet:top-[16.25rem] pc:top-[20rem]"
        }
      >
        <div
          className={`container shadow-main ${styles["airline-information-container"]}`}
        >
          {" "}
          {airlineInfo.name}
        </div>
        <div className="mx-auto container relative z-10 mobile:top-[15.625rem] tablet:top-[16.25rem] pc:top-[20rem]">
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
    </div>
  );
}
