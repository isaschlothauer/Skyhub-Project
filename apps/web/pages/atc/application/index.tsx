import * as React from "react";

{
  /*STYLES*/
}
import styles from "../../../components/staticpage.module.scss";


{
  /*COMPONENTS*/
}
import Mini_Header from "../../../components/Header";
import StaticPage from "../../../components/Staticpage";

export default function Static() {
  return (
    <div>
      <StaticPage
        cSass={`${styles["staticpage"]} ${styles["header-atc"]}`}
        miniheader={<Mini_Header title={"Application"} />}
      />
    </div>
  );
}
