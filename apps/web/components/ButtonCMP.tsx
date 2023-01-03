import * as React from "react";
import Link from "next/link";

export interface ButtonProps {
  route: string;
  cSass?: string;
  buttontext: string;
}

const ButtonCMP = ({ cSass, route, buttontext }: ButtonProps) => {
  return (
    <Link href={route}>
      <button className={`${cSass}`}>
        {buttontext}
      </button>
    </Link>
  );
};

export default ButtonCMP;
