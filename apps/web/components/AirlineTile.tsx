import Image, { StaticImageData } from "next/image";
import { useRouter } from "next/router";
import * as React from "react";
// import { LearnMoreArrow } from "./ArrowButton";
import ArrowButton from "../assets/images/icons/arrow-right-pink.png";

interface ArilineTileProps {
  logo: StaticImageData;
  title: string;
  slug: string;
}

export default function AirlineTile({ logo, title, slug }: ArilineTileProps) {
  const router = useRouter();
  return (
    <div className="flex-col">
      <div className=" relative w-full h-24 ">
        <Image className=" object-contain " alt="Logo" src={logo} fill />
      </div>

      <h3>{title}</h3>
      {/* <LearnMoreArrow link="/lufthansa" /> */}
      <a href={`${router.pathname}/${slug}`}>
        <Image src={ArrowButton} alt="Arrow Button" />
      </a>
    </div>
  );
}
