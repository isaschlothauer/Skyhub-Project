import { useRouter } from "next/router";
import AirlineTile from "../../../components/AirlineTile";
import Select from "../../../components/Select";
import LogoLufthansa from "../../../assets/images/miscellaneous/logo-lufthansa-blue.png";

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

const airlineCompanies = [
  {
    logo: LogoLufthansa,
    title: "Lufthansa",
    slug: "Lufthansa",
  },
  {
    logo: LogoLufthansa,
    title: "Lufthansa2",
    slug: "Lufthansa2",
  },
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
    <>
      <div
        className={
          "flex flex-row w-full space-x-4 justify-around items-center container mx-auto h-32 rounded-[33px] p-[25px] mb-[60px] mt-[20px] shadow-main"
        }
      >
        <Select
          label="Search Region"
          options={optionsRegion}
          onSelect={handleRegionChange}
        />
        <Select
          label="Type of Airline"
          options={optionsAirlineType}
          onSelect={handleAirlineTypeChange}
        />
      </div>
      <div>
        {airlineCompanies.map((airline) => {
          return (
            <AirlineTile
              key={airline.title}
              logo={airline.logo}
              title={airline.title}
              slug={airline.slug}
            />
          );
        })}
      </div>
    </>
  );
}
