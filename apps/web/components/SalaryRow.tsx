import Image, { StaticImageData } from "next/image";
import useMediaQuery from "../hooks/useMediaQuery";
interface SalaryRow {
  iconSalary: StaticImageData;
  iconHeight?: number;
  salaryType: string;
  salaryValue: number;
}

export default function SalaryRow({
  iconSalary,
  iconHeight,
  salaryType,
  salaryValue,
}: SalaryRow) {
  const isMobile = useMediaQuery("(max-width: 500px)");
  const isTablet = useMediaQuery("(min-width: 501px) and (max-width: 885px)");

  return (
    <>
      {isMobile && (
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
      )}
      {isTablet && (
        <div className="flex flex-col justify-center items-center">
          <p className=" text-dark-gray font-medium whitespace-nowrap">
            {salaryValue.toLocaleString("en-US")} €
          </p>
          <div className="flex flex-row relative mt-1">
            <Image
              src={iconSalary}
              alt="salary icon"
              className="object-contain"
              height={iconHeight}
            />
            <p className=" text-pink-primary font-bold pl-2 ">{salaryType}</p>
          </div>
        </div>
      )}
    </>
  );
}
