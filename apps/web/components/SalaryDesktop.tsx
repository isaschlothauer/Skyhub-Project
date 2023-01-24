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
import { AirlineSalaries, AirlineSalary } from "./AirlineInsightPage";

type SalaryDesktopProps = {
  icon?: StaticImageData;
  salaries: AirlineSalary[];
};

const rankIcons: { [key: string]: StaticImageData } = {
  Captain: IconRankCaptain,
  "Senior First Officer": IconRankSFO,
  "First Officer": IconRankFO,
  "Second Officer": IconRankSO,
};

export default function SalaryDesktop({ icon, salaries }: SalaryDesktopProps) {
  const isDesktop = useMediaQuery("(min-width: 886px)");
  return (
    <>
      {isDesktop && (
        <table>
          <thead>
            <tr>
              {salaries.map(({ title: jobTitle }) => {
                return (
                  <th key={jobTitle}>
                    <SalaryTitle
                      icon={icon || rankIcons[jobTitle]}
                      jobTitle={jobTitle}
                    />
                  </th>
                );
              })}
            </tr>
          </thead>
        </table>
      )}
    </>
  );
}
