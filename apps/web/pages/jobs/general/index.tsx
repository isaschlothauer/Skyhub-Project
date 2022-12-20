import React from "react";
import styles from "./general.module.scss";
import Footer from "../../../components/Footer";
import Mini_Header from "../../../components/Mini_Header";
import JobsBtn from "../../../components/JobsBtn";
import ContactUs from "../../../components/ContactUs";

export default function General() {
  return (
    <div id={"page"}>
      <Mini_Header title={"You are looking for an office above the clouds?"} />
      <div className={"container"}>
        <div className={"row"} /* style="position: relative;" */>
          <div className={styles["static-page-branding"]}></div>
          <div className={"col-md-12"} id={styles["static-page"]}>
            <div className={styles["static-page-content"]}>
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

              <hr />
              <div className={styles["static-page-company"]}>
                <div className={styles["static-page-company-text"]}>
                  Company who employing
                </div>
                <div className={styles["static-page-company-link"]}>
                  <a href="#">www.lufthansa.com</a>
                </div>
                <div className={styles["static-page-company-arrow"]}>
                  <a href="#"></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div
          className={`${"row"} ${"align-items-end"} ${styles["row-widgets"]}}`}
        >
          <JobsBtn />
          <ContactUs />
        </div>
      </div>
      <Footer />
    </div>
  );
}
