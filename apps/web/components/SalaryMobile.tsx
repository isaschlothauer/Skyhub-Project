import Image, { StaticImageData } from "next/image";
import SalaryRow from "../components/SalaryRow";

//images
import IconAvgSalary from "../assets/images/icons/icon-salary-avg.png";
import IconMaxSalary from "../assets/images/icons/icon-salary-max.png";
import IconMinSalary from "../assets/images/icons/icon-salary-min.png";
import IconRankCaptain from "../assets/images/icons/icon-rank-captain.png";
import IconRankSFO from "../assets/images/icons/icon-rank-sfo.png";
import IconRankFO from "../assets/images/icons/icon-rank-fo.png";
import IconRankSO from "../assets/images/icons/icon-rank-so.png";

interface SalaryMobileProps {
  icon?: StaticImageData;
  jobTitle: string;
  maxSalary?: string;
  avgSalary?: string;
  minSalary?: string;
}

const rankIcons: { [key: string]: StaticImageData } = {
  Captain: IconRankCaptain,
  "Senior First Officer": IconRankSFO,
  "First Officer": IconRankFO,
  "Second Officer": IconRankSO,
};

export default function SalaryMobile({
  icon,
  jobTitle,
  maxSalary,
  avgSalary,
  minSalary,
}: SalaryMobileProps) {
  return (
    <div className="flex flex-col justify-center items-stretch rounded-[15px] bg-white shadow-main px-6 pt-3 pb-6 gap-4">
      <div className="flex flex-row justify-center items-center relative mb-2 mt-1">
        <Image
          src={icon || rankIcons[jobTitle]}
          alt="icon captain"
          className=" object-contain h-7 w-10"
        />
        <h3 className=" text-[#000e94] text-base font-extrabold pl-2 ">
          {jobTitle}
        </h3>
      </div>
      <SalaryRow
        iconSalary={IconMaxSalary}
        iconHeight={19}
        salaryType="Maximum Salary"
        salaryValue="240,000 €"
      />
      <SalaryRow
        iconSalary={IconAvgSalary}
        salaryType="Average Salary"
        salaryValue="190,000 €"
      />

      <SalaryRow
        iconSalary={IconMinSalary}
        iconHeight={19}
        salaryType="Minimum Salary"
        salaryValue="150,000 €"
      />
    </div>
  );
}
