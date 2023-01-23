import * as React from "react";
import Mini_Header from "./Header";
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
      </div>
    </div>
  );
}
