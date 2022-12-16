import * as React from "react";
import styles from "./home.module.scss";
import Image from "next/image";
import summary1 from "../../assets/images/home/summary-1.png";
import summary2 from "../../assets/images/home/summary-2.png";
import summary3 from "../../assets/images/home/summary-3.png";
import widgetcheck from "../../assets/images/widget/bg-widget-check.png";
import widgetcontact from "../../assets/images/widget/bg-widget-contact.png";

const Home = () => {
  return (
    <div id={styles.page}>
      <div className={styles["container-fluid"]} id={styles["top-container"]}>
        <div className={styles.row}>
          <div className={styles.container}>
            <div className={styles.row}>
              <div className={styles["col-md-5"]}>
                {/*<div className={`${styles["user-links"]} ${styles["d-sm-block"]} ${styles["d-md-none"]}`}>
                @if (Auth::user())
                @if (Auth::user()->hasRole(\App\Models\User::ROLE_AIRLINE) || Auth::user()->hasRole(\App\Models\User::ROLE_AIRLINE_VERIFIED))
                <a href="{{ route('dashboard') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>Dashboard</a>
                @elseif (Auth::user()->hasRole(\App\Models\User::ROLE_RECRUITER) || Auth::user()->hasRole(\App\Models\User::ROLE_RECRUITER_VERIFIED))
                <a href="{{ route('dashboard') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>Dashboard</a>
                @elseif (Auth::user()->hasRole(\App\Models\User::ROLE_ADMINISTRATOR))
                <a href="{{ route('admin') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>Admin panel</a>
                @endif
                @else
                <a href="{{ route('login') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>Log In</a>
                <a href="{{ route('register') }}" className={`${styles["btn-register"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-rounded"]}`}>Register</a>
                @endif
              </div> 
              */}
                &nbsp;
              </div>
              <div className={styles["col-md-2"]}>
                <div className={styles["top-logo"]}>
                  <div className={styles.logo}></div>
                </div>
              </div>
              <div className={`${styles["col-md-5"]} ${styles["text-right"]}`}>
                <div
                  className={`${styles["user-links"]} ${styles["d-none"]} ${styles["d-md-block"]}`}
                >
                  {/*@if (Auth::user())
                @if (Auth::user()->hasRole(\App\Models\User::ROLE_AIRLINE) || Auth::user()->hasRole(\App\Models\User::ROLE_AIRLINE_VERIFIED))
                <a href="{{ route('dashboard') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}
                >Dashboard</a>
                @elseif (Auth::user()->hasRole(\App\Models\User::ROLE_RECRUITER) || Auth::user()->hasRole(\App\Models\User::ROLE_RECRUITER_VERIFIED))
                <a href="{{ route('dashboard') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>Dashboard</a>
                @elseif (Auth::user()->hasRole(\App\Models\User::ROLE_ADMINISTRATOR))
                <a href="{{ route('admin') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>Admin panel</a>
                @endif
                @else
                <a href="{{ route('login') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>Log In</a>
                <a href="{{ route('register') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>Register</a>
                @endif 
                */}
                <a href="{{ route('login') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>
                  Log In
                  </a>
                <a href="{{ route('register') }}" className={`${styles["btn-login"]} ${styles.btn} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}>
                  Register
                  </a>
                </div>
              </div>
            </div>
            <div className={styles.row}>
              <div className={styles["col-md-12"]}>
                <h1
                  className={styles["top-title-1"]}
                  id={styles["find-your-texts"]}
                >
                  Find your <strong data-find-text></strong>
                </h1>
              </div>
            </div>

            <div className={`${styles.row} ${styles["top-summary"]}`}>
              <div className={styles["col-sm-12"]}>
                <div className={styles["summary-box"]}>
                  <div className={styles["summary-image"]}>
                    <Image src={summary1} alt="summary1" />
                    <div className={styles["summary-branding"]}></div>
                  </div>
                  <div
                    className={styles["summary-overlay"]}
                    onClick="window.open(`http://{{ env('PILOT_DOMAIN') }}/subject`, '_self')" /*style="cursor:pointer;"*/
                  >
                    <div className={styles["summary-count"]}>
                      <strong>{/* { $pilotCount } */}</strong> active offers
                    </div>
                    <div className={styles["summary-footer"]}>
                      <div className={styles["summary-footer-subtitle"]}>
                        Enter Your Office Above the Clouds
                      </div>
                      <div className={styles["summary-footer-title"]}>
                        Pilot
                      </div>

                      <div className={styles["summary-more"]}>
                        <a href="http://{{ env('PILOT_DOMAIN') }}/subject">
                          learn more
                        </a>
                      </div>
                    </div>
                    <div className={styles["summary-line"]}></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className={styles["container"]}>
        <div className={styles.row}>
          <div className={styles["col-md-12"]}>
            <div className={styles["not-enough"]}>
              Not enough? We've got <span>more</span>!
            </div>
          </div>
        </div>
        <div className={`${styles.row} ${styles["top-summary-2"]}`}>
          <div className={styles["col-sm-12"]}>
            <div className={styles["summary-box"]}>
              <div className={styles["summary-image"]}>
                <Image src={summary2} alt="summary2" />
              </div>
              <div
                className={styles["summary-overlay"]}
                onClick="window.open(`http://{{ env('CABIN_DOMAIN') }}/subject`, '_self')" /* style="cursor:pointer;"*/
              >
                <div className={styles["summary-count"]}>
                  <strong>{/* { $cabinCount } */}</strong> active offers
                </div>
                <div className={styles["summary-footer"]}>
                  <div className={styles["summary-footer-subtitle"]}>
                    Travel the World
                  </div>
                  <div className={styles["summary-footer-title"]}>Cabin</div>
                  <div className={styles["summary-more"]}>
                    <a href="http://{{ env('CABIN_DOMAIN') }}/subject">
                      learn more
                    </a>
                  </div>
                </div>
                <div className={styles["summary-line"]}></div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className={`${styles["container"]} ${styles["last-container"]}`}>
        <div className={styles.row}>
          <div className={styles["col-md-12"]}>
            <div className={styles["even-more"]}>
              ...and even <span>more</span>!
            </div>
          </div>
        </div>
        <div className={styles.row}>
          <div className={styles["col-md-12"]}>
            <div
              className={`${styles["summary-box"]} ${styles["summary-shapes"]} ${styles["summary-wide"]}`}
            >
              <div className={styles["summary-image"]}>
                <Image src={summary3} alt="summary3" />
              </div>
              <div
                className={styles["summary-overlay"]}
                onClick="window.open(`http://{{ env('ATC_DOMAIN') }}/subject`, '_self')" /* style="cursor:pointer;" */
              >
                <div className={`${styles["summary-count"]} ${styles.pink}`}>
                  <strong>{/* { $atcCount } */}</strong> active offers
                </div>
                <div className={styles["summary-footer"]}>
                  <div className={styles["summary-footer-subtitle"]}>
                    Manage the Sky
                  </div>
                  <div className={styles["summary-footer-title"]}>
                    Air Traffic Control
                  </div>
                  <div className={styles["summary-more"]}>
                    <a href="http://{{ env('ATC_DOMAIN') }}/subject">
                      learn more
                    </a>
                  </div>
                </div>
                <div className={styles["summary-line"]}></div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className={styles.container}>
        <div
          className={`${styles.row} ${styles["align-items-end"]} ${styles["row-widgets"]}`}
        >
          <div className={`${styles["col-md-4"]} ${styles["px-md-2"]}`}>
            <div className={`${styles.widget} ${styles["widget-check-other"]}`}>
              <Image src={widgetcheck} alt="widgetcheck" />
              <div className={styles["widget-overlay"]}>
                <div
                  onClick="window.open('/faq', '_self')"
                  /* style="cursor:pointer;"*/
                >
                  <div className={styles["widget-subtitle"]}>
                    How can we help you?
                  </div>
                  <div className={styles["widget-title"]}>FAQ</div>
                  <a href="/faq" className={styles["widget-link"]}>
                    check now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div className={`${styles["col-md-8"]} ${styles["px-md-2"]}`}>
            <div className={`${styles.widget} ${styles["widget-contact-us"]}`}>
              <Image src={widgetcontact} alt="widgetcontact" />
              <div className={styles["widget-overlay"]}>
                <div
                  onClick="window.open('#', '_self')" /* style="cursor:pointer;" */
                >
                  <div className={styles["widget-subtitle"]}>
                    Do you have questions?
                  </div>
                  <div className={styles["widget-title"]}>Contact us</div>
                  <a href="#" className={styles["widget-link"]}>
                    open a ticket
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Home;
