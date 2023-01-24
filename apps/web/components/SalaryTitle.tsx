import Image, { StaticImageData } from "next/image";

type SalaryTitle = {
  icon: StaticImageData;
  jobTitle: string;
};

export default function SalaryTitle({ icon, jobTitle }: SalaryTitle) {
  return (
    <div className="flex flex-row justify-center items-center relative mb-2 mt-1">
      <Image
        src={icon}
        alt={`icon ${jobTitle}`}
        className=" object-contain h-7 w-10"
      />
      <h3 className=" text-[#000e94] text-base font-extrabold pl-2 ">
        {jobTitle}
      </h3>
    </div>
  );
}
