import React from "react";
import styles from "./offers.module.scss";
import Mini_Header from "../../../components/Header";
import Footer from "../../../components/Footer";
import ContactUs from "../../../components/ContactUs";
import JobsBtn from "../../../components/JobsBtn";

export default function Offers() {
  return (
    <div id={"page"}>
      <Mini_Header title={"Job Offers"} />
      <div className="container">
        <div
          className={
            "row"
          } /* style="position: relative; z-index: 5; display: none;" */
        >
          <div className={"col-md-12"}>
            <div id={styles["offers-filter"]}>
              <div className={"row"}>
                <div className={"col-md-9"}>
                  <div className={styles["sky-select"]}>
                    <div className={styles["sky-select-content"]}>
                      <label className={styles["sky-select-label"]}>
                        Fow what position are you looking for?
                      </label>
                      <select>
                        <option value="1">Hejo</option>
                        <option value="2">Hejo 2</option>
                        <option value="3">Hejo 3</option>
                        <option value="4">Hejo 4</option>
                        <option value="5">Hejo 5</option>
                      </select>
                      <div className={styles["sky-select-help"]}></div>
                    </div>
                  </div>
                </div>
                <div className={"col-md-3"}>
                  <button
                    type="submit"
                    className={`${"btn"} ${"btn-lg"} ${"btn-pink"} ${"btn-full-width"} ${"btn-rounded"}`}
                  >
                    Search
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div id={styles.offers} className={styles["offers-branding"]}>
          <div className={"row"}>
            {/* @foreach ($offers as $offer) */}
            <div className={"col-md-4"}>
              <div className={styles["job-offer-list-item"]}>
                <div className={styles["job-offer-list-item-image"]}></div>
                <div className={styles["job-offer-list-item-role"]}>
                  {/* {{ $offer->title }} */}
                </div>
                <div className={styles["job-offer-list-item-company"]}>
                  {/* {{ $insights[$offer->insight_id]->name }} */}
                </div>
                <div className={styles["job-offer-list-item-details"]}>
                  <div className={styles["job-offer-list-item-contract"]}>
                    Contract
                  </div>
                  <div className={styles["job-offer-list-item-location"]}>
                    {/* {{ $offer->base }} */}
                  </div>
                  <div className={styles["job-offer-list-item-date"]}>
                    {/* {{ $offer->created_at->diffForHumans() }} */}
                  </div>
                </div>
                <div className={styles["job-offer-list-item-more"]}>
                  {/* <a href="{{ route('front.offers.single', ['id' => $offer->id]) }}" className="btn btn-lg btn-outline-pink btn-full-width btn-rounded"></a> */}
                  Read more
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
