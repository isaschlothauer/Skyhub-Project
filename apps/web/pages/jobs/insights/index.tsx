import React from "react";
import styles from "./insights.module.scss";
//import ContactUs from "../../../components/ContactUs";
//import JobsBtn from "../../../components/JobsBtn";
import Mini_Header from "../../../components/Header";
import Footer from "../../../components/Footer";

export default function Insights() {
  return (
    <div id={"page"}>
      <Mini_Header title={"Airline Insights"} />
      <div className={"container"}>
        <div className={"row"} /* style="position: relative; z-index: 5;" */>
          <div className={"col-md-12"}>
            <div id={styles["insights-filter"]}>
              <div className={"row"}>
                <div className={"col-md-6"}>
                  <div className={styles["sky-select"]}>
                    <div className={styles["sky-select-content"]}>
                      <label className={styles["sky-select-label"]}>
                        Country search
                      </label>

                      <select name="region">
                        <option value="">-</option>
                        <option
                          value="africa" /* {{ $region === 'africa' ? 'selected="selected"' : '' }} */
                        >
                          Africa
                        </option>
                        <option value="asia">Asia</option>
                        <option value="australia">Australia</option>
                        <option value="europe">Europe</option>
                        <option value="north_america">North America</option>
                        <option value="middle_east">Middle East</option>
                        <option value="south_america">South America</option>
                      </select>

                      <div className={styles["sky-select-help"]}></div>
                    </div>
                  </div>
                </div>
                <div className={"col-md-6"}>
                  <div className={styles["sky-select"]}>
                    <div className={styles["sky-select-content"]}>
                      <label className={styles["sky-select-label"]}>
                        Type of Airline
                      </label>

                      <select name="type">
                        <option value="">-</option>
                        <option value="legacy">Legacy</option>
                        <option value="national">National</option>
                        <option value="charter">Charter</option>
                        <option value="cargo">Cargo</option>
                        <option value="regional">Regional</option>
                        <option value="corporate">Corporate</option>
                        <option value="helicopter">Helicopter</option>
                      </select>

                      <div className={styles["sky-select-help"]}></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id={styles.insights}>
          <div className={"row"}>
            {/* @foreach ($insights as $insight) */}
            <div className={"col-md-4"}>
              <div className={styles["insights-list-item"]}>
                <div className={styles["insights-list-item-image"]}>
                  {/* If statement */}

                  {/* <img
                    src="{{ $insightService->getLogoSrc($insight->image_id) }}"
                    className={"centered-image"}
                  /> */}
                </div>
                <div className={styles["insights-list-item-company"]}>
                  {/* {{ $insight->name }} */}
                </div>
                <a
                  href="/insight/{{ $insight->slug }}"
                  className="insights-list-item-arrow"
                >
                  <span></span>
                </a>
              </div>
            </div>
          </div>
          {/* @if ($pages > 1)
            <div className={"row"}>
                <div className={"col-12"}>
                    <div className={`${"pagination"} ${"col-bg"}`}>
                        <!-- First and Previous Page Navigation Buttons -->
                        @if ($page > 2)
                            <a href="?page={{ 1 }}" className={"pagination-first"}></a>
                        @endif
                        @if ($page > 1)
                            <a href="?page={{ $page - 1 }}" className={"pagination-previous"}></a>
                        @endif
                        <!-- Surrounding Page Numbers -->
                        {{-- @for ($i = $page - 5; $i < $page; $i++)
                            @if ($i > 0)
                                <a href="?page={{ $i }}" className={"pagination-link"}>{{ $i }}</a>
                            @endif
                        @endfor --}}
                        @if ($page > 2)
                            <span className={"pagination-spoiler"}>...</span>
                        @endif
                        @if ($page > 1)
                            <a href="?page={{ $page - 1 }}" className={"pagination-link"}>{{ $page - 1 }}</a>
                        @endif
                        <span className="pagination-link active">{{ $page }}</span>
                        @if ($page < $pages)
                            <a href="?page={{ $page + 1 }}" className={"pagination-link"}>{{ $page + 1 }}</a>
                        @endif
                        @if ($page + 1 < $pages)
                            <a href="?page={{ $page + 2 }}" className={"pagination-link"}>{{ $page + 2 }}</a>
                        @endif
                        @if ($page + 2 < $pages)
                            <span className={"pagination-spoiler"}>...</span>
                        @endif
                        {{-- @if ($pages > 1)
                            <span className={"pagination-spoiler"}>...</span>
                            @if ($pages > $page)
                                <a href="?page={{ $pages }}" className={"pagination-link"}>{{ $pages }}</a>
                            @else
                                <span className={`{"pagination-link"} ${"active"}`}>{{ $pages }}</span>
                            @endif
                        @endif --}}
                        <!-- Next and Last Page Navigation Buttons -->
                        @if ($page < $pages)
                            <a href="?page={{ $page + 1 }}" className={"pagination-next"}></a>
                        @endif
                        @if ($page < $pages - 1)
                            <a href="?page={{ $pages }}" className={"pagination-last"}></a>
                        @endif
                    </div>
                </div>
            </div>
        @endif
        */}
        </div>
        <div
          className={`${"row"} ${"align-items-end"} ${styles["row-widgets"]}}`}
        >
          {/* <JobsBtn />
          <ContactUs /> */}
        </div>
      </div>
      <Footer />
    </div>
  );
}
