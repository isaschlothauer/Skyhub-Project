import Image from "next/image";
import styles from "./airline_insight_page.module.scss";

//images
import founded from "../../web/assets/images/icons/new-founded.png";
import headquarter from "../../web/assets/images/icons/new-headquarter.png";
import employees from "../../web/assets/images/icons/new-employees.png";
import revenue from "../../web/assets/images/icons/new-revenue.png";
import destination from "../../web/assets/images/icons/base.png";
import callsign from "../../web/assets/images/icons/new-callsign.png";

export interface AirlineTilesProps {
  airlineInfo: AirlineInformationType;
}

export default function AirlineInfoTiles({ airlineInfo }: AirlineTilesProps) {
  return (
    <div>
      <div className={styles["main-tiles-container"]}>
        <div className={`shadow-main p-4 ${styles["small-tiles"]}`}>
          <Image src={founded} alt={"founded-img"} />
          <h2 className={"nunito text-pink-primary font-bold"}>Founded</h2>
          <p className={"nunito text-[#727481]"}>{airlineInfo.founding}</p>
        </div>

        <div className={`shadow-main p-4 ${styles["small-tiles"]}`}>
          <Image src={headquarter} alt={"headquarter-img"} />
          <h2 className={"nunito text-pink-primary font-bold"}>Headquarter</h2>
          <p className={"nunito text-[#727481]"}>{airlineInfo.headquarter}</p>
        </div>
        <div className={`shadow-main p-4 ${styles["small-tiles"]}`}>
          <Image src={employees} alt={"employees-img"} />
          <h2 className={"nunito text-pink-primary font-bold"}>Employees</h2>
          <p className={"nunito text-[#727481]"}>{airlineInfo.employees}</p>
        </div>
        <div className={`shadow-main p-4 ${styles["small-tiles"]}`}>
          <Image src={revenue} alt={"revenue-img"} />
          <h2 className={"nunito text-pink-primary font-bold"}>Revenue</h2>
          <p className={"nunito text-[#727481]"}>{airlineInfo.profits}</p>
        </div>
        <div className={`shadow-main p-4 ${styles["small-tiles"]}`}>
          <Image src={destination} alt={"revenue-img"} />
          <h2 className={"nunito text-pink-primary font-bold"}>Destinations</h2>
          <p className={"nunito text-[#727481]"}>{airlineInfo.destinations}</p>
        </div>
        <div className={`shadow-main p-4 ${styles["small-tiles"]}`}>
          <Image src={callsign} alt={"revenue-img"} />
          <h2 className={"nunito text-pink-primary font-bold"}>Callsign</h2>
          <p className={"nunito text-[#727481]"}>{airlineInfo.callsign}</p>
        </div>
      </div>
    </div>
  );
}
