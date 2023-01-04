import React from "react";

{ /* STYLES */ }

import styles from "./jobTilesContainer.module.scss";

{ /* COMPONENTS */ }

import JobTiles from "./JobTiles";

{ /* IMAGES */ }

import general from "../assets/images/icons/general-icon.png";
import training from "../assets/images/icons/training-icon.png";
import requirements from "../assets/images/icons/requirements-icon.png";
import costs from "../assets/images/icons/costs-icon.png";
import application from "../assets/images/icons/application-icon.png";

const jobTiles = [
  {
    tile_id: 1,
    image: general,
    title: "General",
    subtitle: "All you need to know",
    sass: "",
    link: "",
  },
  {
    tile_id: 2,
    image: training,
    title: "Training",
    subtitle: "All you need to know",
    sass: "",
    link: "",
  },
  {
    tile_id: 3,
    image: requirements,
    title: "Requirements",
    subtitle: "All you need to know",
    sass: "",
    link: "",
  },
  {
    tile_id: 4,
    image: costs,
    title: "Costs",
    subtitle: "All you need to know",
    sass: "",
    link: "",
  },
  {
    tile_id: 5,
    image: application,
    title: "Application",
    subtitle: "How, where, why",
    sass: "",
    link: "",
  },
];

function JobTilesContainer() {
  return (
    <div>
      <div className={`${"container"}`}>
        {/* All containers CONTAINER */}
        <div className={styles.containerTitle}>Find more information about the process</div>
          <div className={`${"flex flex-row justify-around"}`}>
            {jobTiles.slice(0, 3).map((firstcontainer) => (
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
        

          <div className={`${"flex flex-row justify-around"}`}>
            {jobTiles.slice(3, 5).map((firstcontainer) => (
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
    </div>
  );
}

export default JobTilesContainer;
