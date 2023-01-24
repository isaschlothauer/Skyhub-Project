import Image, { StaticImageData } from "next/image";

interface SalaryMobile {
  iconSalary: StaticImageData;
  iconHeight?: number;
  salaryType: string;
  salaryValue: number;
}

export default function SalaryMobile({
  iconSalary,
  iconHeight,
  salaryType,
  salaryValue,
}: SalaryMobile) {
  return (
    <div className="flex flex-row justify-between ">
      <div className="flex flex-row relative">
        <Image
          src={iconSalary}
          alt="maximum salary icon"
          className="object-contain"
          height={iconHeight}
        />
        <p className=" text-pink-primary font-bold pl-2 ">{salaryType}</p>
      </div>
      <p className=" text-dark-gray font-medium whitespace-nowrap">
        {salaryValue.toLocaleString("en-US")} €
      </p>
    </div>
  );
}
