import * as React from "react";
import Mini_Header from "./Header";

export interface AirlineProps {
  domain: string;
  slug: string;
}

export default function AirlineInsight({ domain, slug }: AirlineProps) {
  return (
    <div>
      <Mini_Header title={"Airline Insight"} Scssdomain={domain} />
    </div>
  );
}
