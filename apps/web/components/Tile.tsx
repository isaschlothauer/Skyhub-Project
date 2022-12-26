import * as React from "react";
import styles from "./Tile.module.scss";
import Image, { StaticImageData } from "next/image";
import { LearnMoreArrow } from "./LearnMoreArrow";

export interface TileProps {
  tilename: string;
  cSass?: string;
  picture: StaticImageData;
  subtilename: string;
  arrowbinfo:string;

}

const Tile = ({ tilename, cSass, picture, subtilename, arrowbinfo }: TileProps) => {
  return (
    <div className={`mx-auto sm:px-0`}>
      <div className="sm:w-full pr-16 pl-16">
        <div className={cSass}>
          <div className={styles["tile-image"]}>
            <Image src={picture} alt="summary1" />
          </div>
          <div className={styles["tile-offers"]}>
            <div className={styles["tile-offerscount"]}>
              <strong>{/* { $cabinCount } */}</strong> Active Offers
            </div>
            <div className={styles["tile-traveltheworld"]}>
              <div className={styles["tile-traveltheworld-subtitle"]}>
                {subtilename}
              </div>
              <div className={styles["tile-traveltheworld-title"]}>{tilename}</div>
               {arrowbinfo}
            </div>
            <div className={styles["tile-leftline"]}></div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Tile;
