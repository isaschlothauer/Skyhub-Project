import * as React from 'react';
import styles from "./LearnMoreArrow.module.scss";

export interface ArrowProps {
    text?: string;
    cSass:string;
  }



export const LearnMoreArrow = ({ text, cSass}: ArrowProps) => {
  return (
    <>
      <div className={cSass}>
          <a href="http://{{ env('CABIN_DOMAIN') }}/subject">
            {text}
          </a>
        </div>
    </>
  )
}