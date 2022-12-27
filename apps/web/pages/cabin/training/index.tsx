import * as React from "react";

{/*STYLES*/}
import styles from "../../../components/staticpage.module.scss"

{/*COMPONENTS*/}
import Mini_Header from "../../../components/Mini_Header";
import StaticPage from "../../../components/Staticpage";



export default function Static() {
  return (
    <div>
      <StaticPage cSass={ `${styles["staticpage"]} ${styles["staticpage-trainingcabin"]}`} miniheader={<Mini_Header title={"Training"}/>}/>
    </div>
  );
}
