import * as React from "react";
import styles from "./home.module.scss";
import styles2 from "../../components/Tile.module.scss";

import summary1 from "../../assets/images/home/summary-1.png";
import summary2 from "../../assets/images/home/summary-2.png";
import summary3 from "../../assets/images/home/summary-3.png";

import widgetcheck from "../../assets/images/widget/bg-widget-check.png";
import widgetcontact from "../../assets/images/widget/bg-widget-contact.png";

import FAQContact from "../../components/FAQ_contact_tile";
import Footer from "../../components/Footer";
import Tile from "../../components/Tile";
import Link from "next/link";
import Image from "next/image";

const test = [
  {
    pic: summary1,
    label: "Pilot",
    className: styles2["tile-main-container"],
    subtitle: "Enter Your Office Above the Clouds",
  },

  {
    pic: summary2,
    label: "Cabin",
    className: styles2["tile-main-container"],
    subtitle: "Travel Around the World",
  },

  {
    pic: summary3,
    label: "Air Traffic Control",
    className: styles2["tile-main-container"],
    subtitle: "Manage the Sky",
  },
];

const test2 = [
  {
    label: "FAQ",
    subtext: "How can we help you?",
    styleprop: styles["contactus-container"],
    tailwind: "md:w-1/3 pr-4 pl-4 md:px-2",
    pic: widgetcheck,
  },

  {
    label: "Contact Us",
    subtext: "Do you have questions?",
    styleprop: styles["faq-container"],
    tailwind: "md:w-2/3 pr-4 pl-4 md:px-2",
    pic: widgetcontact,
  },
];

const Home = () => {
  return (
    <div id={styles.page}>
      <div className={"container-fluid"} id={styles["top-container"]}>
        <div className={"row"}>
          <div className={"container"}>
            <div className={"row"}>
              {/* COMPONENT1 BUTTONS */}
              <div className={"col-md-5"}>
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

              <div className={"col-md-2"}>
                <div className={styles["top-logo"]}>
                  <div className={styles.logo}></div>
                </div>
              </div>

              {/* COMPONENT2 BUTTONS */}
              <div className={`${"col-md-5"} ${"text-right"}`}>
                <div
                  className={`${
                    styles["user-links"]
                  } ${"d-none"} ${"d-md-block"}`}
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
                  <a
                    href="{{ route('login') }}"
                    className={`${styles["btn-login"]} ${styles["btn"]} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}
                  >
                    Log In
                  </a>
                  <a
                    href="{{ route('register') }}"
                    className={`${styles["btn-login"]} ${styles["btn"]} ${styles["btn-lg"]} ${styles["btn-outline-white"]} ${styles["btn-rounded"]}`}
                  >
                    Register
                  </a>
                </div>
              </div>
            </div>

            {/* COMPONENT PHRASE GENERATOR */}
            <div className={"row"}>
              <div className={"col-md-12"}>
                <h1
                  className={styles["top-title-1"]}
                  id={styles["find-your-texts"]}
                >
                  Find your <strong data-find-text></strong>
                </h1>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className={"container"}>
        <div className={"row"}>
          {test.map((test) => (
            <Tile
              label={test.label}
              test={test.className}
              pic={test.pic}
              subtitle={test.subtitle}
            />
          ))}
        </div>
      </div>

      <div className={"container"}>
        <div className={"row"}>
          <div className={"col-md-12"}>
            <div className={styles["not-enough"]}>
              Not enough? We've got <span>more</span>!
            </div>
          </div>
        </div>
      </div>

      <div className={`${"container"} ${styles["last-container"]}`}>
        <div className={"row"}>
          <div className={"col-md-12"}>
            <div className={styles["even-more"]}>
              ...and even <span>more</span>!
            </div>
          </div>
        </div>

        <div className={"container"}>
          <div
            className={`${"row"} ${"align-items-end"} ${styles["row-widgets"]}`}
          >
            {/* FAQ BUTTON COMPONENT OLD
          <div className={`${"col-md-4"} ${"px-md-2"}`}>
            <div className={`${styles.widget} ${styles["widget-check-other"]}`}>
              <Image src={widgetcheck} alt="widgetcheck" />
              <div className={styles["widget-overlay"]}>
                <div>
                  <Link href="/faq" />
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
          <ContactUs />
           */}

            <div className={"container"}>
              <div
                className={`${"row"} ${"align-items-end"} ${
                  styles["row-widgets"]
                }}`}
              >
                {test2.map((test) => (
                  <FAQContact
                    label={test.label}
                    sprop={test.styleprop}
                    subtext={test.subtext}
                    tailwindclass={test.tailwind}
                    pic={test.pic}
                  />
                ))}
              </div>
            </div>
          </div>
        </div>
      </div>
      <Footer />
    </div>
  );
};

export default Home;
