import React, { ReactNode } from "react";
import Link from "next/link";

type ButtonProps = {
  children: ReactNode;
  onClick?: () => void;
  route?: string;
  variant?: "primary" | "outlineWhite" | "outlinePink";
};

const buttonVariants = {
  primary: "bg-pink-primary border-pink-primary text-white",
  outlineWhite: "bg-transparent border-white text-white",
  outlinePink: "bg-transparent border-pink-primary text-pink-primary",
};

export const Button = ({
  children,
  onClick,
  route,
  variant = "primary",
}: ButtonProps) => {
  return (
    <>
      {route ? (
        <Link href={route}>
          <button
            className={`font-semibold rounded-full px-6 py-[0.6rem] border-2 ${buttonVariants[variant]}`}
            onClick={onClick}
          >
            {children}
          </button>
        </Link>
      ) : (
        <button
          className={`font-semibold rounded-full px-6 py-[0.6rem] border-2 ${buttonVariants[variant]}`}
          onClick={onClick}
        >
          {children}
        </button>
      )}
    </>
  );
};
