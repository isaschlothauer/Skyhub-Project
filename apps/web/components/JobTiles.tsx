import React from "react";
import stylesJobTiles from "./jobTilesContainer.module.scss";
import Image, { StaticImageData } from "next/image";
import Link from "next/link";

export interface JobTilesContainerProps {
  image: StaticImageData;
  title: string;
  subtitle: string;
  sass: string;
  link: string;
}

function JobTiles({
  image,
  title,
  subtitle,
  sass,
  link,
}: JobTilesContainerProps) {
  return (
    <>
      <Link href={link}>
        <div className={`${stylesJobTiles.mainContainer}`}>
          <div className={stylesJobTiles["overlay"]}>
            <div className={stylesJobTiles["infoContainer"]}>
              <div className={stylesJobTiles["imageContainer"]}>
                <Image src={image} alt={"airlines"} />
              </div>
              <div className={stylesJobTiles["textContainer"]}>
                <div className={stylesJobTiles["title"]}>{title}</div>
                <div className={stylesJobTiles["subtitle"]}>{subtitle}</div>
              </div>
            </div>
          </div>
        </div>
      </Link>
    </>
  );
}

export default JobTiles;
