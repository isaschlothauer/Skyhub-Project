import * as React from 'react';
import styles from "./LearnMoreArrow.module.scss";

export interface ArrowProps {
    text?: string;
    cSASS:string;
  }



export const LearnMoreArrow = ({ text, cSASS }: ArrowProps) => {
  return (
    <>
      <div className={cSASS}>
          <a href="http://{{ env('CABIN_DOMAIN') }}/subject">
            {text}
          </a>
        </div>
    </>
  )
}