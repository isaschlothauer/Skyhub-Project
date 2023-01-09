import { HTMLAttributes } from "react";
import Link from "next/link";

export interface ButtonProps extends HTMLAttributes<HTMLButtonElement> {
  route: string;
  cSass?: string;
  buttontext: string;
}

const ButtonCMP = ({
  cSass,
  route,
  buttontext,
  className,
  ...props
}: ButtonProps) => {
  return (
    <Link href={route}>
      <button className={`${className} ${cSass}`.trim()} {...props}>
        {buttontext}
      </button>
    </Link>
  );
};

export default ButtonCMP;
