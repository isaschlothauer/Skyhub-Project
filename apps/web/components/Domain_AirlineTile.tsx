import Image, { StaticImageData } from "next/image";
import Link from "next/link";
import { useRouter } from "next/router";
import * as React from "react";
import ArrowButton from "../assets/images/icons/arrow-right-pink.png";

interface ArilineTileProps {
  logo: string;
  title: string;
  slug: string;
}

export default function AirlineTile({ logo, title, slug }: ArilineTileProps) {
  const router = useRouter();

  return (
    <>
      <Link href={`/${router.query.domain}/insights/${slug}`}>
        <div className="flex flex-col h-full justify-center items-center bg-white p-3 shadow-main rounded-[15px] sm:p-5 md:p-8">
          <div className=" relative w-full h-16 mb-4">
            <Image className=" object-contain" alt="Logo" src={logo} fill />
          </div>

          <h3 className="nunito text-[#000e94] text-center text-base font-extrabold mb-6 ">
            {title}
          </h3>
          <Image className="mt-auto" src={ArrowButton} alt="Arrow Button" />
        </div>
      </Link>
    </>
  );
}
