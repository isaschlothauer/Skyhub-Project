import * as React from "react";
import Image from "next/image";
import Mini_Header from "./Header";
import styles from "./airline_insight_page.module.scss";
import AirlineInfoTiles from "./AirlineInfoTiles";

// images
import aircraft from "../../web/assets/images/icons/aircraft.png";

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
      {/*airline information container*/}

      <div
        className={`container shadow-main p-4 mobile:top-[15.625rem] tablet:top-[16.25rem] pc:top-[20rem] ${styles["airline-information-tile"]}`}
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
        <h2 className={"nunito text-pink-primary font-extrabold text-xl mb-4 "}>
          {airlineInfo.name}
        </h2>
        <AirlineInfoTiles airlineInfo={airlineInfo} />
      </div>
      {/*airline information container ends*/}

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
        <h2 className={"nunito text-[#000e94] text-xl font-extrabold mb-4"}>
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
                className={styles["assessment-tile-list"]}
                dangerouslySetInnerHTML={{ __html: line }}
              ></div>
            </div>
          ))}
        </div>
      </div>
      {/*end of assesment tile*/}

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
  );
}
