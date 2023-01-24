import Image, { StaticImageData } from "next/image";
import SalaryRow from "../components/SalaryRow";
import SalaryTitle from "../components/SalaryTitle";
import useMediaQuery from "../hooks/useMediaQuery";
//images
import IconAvgSalary from "../assets/images/icons/icon-salary-avg.png";
import IconMaxSalary from "../assets/images/icons/icon-salary-max.png";
import IconMinSalary from "../assets/images/icons/icon-salary-min.png";
import IconRankCaptain from "../assets/images/icons/icon-rank-captain.png";
import IconRankSFO from "../assets/images/icons/icon-rank-sfo.png";
import IconRankFO from "../assets/images/icons/icon-rank-fo.png";
import IconRankSO from "../assets/images/icons/icon-rank-so.png";

interface SalaryTabletProps {
  icon?: StaticImageData;
  jobTitle: string;
  maxSalary?: number;
  avgSalary?: number;
  minSalary?: number;
}

const rankIcons: { [key: string]: StaticImageData } = {
  Captain: IconRankCaptain,
  "Senior First Officer": IconRankSFO,
  "First Officer": IconRankFO,
  "Second Officer": IconRankSO,
};

export default function SalaryTablet({
  icon,
  jobTitle,
  maxSalary,
  avgSalary,
  minSalary,
}: SalaryTabletProps) {
  const isTablet = useMediaQuery("(min-width: 501px) and (max-width: 885px)");
  return (
    <>
      {isTablet && (maxSalary || avgSalary || minSalary) ? (
        <div className="flex flex-col  rounded-[15px] bg-white shadow-main px-6 pt-3 pb-6 gap-5">
          <div className="flex flex-row justify-center items-center relative mb-2 mt-3">
            <Image
              src={icon || rankIcons[jobTitle]}
              alt={` ${jobTitle} rank icon`}
              className=" object-contain h-7 w-10"
            />
            <h3 className=" text-[#000e94] text-base font-extrabold pl-2 ">
              {jobTitle}
            </h3>
          </div>
          {maxSalary && (
            <SalaryRow
              iconSalary={IconMaxSalary}
              iconHeight={19}
              salaryType="Maximum Salary"
              salaryValue={maxSalary}
            />
          )}
          {avgSalary && (
            <SalaryRow
              iconSalary={IconAvgSalary}
              salaryType="Average Salary"
              salaryValue={avgSalary}
            />
          )}
          {minSalary && (
            <SalaryRow
              iconSalary={IconMinSalary}
              iconHeight={19}
              salaryType="Minimum Salary"
              salaryValue={minSalary}
            />
          )}
        </div>
      ) : (
        <></>
      )}
    </>
  );
}
