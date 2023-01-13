import React from "react";

{
  /* STYLES */
}
import styles from "./domain_jobOffersContainer.module.scss";

{
  /* COMPONENTS */
}
import Domain_jobOffersTile from "./Domain_jobOffersTile";

function JobOffersContainer() {
  return (
    <div className={"mb-10"}>
      <Domain_jobOffersTile />
    </div>
  );
}

export default JobOffersContainer;
