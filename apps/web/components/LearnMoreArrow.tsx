import * as React from 'react';


export interface ArrowProps {
    arrowtext?: string;
    cSass:string;
  }

export const LearnMoreArrow = ({ arrowtext, cSass}: ArrowProps) => {
  return (
    <>
      <div className={cSass}>
          <a href="http://{{ env('CABIN_DOMAIN') }}/subject">
            {arrowtext}
          </a>
        </div>
    </>
  )
}