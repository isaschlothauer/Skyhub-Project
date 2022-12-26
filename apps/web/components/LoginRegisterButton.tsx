import * as React from "react";
import style from "./LoginRegisterButton.module.scss";


export interface LoginButtonProps {
    route: string;
    cSass?: string;
    buttontext: string;
  }
  
  const LoginButton = ({ cSass, route, buttontext }: LoginButtonProps) => {
    return (
          <button href={route} className={`${cSass}`}> {buttontext} </button>
  );
};

export default LoginButton;

