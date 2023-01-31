import Image, { StaticImageData } from "next/image";
import SalaryRow from "../components/SalaryRow";
import SalaryTitle from "../components/SalaryTitle";
import { AirlineSalary } from "./AirlineInsightPage";

//images
import IconAvgSalary from "../assets/images/icons/icon-salary-avg.png";
import IconMaxSalary from "../assets/images/icons/icon-salary-max.png";
import IconMinSalary from "../assets/images/icons/icon-salary-min.png";
import IconRankCaptain from "../assets/images/icons/icon-rank-captain.png";
import IconRankSFO from "../assets/images/icons/icon-rank-sfo.png";
import IconRankFO from "../assets/images/icons/icon-rank-fo.png";
import IconRankSO from "../assets/images/icons/icon-rank-so.png";

type SalaryDesktopProps = {
  icon?: StaticImageData;
  salaries: AirlineSalary[];
};

type SalaryRowKey = "min" | "avg" | "max";
type SalaryRow = {
  iconSalary: StaticImageData;
  label: string;
  salaryValues: (number | undefined)[];
};

const rankIcons: { [key: string]: StaticImageData } = {
  Captain: IconRankCaptain,
  "Senior First Officer": IconRankSFO,
  "First Officer": IconRankFO,
  "Second Officer": IconRankSO,
};

const buildSalaryRows = (salaries: AirlineSalary[]): SalaryRow[] => {
  const salaryRows = [
    { key: "max", label: "Maximum salary", iconSalary: IconMaxSalary },
    { key: "avg", label: "Average salary", iconSalary: IconAvgSalary },
    { key: "min", label: "Minimum salary", iconSalary: IconMinSalary },
  ].map(({ key, ...salaryRow }) => {
    const salaryValues = salaries.map((salary) => salary[key as SalaryRowKey]);
    return {
      ...salaryRow,
      salaryValues,
    };
  });
  return salaryRows;
};

export default function SalaryDesktop({ icon, salaries }: SalaryDesktopProps) {
  const salaryRows = buildSalaryRows(salaries);
  return (
    <>
      <div className="container mx-auto shadow-main bg-white rounded-[15px] px-11 py-9">
        <table className="table-fixed w-full">
          <thead>
            <tr>
              <th></th>
              {salaries.map(({ title: jobTitle }) => {
                return (
                  <th key={jobTitle} className="border-l px-3">
                    <SalaryTitle
                      icon={icon || rankIcons[jobTitle]}
                      jobTitle={jobTitle}
                    />
                  </th>
                );
              })}
            </tr>
          </thead>
          <tbody>
            {salaryRows.map((salaryRow) => (
              <tr key={salaryRow.label}>
                <th scope="row" className="text-center border-t px-4 ">
                  <div className="flex flex-row relative justify-center ">
                    <Image
                      src={salaryRow.iconSalary}
                      alt={`${salaryRow.label} icon`}
                      className="object-contain"
                    />
                    <p className=" text-pink-primary font-bold pl-2 ">
                      {salaryRow.label}
                    </p>
                  </div>
                </th>
                {salaryRow.salaryValues.map((salaryValue, index) => (
                  <TD key={`${salaryRow.label}-${index}`}>
                    {salaryValue?.toLocaleString("en-US").concat(" €") || "-"}
                  </TD>
                ))}
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </>
  );
}

const TD = ({ children }: { children?: string }) => {
  return (
    <td className=" text-center px-4 py-8 border-t border-l text-dark-gray font-medium whitespace-nowrap">
      {children}
    </td>
  );
};
