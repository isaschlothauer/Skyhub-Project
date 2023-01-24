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
import { AirlineSalary } from "./AirlineInsightPage";

type SalaryMobileProps = {
  salary: AirlineSalary;
};

export default function SalaryMobile({ salary }: SalaryMobileProps) {
  const isMobile = useMediaQuery("(max-width: 500px)");
  return (
    <>
      {isMobile && (salary.max || salary.avg || salary.min) ? (
        <div className="flex flex-col justify-center items-stretch rounded-[15px] bg-white shadow-main px-6 pt-3 pb-6 mb-6 gap-4">
          <SalaryTitle icon={salary.icon} jobTitle={salary.title} />

          <SalaryRow
            iconSalary={IconMaxSalary}
            iconHeight={19}
            salaryType="Maximum Salary"
            salaryValue={salary.max}
          />

          <SalaryRow
            iconSalary={IconAvgSalary}
            salaryType="Average Salary"
            salaryValue={salary.avg}
          />

          <SalaryRow
            iconSalary={IconMinSalary}
            iconHeight={19}
            salaryType="Minimum Salary"
            salaryValue={salary.min}
          />
        </div>
      ) : (
        <></>
      )}
    </>
  );
}
