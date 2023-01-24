import * as React from "react";
import Mini_Header from "./Header";
import SalaryMobile from "./SalaryMobile";
import useMediaQuery from "../hooks/useMediaQuery";

export interface AirlineProps {
  domain: string;
  slug: string;
}

export default function AirlineInsight({ domain, slug }: AirlineProps) {
  const isMobile = useMediaQuery("(max-width: 500px)");
  return (
    <div>
      <Mini_Header title={"Airline Insight"} Scssdomain={domain} />
      <div className="mx-auto container relative z-10 mobile:top-[15.625rem] tablet:top-[16.25rem] pc:top-[20rem]">
        {isMobile ? (
          <SalaryMobile
            jobTitle="Captain"
            maxSalary="240,000 €"
            avgSalary="190,000 €"
            minSalary="160,000 €"
          />
        ) : (
          <></>
        )}
      </div>
    </div>
  );
}
