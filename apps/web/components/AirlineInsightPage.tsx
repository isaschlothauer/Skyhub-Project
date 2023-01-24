import * as React from "react";
import Mini_Header from "./Header";
import SalaryMobile from "./SalaryMobile";

import styles from "./airline_insight_page.module.scss";

export interface GeneralAirlineProps {
  domain: string;
  slug: string;
  airlineInfo: AirlineInformationType;
}

export default function AirlineInsight({
  domain,
  slug,
  airlineInfo,
}: GeneralAirlineProps) {
  if (airlineInfo == null) return <p>Loading...</p>;

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
          <SalaryMobile
            jobTitle={"Captain"}
            maxSalary={airlineInfo.salary_captain_max}
            avgSalary={airlineInfo.salary_captain_avg}
            minSalary={airlineInfo.salary_captain_min}
          />

          <SalaryMobile
            jobTitle={"Senior First Officer"}
            maxSalary={airlineInfo.salary_sfo_max}
            avgSalary={airlineInfo.salary_sfo_avg}
            minSalary={airlineInfo.salary_sfo_min}
          />

          <SalaryMobile
            jobTitle={"First Officer"}
            maxSalary={airlineInfo.salary_fo_max}
            avgSalary={airlineInfo.salary_fo_avg}
            minSalary={airlineInfo.salary_fo_min}
          />

          <SalaryMobile
            jobTitle={"Second Officer"}
            maxSalary={airlineInfo.salary_so_max}
            avgSalary={airlineInfo.salary_so_avg}
            minSalary={airlineInfo.salary_so_min}
          />
        </div>
      </div>
    </div>
  );
}
