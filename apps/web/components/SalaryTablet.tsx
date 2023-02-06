import SalaryRow from "../components/SalaryRow";
import SalaryTitle from "../components/SalaryTitle";

//images
import IconAvgSalary from "../assets/images/icons/icon-salary-avg.png";
import IconMaxSalary from "../assets/images/icons/icon-salary-max.png";
import IconMinSalary from "../assets/images/icons/icon-salary-min.png";
import { AirlineSalary } from "./AirlineInsightPage";

type SalaryTabletProps = {
  salary: AirlineSalary;
};

export default function SalaryTablet({ salary }: SalaryTabletProps) {
  return (
    <>
      {salary.max || salary.avg || salary.min ? (
        <div className="flex flex-col  rounded-[15px] bg-white shadow-main px-6 pt-3 pb-6 gap-5">
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
