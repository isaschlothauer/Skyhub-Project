import { useRouter } from "next/router";
import Select from "../../../components/Select";

const optionsRegion = [
  "---",
  "Asia",
  "Australia",
  "Europe",
  "North America",
  "Middle East",
  "South America",
];
const optionsAirlineType = [
  "---",
  "Legacy",
  "National",
  "Charta",
  "Cargo",
  "Regional",
  "Corporate",
  "Helicopter",
];

export default function Insights() {
  const router = useRouter();

  const handleRegionChange = (region: string) => {
    const { region: prevRegion, ...prevQuerywithoutRegion } = router.query;
    const newQuery =
      region === "---"
        ? prevQuerywithoutRegion
        : { ...prevQuerywithoutRegion, region };
    router.push({ query: newQuery });
  };

  const handleAirlineTypeChange = (type: string) => {
    const { type: prevType, ...prevQuerywithoutType } = router.query;
    const newQuery =
      type === "---" ? prevQuerywithoutType : { ...prevQuerywithoutType, type };
    router.push({ query: newQuery });
  };

  return (
    <div className={"flex flex-row "}>
      {" "}
      <Select
        label="Search Region"
        options={optionsRegion}
        onSelect={handleRegionChange}
      />
      <Select
        label="Airline Type"
        options={optionsAirlineType}
        onSelect={handleAirlineTypeChange}
      />
    </div>
  );
}
