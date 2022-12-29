import * as React from "react";
import { ReactElement } from "react";
import { useEffect, useState } from "react";
import axios from "axios";


{/*STYLES*/}
import styles from "./staticpage.module.scss";

{/*COMPONENTS*/}
import Footer from "../components/Footer";



export interface StaticProps {
  cSass?: string;
  miniheader?: ReactElement;
}


const StaticPage = ({ cSass, miniheader }: StaticProps) => {
  const [movies, setMovies] = useState([]);

  const backendURL = "http://localhost:5000";

  useEffect(() => {
    const source = axios.CancelToken.source();

    axios
      .get(`${backendURL}/pilot/general`, { cancelToken: source.token }) 
      .then((response) => response.data)
      .then((data) => setMovies(data));

   
  }, []);
  return (
    <div className={cSass}>
      {miniheader}
      <div className={`container mx-auto sm:pl-0 pr-0`}>
        <div className={"flex flex-wrap"}>
          <div className={`md:w-full pr-3.5 pl-3.5 ${styles["staticpage-content"]}`}>
            <div className={styles["staticpage-databaseinfo"]}>



              {/*Beggining of the Database Info*/}
              <h2>
                Einstieg ab sofort für 6 Monate
                <br />
                Frankfurt am Main
              </h2>

              <p>
                Für unser Konzernunternehmen Deutsche Lufthansa Airlines suchen
                wir Sie als Praktikant (m/w/divers) im Bereich
                Personalmanagement mit dem Schwerpunkt Strategische
                Personalplanung und Personalcontrolling.
              </p>
              <p>
                Die Strategische Personalplanung der Lufthansa Airlines
                beschäftigt sich umfassend mit Szenarien der Entwicklung von
                Personalbeständen und -bedarfen. Aus datenbasierten Analysen
                werden gemeinsam mit den Fachbereichen innovative und
                zukunftsweisende HR Maßnahmen abgeleitet, um den
                Herausforderungen der Arbeitswelt von morgen schon heute zu
                begegnen.
              </p>

              <h3>Ihre Aufgaben:</h3>
              <ul>
                <li>
                  Sie werden Kompetenzen zur Simulation von zukünftigen
                  Personalbedarfen, zu Szenarien des demographischen Wandels und
                  des Kompetenzmodells der Deutschen Lufthansa AG aufbauen
                </li>
                <li>
                  Ebenfalls werden Sie bei der Entwicklung korrespondierender
                  Kennzahlen und deren Einbettung in HR Management Prozesse
                  einen wichtigen Beitrag im Team leisten
                </li>
              </ul>

              <h3>Über Deutsche Lufthansa AG</h3>
              <p>
                <i>
                  Die Deutsche Lufthansa AG ist ein weltweit operierender
                  Luftverkehrskonzern. Im Geschäftsjahr 2017 erzielte sie mit
                  durchschnittlich 128.856 Mitarbeitern einen Jahresumsatz von
                  35,6 Mrd. EUR. Die Deutsche Lufthansa AG ist in den
                  Geschäftsfeldern Network Airlines, Point-to-Point Airlines,
                  dem Bereich Aviation Services mit den Geschäftsfeldern
                  Logistik, Technik und Catering sowie den weiteren
                  Gesellschaften und Konzernfunktionen organisiert.
                </i>
              </p>
              {/*Ending of the Database Info*/}




             {/* ---> Do we need this info????
              <hr />

              <div className={styles["staticpage-company"]}>
                <div className={styles["staticpage-companytext"]}>
                  Company who employing
                </div>
                <div className={styles["staticpage-companylink"]}>
                  <a href="#">www.lufthansa.com</a>
                </div>
                <div className={styles["staticpage-companyarrow"]}>
                  <a href="#"></a>
                </div>
  </div>*/}
            </div>
          </div>
        </div>
      </div>
         <Footer />
    </div>
  );
}

export default StaticPage;