import { useRouter } from "next/router";
import AirlineTile from "../../../components/Domain_AirlineTile";
import Select from "../../../components/Select";
import Logo from "../../../assets/images/airlines/germanairways.jpg";
import Mini_Header from "../../../components/Header";
import FAQ_Contact_Container from "../../../components/FAQ_Contact_Container";
import Footer from "../../../components/Footer";
import styles from "./insights.module.scss";

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
    logo: Logo,
    title: "Lufthansa",
    slug: "Lufthansa",
  },
  {
    logo: Logo,
    title: "Lufthansa2",
    slug: "Lufthansa2",
  },
  {
    logo: Logo,
    title: "Lufthansa3",
    slug: "Lufthansa3",
  },
  {
    logo: Logo,
    title: "Lufthansa4",
    slug: "Lufthansa4",
  },
];

export default function Insights() {
  const router = useRouter();

  const handleRegionChange = (selectedRegion: string) => {
    const { region: prevRegion, ...prevQuerywithoutRegion } = router.query; // extract the query object from router, but without region
    const newQuery =
      selectedRegion === "---" // check if selected region is empty
        ? prevQuerywithoutRegion //if so set query as the query object without region
        : { ...prevQuerywithoutRegion, region: selectedRegion }; //else add the new selected region to query
    router.push({ query: newQuery }); //updates the query part of the url
  };

  const handleAirlineTypeChange = (selectedType: string) => {
    const { type: prevType, ...prevQuerywithoutType } = router.query;
    const newQuery =
      selectedType === "---"
        ? prevQuerywithoutType
        : { ...prevQuerywithoutType, type: selectedType };
    router.push({ query: newQuery });
  };

  return (
    <>
      <div className={styles["header-atc"]}>
        <Mini_Header title="Airline Insights" />
        <div className="mx-auto container ">
          <div
            className={
              "flex flex-row space-x-4 justify-around items-center px-10 mx-auto h-32 rounded-[33px] bg-white mb-[60px] mt-[20px] shadow-main"
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
          <div className="grid grid-cols-2 gap-8 pb-12 mx-auto md:grid-cols-3 lg:grid-cols-4 ">
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
        </div>

        <FAQ_Contact_Container />
        <Footer />
      </div>
    </>
  );
}
