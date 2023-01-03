import Link from "next/link";
import * as React from "react";

export interface ArrowProps {
  arrowtext?: string;
  cSass: string;
  link: string;
}

export const LearnMoreArrow = ({ arrowtext, cSass, link }: ArrowProps) => {
  return (
    <>
      <div className={cSass}>
        <Link href={`${link}`}>{arrowtext}</Link>
      </div>
    </>
  );
};
