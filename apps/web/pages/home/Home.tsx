import * as React from "react";
import Image from "next/image";

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
        cSass={stylesArrow["arrow-faqcontact"]}
        link={"/jobs"}
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
        cSass={stylesArrow["arrow-faqcontact"]}
        link={"/jobs"}
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
        cSass={stylesArrow["arrow-faqcontact"]}
        link={"/jobs"}
      />
    ),
  },
];

const Home = () => {
  return (
    <div className={styles["mainpage"]}>
      <div className={`${styles["mainpage-header"]} ${styles["header-homepage"]}`}>
        <div className={"flex flex-wrap"}>
          <div className={`container mx-auto sm:px-0`}>
            <div className={"flex flex-wrap justify-end"}>
              <div className={"md:w-1/3 pr-0 pl-0"}></div>

              {/*SKYHUB LOGO*/}
              <div className={"md:w-1/4 pr-4 pl-4"}>
                <div className={styles["mainpage-logocontainer"]}>
                  <div className={styles["mainpage-logo"]}></div>
                </div>
              </div>

              {/*LOGIN/REGISTER BUTTON*/}
              <div
                className={`${"md:w-1/3 pr-1 pl-1 ml-16"} ${"text-right"} ${
                  styles["mainpage-logincontainer"]
                }`} 
              >
                <div
                  className={`${
                    styles["mainpage-logincontainer2nd"]
                  } ${"hidden"} ${"md:block"}`}
                >
                  {loginregButtons.map((gbutton) => (
                    <LoginButton
                      key={gbutton.id}
                      route={gbutton.route}
                      cSass={gbutton.cSass}
                      buttontext={gbutton.buttontext}
                    />
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/*PHRASE GENERATOR - ROBOT */}
      <div className={"flex flex-wrap"}>
        <div
          className={`md:w-full pr-0 pl-0 ${styles["mainpage-robotcontainer"]}`}
        >
          <h1 className={styles["maingpage-robottext"]}>
            Find your <strong data-find-text></strong> {/*!!! Database Info*/}
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
        <div className={"flex flex-wrap"}>
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
      <Image
        className={styles.crossimage2}
        src={CrossandSquare}
        alt="CrossandSquare"
      />

      {/* FAQ & CONTACT US COMPONENT*/}
      <div
        className={`container mx-auto sm:px-0 ${styles["mainpage-faqcontact"]}`}
      >
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
