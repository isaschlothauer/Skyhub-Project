import * as React from "react";
import Image from "next/image";
import { useState } from "react";
import { useContext } from "react";
import { AuthContext } from "../../contexts/AuthContext";
import { useEffect } from "react";
import jwt_decode from "jwt-decode";

{
  /*STYLES*/
}

import styles from "./home.module.scss";
import stylesJobs from "../../components/subjectTile.module.scss";
import styleslrButton from "../../components/generalButton.module.scss";
import stylesArrow from "../../components/arrowButton.module.scss";

{
  /*COMPONENTS*/
}
import Tile from "../../components/SubjectTile";
import Footer from "../../components/Footer";
import { LearnMoreArrow } from "../../components/ArrowButton";
import LoginButton from "../../components/GeneralButton";
import ContainerFAQContact from "../../components/FAQ_Contact_Container";

{
  /*IMAGES*/
}
import PilotTile from "../../assets/images/widget/PilotWidgetMainPage.jpg";
import CabinTile from "../../assets/images/widget/CabinWidgetMainPage.jpg";
import ATCTile from "../../assets/images/widget/ATCWidgetMainPage.jpg";
import CrossandSquare from "../../assets/images/branding/branding-3.png";

const loginregButtons = [
  {
    id: 1,
    route: "/login",
    cSass: styleslrButton["loginreg-white"],
    buttontext: "Log In",
  },
  {
    id: 2,
    route: "/registration",
    cSass: styleslrButton["loginreg-pink"],
    buttontext: "Register",
  },
  {
    id: 3,
    route: "",
    cSass: `${styleslrButton["loginreg-white"]} ${styleslrButton["loginreg-logout"]}`,
    buttontext: "Log Out",
  },
  {
    id: 4,
    route: "",
    cSass: `${styleslrButton["loginreg-pink"]} ${styleslrButton["loginreg-pink-adminpanel"]}`,
    buttontext: "Admin Panel",
  },
  {
    id: 5,
    route: "",
    cSass: `${styleslrButton["loginreg-pink"]} ${styleslrButton["loginreg-pink-dashboard"]}`,
    buttontext: "Dashboard",
  },
];

const jobTiles = [
  {
    id: 1,
    picture: PilotTile,
    tilename: "Pilot",
    cSass: stylesJobs["tile-main-container"],
    subtilename: "Enter Your Office Above the Clouds",
    arrowbmap: (
      <LearnMoreArrow
        arrowtext={"Learn More"}
        cSass={stylesArrow["arrow-jobs"]}
        link={"/pilot"}
      />
    ),
  },

  {
    id: 2,
    picture: CabinTile,
    tilename: "Cabin",
    cSass: stylesJobs["tile-main-container"],
    subtilename: "Travel Around the World",
    arrowbmap: (
      <LearnMoreArrow
        arrowtext={"Learn More"}
        cSass={stylesArrow["arrow-jobs"]}
        link={"/cabin"}
      />
    ),
  },

  {
    id: 3,
    picture: ATCTile,
    tilename: "Air Traffic Control",
    cSass: stylesJobs["tile-main-container"],
    subtilename: "Manage the Sky",
    arrowbmap: (
      <LearnMoreArrow
        arrowtext={"Learn More"}
        cSass={stylesArrow["arrow-jobs"]}
        link={"/atc"}
      />
    ),
  },
];

