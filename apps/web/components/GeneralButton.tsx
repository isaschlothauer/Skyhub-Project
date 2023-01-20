import { HTMLAttributes } from "react";
// import Link from "next/link";
import { useRouter } from "next/router";

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
  const router = useRouter();
  const handleChange = () => {
    router.push(route);
  };
  return (
    <button
      className={`${className} ${cSass}`.trim()}
      {...props}
      onClick={handleChange}
    >
      {buttontext}
    </button>
  );
};

export default ButtonCMP;

{
  /*

  const router = useRouter();
  const handleChange = () => {
    router.push(route);
    
    
    onClick={handleChange}


    or 


     <Link href={route}>
      <button className={`${className} ${cSass}`.trim()} {...props}>
        {buttontext}
      </button>
    </Link>
  
  */
}
