import { useRouter } from "next/router";
import axios from "axios";
import { useEffect, useState } from "react";

// importing components
import AirlineTile from "../../../components/Domain_AirlineTile";
import Select from "../../../components/Select";
import Mini_Header from "../../../components/Header";
import FAQ_Contact_Container from "../../../components/FAQ_Contact_Container";
import Footer from "../../../components/Footer";
import Pagination from "../../../components/Pagination";

// importing styles
import styles from "./insights.module.scss";

type Airline = {
  name: string;
  slug: string;
  src?: string;
};

export default function Insights() {
  const router = useRouter();
  const { domain, ...searchQuery } = router.query;

  const [optionsRegion, setOptionsRegion] = useState(["---"]);
  const [optionsAirlineType, setOptionsAirlineType] = useState(["---"]);
  const [airlineCompanies, setAirlineCompanies] = useState<Airline[]>([]);
  const [totalPage, setTotalPage] = useState(1);

  const searchParams = new URLSearchParams(searchQuery as any).toString();

  let uri = searchParams
    ? `http://localhost:5000/${domain}/insights?${searchParams}`
    : `http://localhost:5000/${domain}/insights`;

  useEffect(() => {
    axios
      .get(uri)
      .then((response) => response.data)
      .then(
        (data: {
          totalPages: number;
          airlines: Airline[];
          optionsRegion: string[];
          optionsAirlineType: string[];
        }) => {
          setOptionsRegion(["---", ...data.optionsRegion]);
          setOptionsAirlineType(["---", ...data.optionsAirlineType]);
          setAirlineCompanies(data.airlines);
          setTotalPage(data.totalPages);
        }
      );
  }, [uri]);

  const handleRegionChange = (selectedRegion: string) => {
    const { region: prevRegion, ...prevQuerywithoutRegion } = router.query; // extract the query object from router, but without region
    const newQuery =
      selectedRegion === "---" // check if selected region is empty
        ? prevQuerywithoutRegion //if so set query as the query object without region
        : {
            ...prevQuerywithoutRegion,
            region: selectedRegion,
            page: 1,
          }; //else add the new selected region to query
    router.push({ query: newQuery }); //updates the query part of the url
  };

  const handleAirlineTypeChange = (selectedType: string) => {
    const { type: prevType, ...prevQuerywithoutType } = router.query;
    const newQuery =
      selectedType === "---"
        ? prevQuerywithoutType
        : { ...prevQuerywithoutType, type: selectedType, page: 1 };
    router.push({ query: newQuery });
  };

  return (
    <>
      {router.isReady && (
        <div>
          <Mini_Header title="Airline Insights" Scssdomain={domain as string} />

          <div className="mx-auto container relative z-10 mobile:top-[15.625rem] tablet:top-[16.25rem] pc:top-[20rem] ">
            <div
              className={
                "flex flex-row space-x-4 justify-around items-center px-3 mx-auto h-28 rounded-[33px] bg-white mb-[60px] shadow-main tablet:px-10 tablet:h-32 pc:px-10 pc:h-32"
              }
            >
              <Select
                label="Search Region"
                options={optionsRegion}
                onSelect={handleRegionChange}
                initialSelected={router.query.region as string}
              />

              <Select
                label="Type of Airline"
                options={optionsAirlineType}
                onSelect={handleAirlineTypeChange}
                initialSelected={router.query.type as string}
              />
            </div>
            <div className="grid grid-cols-2 gap-8 pb-12 mx-auto  md:grid-cols-3 lg:grid-cols-4 ">
              {airlineCompanies.length > 0 &&
                airlineCompanies.map((airline) => {
                  return (
                    <AirlineTile
                      key={airline.name}
                      logo={`http://localhost:5080/static/${airline.src}`}
                      title={airline.name}
                      slug={airline.slug}
                    />
                  );
                })}
            </div>
            {airlineCompanies.length === 0 && (
              <p className=" text-center mx-auto text-pink-primary font-bold text-lg pb-12 pt-8 ">
                No matching results for your search. Try another region or
                airline type.
              </p>
            )}
            <Pagination totalPage={totalPage} />
            <FAQ_Contact_Container />
          </div>
          <div className="relative z-10 mobile:top-[15.625rem] tablet:top-[16.25rem] pc:top-[20rem]">
            <Footer />
          </div>
        </div>
      )}
    </>
  );
}
