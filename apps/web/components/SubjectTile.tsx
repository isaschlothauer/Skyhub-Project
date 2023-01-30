import * as React from "react";
import Image, { StaticImageData } from "next/image";
import axios from "axios";
import { useEffect, useState, useContext } from "react";

{
  /*STYLES*/
}
import styles from "./subjectTile.module.scss";

export interface TileProps {
  tilename: string;
  cSass?: string;
  picture: StaticImageData;
  subtilename: string;
  arrowbmap: JSX.Element;
  tcounter: any;
}

const Tile = ({
  tilename,
  cSass,
  picture,
  subtilename,
  arrowbmap,
  tcounter,
}: TileProps) => {
  return (
    <div className={`mx-auto sm:px-0`}>
      <div className="sm:w-full">
        <div className={cSass}>
          <div className={styles["tile-image"]}>
            <Image src={picture} alt="summary1" />
          </div>
          <div className={styles["tile-offers"]}>
            <div className={styles["tile-offerscount"]}>
              <strong>{tcounter}</strong>Active Offers
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
