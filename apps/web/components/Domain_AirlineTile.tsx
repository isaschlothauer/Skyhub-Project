import Image, { StaticImageData } from "next/image";
import { useRouter } from "next/router";
import * as React from "react";
import ArrowButton from "../assets/images/icons/arrow-right-pink.png";

interface ArilineTileProps {
  logo: StaticImageData;
  title: string;
  slug: string;
}

export default function AirlineTile({ logo, title, slug }: ArilineTileProps) {
  const router = useRouter();
  return (
    <div className="flex flex-col justify-center items-center bg-white p-3 shadow-main rounded-[15px] sm:p-5 md:p-8">
      <div className=" relative w-full h-16 mb-4">
        <Image className=" object-contain" alt="Logo" src={logo} fill />
      </div>

      <h3 className="nunito text-[#000e94] text-sm font-extrabold mb-6 md:text-base">
        {title}
      </h3>
      <a href={`${router.pathname}/${slug}`}>
        <Image src={ArrowButton} alt="Arrow Button" />
      </a>
    </div>
  );
}