const Home = () => {
  // localStorage contains auth_token only when logged in. To trigger and render Admin panel button and edit page link,
  // check if localStorage.auth_token exists.
  // Protected path to admin panel still have to be setup.
  const { authToken, setAuthToken } = useContext(AuthContext);

  useEffect(() => {
    console.log(window.localStorage);
    window.localStorage.auth_token
      ? console.log("localStorage: Yes")
      : console.log("localStorage: No");
    window.sessionStorage.auth_token
      ? console.log("SessionStorage: Yes")
      : console.log("SessionStorage: No");

    let token = "";

    if (window.localStorage.auth_token || window.sessionStorage.auth_token) {
      console.log("token is in the storage");

      if (window.localStorage.auth_token) {
        setAuthToken(window.localStorage.auth_token);
        token = window.localStorage.auth_token;
      } else {
        setAuthToken(window.sessionStorage.auth_token);
        token = window.sessionStorage.auth_token;
      }

      console.log(authToken);

      // let token = window.localStorage.auth_token;

      console.log(token);

      if (token === null) {
        console.log("No valid token");
        return;
      } else {
        let decoded = jwt_decode(token);
        console.log(decoded);
      }
    } else {
      console.log("No valid token");
    }

    // LOGOFF BUTTON IN LINE 240
  }, [authToken]);

  function logoff() {
    setAuthToken(null);
    localStorage.clear();
    sessionStorage.clear();
  }

  // console.log(window.localStorage);
  return (
    <div className={styles["mainpage"]}>
      <div
        className={`${styles["mainpage-header"]} ${styles["header-homepage"]}`}
      >
        <div className={"flex flex-wrap"}>
          <div className={`container mx-auto sm:px-0`}>
            <div
              className={`flex md:flex justify-end ${styles["mainpage-headerflex"]}`}
            >
              {/*SKYHUB LOGO*/}
              <div className={styles["mainpage-logoflex"]}>
                <div className={styles["mainpage-logocontainer"]}>
                  <div className={styles["mainpage-logo"]}></div>
                </div>
              </div>

              {/*LOGIN/REGISTER BUTTON*/}

              {authToken == null ? (
                <div
                  className={`${"md:w-1/3 pr-0 pl-1 ml-16"} ${"text-right"} ${
                    styles["mainpage-logincontainer"]
                  }`}
                >
                  <div
                    className={`${
                      styles["mainpage-logincontainer2nd"]
                    }  ${"md:block"}`}
                  >
                    {loginregButtons.slice(0, 2).map((gbutton) => (
                      <LoginButton
                        className={"ml-8 lg:ml-0"}
                        key={gbutton.id}
                        route={gbutton.route}
                        cSass={gbutton.cSass}
                        buttontext={gbutton.buttontext}
                      />
                    ))}
                  </div>
                </div>
              ) : authToken != null &&
                (Object.values(jwt_decode(authToken)).includes("recruiter") ||
                  Object.values(jwt_decode(authToken)).includes("airline")) ? (
                <div
                  className={`${"md:w-1/3 pr-0 pl-1 ml-16"} ${"text-right"} ${
                    styles["mainpage-logincontainer"]
                  }`}
                >
                  <div
                    className={`${
                      styles["mainpage-logincontainer2nd"]
                    }  ${"md:block"}`}
                  >
                    {loginregButtons
                      .filter((rbutton) => rbutton.id === 3 || rbutton.id === 5)
                      .map((gbutton) =>
                        gbutton.id === 3 ? (
                          <LoginButton
                            onClick={logoff}
                            className={"ml-8 lg:ml-0"}
                            key={gbutton.id}
                            route={gbutton.route}
                            cSass={gbutton.cSass}
                            buttontext={gbutton.buttontext}
                          />
                        ) : (
                          <LoginButton
                            className={"ml-8 lg:ml-0"}
                            key={gbutton.id}
                            route={gbutton.route}
                            cSass={gbutton.cSass}
                            buttontext={gbutton.buttontext}
                          />
                        )
                      )}
                  </div>
                </div>
              ) : authToken != null &&
                Object.values(jwt_decode(authToken)).includes("admin") ? (
                <div
                  className={`${"md:w-1/3 pr-0 pl-1 ml-16"} ${"text-right"} ${
                    styles["mainpage-logincontainer"]
                  }`}
                >
                  <div
                    className={`${
                      styles["mainpage-logincontainer2nd"]
                    }  ${"md:block"}`}
                  >
                    {loginregButtons
                      .filter(
                        (adbutton) => adbutton.id === 3 || adbutton.id === 4
                      )
                      .map((gbutton) =>
                        gbutton.id === 3 ? (
                          <LoginButton
                            onClick={logoff}
                            className={"ml-8 lg:ml-0"}
                            key={gbutton.id}
                            route={gbutton.route}
                            cSass={gbutton.cSass}
                            buttontext={gbutton.buttontext}
                          />
                        ) : (
                          <LoginButton
                            className={"ml-8 lg:ml-0"}
                            key={gbutton.id}
                            route={gbutton.route}
                            cSass={gbutton.cSass}
                            buttontext={gbutton.buttontext}
                          />
                        )
                      )}
                  </div>
                </div>
              ) : (
                <p>Error: You are not an admin, recruiter or airline</p>
              )}
            </div>
          </div>
        </div>
      </div>

      {/*PHRASE GENERATOR - ROBOT */}
      <div className={"flex flex-wrap justify-around"}>
        <div
          className={`md:w-full pr-0 pl-0 ${styles["mainpage-robotcontainer"]}`}
        >
          <h1 className={styles["maingpage-robottext"]}>
            Find
            your&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
              <div>
                <div className="word1">dream</div>
                <div className="word2">offer</div>
                <div className="word3">passion</div>
                <div className="word4">airline</div>
                <div className="word5">salary</div>
              </div>
            </strong>
          </h1>
        </div>
      </div>

      {/*CROSSES AND SQAURES IMAGE*/}
      <Image
        className={styles.crossimage1}
        src={CrossandSquare}
        alt="CrossandSquare"
      />

      {/*PILOT TILE COMPONENT*/}
      <div className={`container mx-auto sm:px-0`}>
        {jobTiles.slice(0, 1).map((pilottile) => (
          <Tile
            key={pilottile.id}
            tilename={pilottile.tilename}
            cSass={pilottile.cSass}
            picture={pilottile.picture}
            subtilename={pilottile.subtilename}
            arrowbmap={pilottile.arrowbmap}
          />
        ))}
      </div>

      {/* FIRST TEXT MAIN PAGE*/}
      <div className={"container mx-auto sm:px-0"}>
        <div className={"md:w-full pr-0 pl-0"}>
          <div className={styles["mainpage-firsttext"]}>
            Not enough? We&apos;ve got <span>more</span>!
          </div>
        </div>
      </div>

      {/*CABIN TILE COMPONENT*/}
      <div className={`container mx-auto sm:px-0`}>
        {jobTiles.slice(1, 2).map((cabintile) => (
          <Tile
            key={cabintile.id}
            tilename={cabintile.tilename}
            cSass={cabintile.cSass}
            picture={cabintile.picture}
            subtilename={cabintile.subtilename}
            arrowbmap={cabintile.arrowbmap}
          />
        ))}
      </div>

      {/* SECOND TEXT MAIN PAGE*/}
      <div className={`${"container mx-auto sm:px-0"}`}>
        <div>
          <div className={"md:w-full pr-4 pl-4"}>
            <div className={styles["mainpage-secondtext"]}>
              ...and even <span>more</span>!
            </div>
          </div>
        </div>
      </div>

      {/* ATC TILE COMPONENT*/}
      <div
        className={`container mx-auto sm:px-0 ${styles["mainpage-atctile"]}`}
      >
        {jobTiles.slice(2, 3).map((atctile) => (
          <Tile
            key={atctile.id}
            tilename={atctile.tilename}
            cSass={atctile.cSass}
            picture={atctile.picture}
            subtilename={atctile.subtilename}
            arrowbmap={atctile.arrowbmap}
          />
        ))}
      </div>

      {/*CROSSES AND SQAURES IMAGE*/}
      <div className={styles["mainpage-crossimage2container"]}>
        <Image
          className={styles.crossimage2}
          src={CrossandSquare}
          alt="CrossandSquare"
        />
      </div>
      {/* FAQ & CONTACT US COMPONENT*/}
      <div className={`container mx-auto sm:px-0}`}>
        <ContainerFAQContact />
      </div>

      <Footer />
    </div>
  );
};

export default Home;

{
  /*
      NOTES ABOUT BS TO TW:
container = container mx-auto sm:px-0
cointainer-fluid = mainpage-header*/
}

{
  /*
      NOTES ABOUT THE DIFFERENT STYLES AFTER LOG IN:
      
 @if (Auth::user())
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
*/
}

{
  /*<div className={`${styles["user-links"]} ${styles["d-sm-block"]} ${styles["d-md-none"]}`}>
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
*/
}

{
  /*container=container mx-auto sm:px-0*/
}
{
  /*cointainer-fluid=mainpage-header*/
}
