import * as React from "react";
import styles from "./Tile.module.scss";
import Image, { StaticImageData } from "next/image";

export interface TileProps {
  label: string;
  test?: string;
  pic: StaticImageData;
  subtitle: string;
}

const Tile = ({ label, test, pic, subtitle }: TileProps) => {
  return (
    <div className="mx-auto sm:px-4">
      <div className="sm:w-full pr-4 pl-4">
        <div className={test}>
          <div className={styles["tile-image"]}>
            <Image src={pic} alt="summary1" />
          </div>
          <div className={styles["tile-offers"]}>
            <div className={styles["tile-offerscount"]}>
              <strong>{/* { $cabinCount } */}</strong> Active Offers
            </div>
            <div className={styles["tile-traveltheworld"]}>
              <div className={styles["tile-traveltheworld-subtitle"]}>
                {subtitle}
              </div>
              <div className={styles["tile-traveltheworld-title"]}>{label}</div>
            </div>
            <div className={styles["tile-leftline"]}></div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Tile;
