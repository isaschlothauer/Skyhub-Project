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
      {/*airline information container ends*/}

      {/*aircraft fleet and aircraft orders tile*/}
      <div
        className={`container shadow-main pt-4 pb-7 px-7 ${styles["aircraft-fleet-and-orders"]}`}
      >
        <div className={styles["img-and-h2"]}>
          <Image src={aircraft} alt={"aircraft-img"} />
          <h2 className={"nunito text-pink-primary font-bold"}>
            Aircraft Fleet
          </h2>
        </div>
        <p
          className={"nunito text-[#727481]"}
          dangerouslySetInnerHTML={{
            __html: airlineInfo.fleet,
          }}
        ></p>
        <div className={styles["img-and-h2"]}>
          <Image src={aircraft} alt={"aircraft-img"} />
          <h2 className={"nunito text-pink-primary font-bold"}>
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
      <div className={`container shadow-main ${styles[`assesment-${domain}`]}`}>
        <h2 className={"nunito text-[#000000] font-bold mb-4"}>
          {airlineInfo.name + " " + airlineInfo.job_type}{" "}
          <span className={"nunito text-pink-primary font-bold "}>
            assesment
          </span>{" "}
          consists of:
        </h2>
        <div>
          {airlineInfo.assessments.split("\n").map((line, index) => (
            <div key={index}>
              <div
                className={styles["list"]}
                dangerouslySetInnerHTML={{ __html: line }}
              ></div>
            </div>
          ))}
        </div>
      </div>
      {/*end of assesment tile*/}

      {/*airline benefits tile*/}
      <div>
        <h2>Airline Benefits</h2>
        <p
          className={`nunito ${styles["benefits-text"]}`}
          dangerouslySetInnerHTML={{
            __html: airlineInfo.benefits,
          }}
        ></p>
      </div>
      {/*airline benefits tile*/}
    </div>
  );
}
