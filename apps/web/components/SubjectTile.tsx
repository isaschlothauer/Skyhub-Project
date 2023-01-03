import * as React from "react";
import Image, { StaticImageData } from "next/image";

{/*STYLES*/}
import styles from "./subjectTile.module.scss";



export interface TileProps {
  tilename: string;
  cSass?: string;
  picture: StaticImageData;
  subtilename: string;
  arrowbmap: JSX.Element;
}

const Tile = ({
  tilename,
  cSass,
  picture,
  subtilename,
  arrowbmap,
}: TileProps) => {
  return (
    <div className={`mx-auto sm:px-0`}>
      <div className="sm:w-full pr-3 pl-3">
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
              <div className={styles["tile-traveltheworld-title"]}>
                {tilename}
              </div>
              <div className={styles["tile-learnmore"]}>{arrowbmap}</div>
            </div>
            <div className={styles["tile-leftline"]}></div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Tile;
