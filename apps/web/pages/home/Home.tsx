import * as React from "react";
import Image, { StaticImageData } from "next/image";
import styles from "./home.module.scss";
import stylesJobs from "../../components/Tile.module.scss";
import stylesFC from "../../components/FAQ_contact.module.scss";

import PilotTile from "../../assets/images/home/summary-1.png";
import CabinTile from "../../assets/images/home/summary-2.png";
import ATCTile from "../../assets/images/home/summary-3.png";
import FAQTile from "../../assets/images/widget/bg-widget-check.png";
import ContactTile from "../../assets/images/widget/bg-widget-contact.png";
import CrossandSquare from "../../assets/images/branding/branding-3.png"

import Tile from "../../components/Tile";
import FAQContact from "../../components/FAQ_contact_tile";
import Footer from "../../components/Footer";



const jobTiles = [
  {
    picture: PilotTile,
    tilename: "Pilot",
    cSass: stylesJobs["tile-main-container"],
    subtilename: "Enter Your Office Above the Clouds",
  },

  {
    picture: CabinTile,
    tilename: "Cabin",
    cSass: stylesJobs["tile-main-container"],
    subtilename: "Travel Around the World",
  },

  {
    picture: ATCTile,
    tilename: "Air Traffic Control",
    cSass: stylesJobs["tile-main-container"],
    subtilename: "Manage the Sky",
  },
];

const fcTiles = [
  {
    tilename: "FAQ",
    subtilename: "How can we help you?",
    cSass: stylesFC["contactus-container"],
    cTailwind: "md:w-1/3 pr-2 pl-2 md:px-2",
    picture: FAQTile,
  },

  {
    tilename: "Contact Us",
    subtilename: "Do you have questions?",
    cSass: stylesFC["faq-container"],
    cTailwind: "md:w-2/3 pr-2 pl-2 md:px-2",
    picture: ContactTile,
  },
];


const Home = () => {
  return (
    
    <div> 
      <div className={styles["mainpage-header"]}>
        <div className={"flex flex-wrap"}>
          <div className={`container mx-auto sm:px-0`}>
            <div className={"flex flex-wrap"}>
              {/* COMPONENT1 BUTTONS */}
              <div className={"md:w-2/5 pr-4 pl-4"}>
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


            {/*SkyHub Logo*/}
            <div className={"md:w-1/5 pr-4 pl-4"}>
                <div className={styles["mainpage-logocontainer"]}>
                  <div className={styles["mainpage-logo"]}></div>
                </div>
              </div>
                          {/* COMPONENT BUTTONS */}
            <div className={`${"md:w-2/5 pr-4 pl-4"} ${"text-right"}`}>
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
          </div>
        </div>
      </div>





       {/*PHRASE GENERATOR - ROBOT */}
      <div className={"flex flex-wrap"}>
        <div className={`md:w-full pr-4 pl-4 ${styles["mainpage-robotcontainer"]}`}>
          <h1 className={styles["maingpage-robottext"]}>
          Find your <strong data-find-text></strong> {/*!!! Database Info*/}
        </h1>
       </div>
      </div>


      {/*CROSSES AND SQAURES IMAGE*/}
      <Image className={styles.crossimage1} src={CrossandSquare} alt="CrossandSquare"/>

      {/*PILOT TILE COMPONENT*/}
      <div className={`container mx-auto sm:px-0`}>
        <div className={"flex flex-wrap"}>
          {jobTiles.slice(0, 1).map((pilottile) => (
            <Tile
              tilename={pilottile.tilename}
              cSass={pilottile.cSass}
              picture={pilottile.picture}
              subtilename={pilottile.subtilename}
            />
          ))}
        </div>
      </div>


       {/* FIRST TEXT MAIN PAGE*/}
       <div className={"container mx-auto sm:px-0"}>
        <div className={"flex flex-wrap"}>
          <div className={"md:w-full pr-4 pl-4"}>
            <div className={styles["mainpage-firsttext"]}>
              Not enough? We've got <span>more</span>!
            </div>
          </div>
        </div>
      </div>





       {/*CABIN TILE COMPONENT*/}
      <div className={`container mx-auto sm:px-0`}>
        <div className={"flex flex-wrap"}>
          {jobTiles.slice(1, 2).map((cabintile) => (
            <Tile
              tilename={cabintile.tilename}
              cSass={cabintile.cSass}
              picture={cabintile.picture}
              subtilename={cabintile.subtilename}
            />
          ))}
        </div>
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
        <div className={`container mx-auto sm:px-0 ${styles["mainpage-atctile"]}`}>
          <div className={"flex flex-wrap"}>
            {jobTiles.slice(2, 3).map((atctile) => (
              <Tile
                tilename={atctile.tilename}
                cSass={atctile.cSass}
                picture={atctile.picture}
                subtilename={atctile.subtilename}
              />
            ))}
          </div>
        </div>
        

        {/*CROSSES AND SQAURES IMAGE*/}
        <Image className={styles.crossimage2} src={CrossandSquare} alt="CrossandSquare"/>


        {/* FAQ & CONTACT US COMPONENT*/}
        <div className={`container mx-auto sm:px-0 ${styles["mainpage-faqcontact"]}`}>
              <div className={`${"flex flex-wrap"} ${"items-end"}`}>
                {fcTiles.map((fctile) => (
                  <FAQContact
                    tilename={fctile.tilename}
                    cSass={fctile.cSass}
                    subtilename={fctile.subtilename}
                    cTailwind={fctile.cTailwind}
                    picture={fctile.picture}
                  />
                ))}
              </div>
        </div>
      
      <Footer />
    </div>
  );
};

export default Home;


{/*container=container mx-auto sm:px-0*/}
{/*cointainer-fluid=mainpage-header*/}