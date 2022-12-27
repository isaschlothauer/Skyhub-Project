import React from "react";


{/*STYLES*/}
import styles from "../../../components/staticpage.module.scss"

{/*COMPONENTS*/}
import Mini_Header from "../../../components/Mini_Header";
import StaticPage from "../../../components/Staticpage";



export default function General() {
  return (
    <div>
      <StaticPage cSass={`${styles["staticpage"]} ${styles["staticpage-generalatc"]}`} miniheader={<Mini_Header title={"General"}/>}/>
    </div>
  );
}

