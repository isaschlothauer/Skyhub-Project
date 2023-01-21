import * as React from "react";
import Image from "next/image";
import Mini_Header from "./Header";
import styles from "./airline_insight_page.module.scss";
import AirlineInfoTiles from "./AirlineInfoTiles";

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
          className={`container shadow-main p-4 ${styles["airline-information-container"]}`}
        >
          <p className={"nunito text-[#000e94] text-xl font-extrabold mt-4 "}>
            Airline Information
          </p>
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
      </div>
    </div>
  );
}
