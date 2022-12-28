import * as React from "react";
import style from "./LoginRegisterButton.module.scss";
import Link from "next/link";

export interface LoginButtonProps {
  route: string;
  cSass?: string;
  buttontext: string;
}

const LoginButton = ({ cSass, route, buttontext }: LoginButtonProps) => {
  return (
    <Link href={route}>
      <button className={`${cSass}`}> {buttontext} </button>
    </Link>
  );
};

export default LoginButton;
