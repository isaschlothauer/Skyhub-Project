import Link from "next/link";
import { useRouter } from "next/router";
import * as React from "react";

export interface ArrowProps {
  arrowtext?: string;
  cSass: string;
  link: string;
}

export const LearnMoreArrow = ({ arrowtext, cSass, link }: ArrowProps) => {
  
  // alternative to see if ReactJs stops the bullshit page reload
  const router = useRouter();
  const handleChange = () => {
    router.push(
      {
        pathname: link,
      },
      undefined,
      {
        shallow: true,
      }
    );
  };
  return (
    <>
      <div className={cSass}>
        <Link href={`${link}`} as={link}>
          {arrowtext}
        </Link>
      </div>
    </>
  );
};
