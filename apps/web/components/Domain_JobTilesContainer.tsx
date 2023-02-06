import React from "react";

{
  /* STYLES */
}

import styles from "./domain_jobTilesContainer.module.scss";

{
  /* COMPONENTS */
}

import JobTiles from "./Domain_JobTiles";

{
  /* IMAGES */
}

import general from "../assets/images/icons/general-icon.png";
import training from "../assets/images/icons/training-icon.png";
import requirements from "../assets/images/icons/requirements-icon.png";
import costs from "../assets/images/icons/costs-icon.png";
import application from "../assets/images/icons/application-icon.png";

function JobTilesContainer({ domain }: { domain: string }) {
  const jobTiles = [
    {
      tile_id: 1,
      image: general,
      title: "General",
      subtitle: "All you need to know",
      sass: "",
      link: `${domain}/general`,
    },
    {
      tile_id: 2,
      image: training,
      title: "Training",
      subtitle: "All you need to know",
      sass: "",
      link: `${domain}/training`,
    },
    {
      tile_id: 3,
      image: requirements,
      title: "Must-have",
      subtitle: "All you need to know",
      sass: "",
      link: `${domain}/requirements`,
    },
    {
      tile_id: 4,
      image: costs,
      title: "Costs",
      subtitle: "All you need to know",
      sass: "",
      link: `${domain}/costs`,
    },
    {
      tile_id: 5,
      image: application,
      title: "Application",
      subtitle: "How, where, why",
      sass: "",
      link: `${domain}/application`,
    },
  ];
  return (
    <div className={`${"container sm:px-0"}`}>
      {/* All containers CONTAINER */}
      <div className={styles.containerTitle}>
        Find more information about the process
      </div>
      <div className={`${styles.line} ${"mb-14"}`}>
        {" "}
        {/*Diogo Changed*/}
        {jobTiles.map((firstcontainer) => (
          <JobTiles
            key={firstcontainer.tile_id}
            image={firstcontainer.image}
            title={firstcontainer.title}
            subtitle={firstcontainer.subtitle}
            sass={firstcontainer.sass}
            link={firstcontainer.link}
          />
        ))}
      </div>
    </div>
  );
}

export default JobTilesContainer;
