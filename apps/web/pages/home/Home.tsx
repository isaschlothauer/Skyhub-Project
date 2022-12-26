import * as React from "react";
import Image, { StaticImageData } from "next/image";

{/*STYLES*/}
import styles from "./home.module.scss";
import stylesJobs from "../../components/Tile.module.scss";
import styleslrButton from "../../components/LoginRegisterButton.module.scss"
import stylesArrow from "../../components/LearnMoreArrow.module.scss";

{/*COMPONENTS*/}
import Tile from "../../components/Tile";
import Footer from "../../components/Footer";
import { LearnMoreArrow } from "../../components/LearnMoreArrow";
import LoginButton from "../../components/LoginRegisterButton"
import ContainerFAQContact from "../../components/containerFAQContact";

{/*IMAGES*/}
import PilotTile from "../../assets/images/home/summary-1.png";
import CabinTile from "../../assets/images/home/summary-2.png";
import ATCTile from "../../assets/images/home/summary-3.png";
import CrossandSquare from "../../assets/images/branding/branding-3.png"



const loginregButtons =[
  {
   route:"{{ route('login') }}",
   cSass: styleslrButton["loginreg-white"],
   buttontext:"Log In"
  }, 
  {
   route:"{{ route('register') }}",
   cSass: styleslrButton["loginreg-pink"],
   buttontext: "Register"
   }
]

const arrowButtons= [{
  arrowtext: "Open a Ticket",
  cSass:stylesArrow["arrow-faqcontact"],
},{
  arrowtext: "Check Now",
  cSass:stylesArrow["arrow-faqcontact"],
},{
  arrowtext: "Learn More",
  cSass:stylesArrow["arrow-jobs"]
}]

const jobTiles = [
  {
    picture: PilotTile,
    tilename: "Pilot",
    cSass: stylesJobs["tile-main-container"],
    subtilename: "Enter Your Office Above the Clouds",
    arrowbmap: arrowButtons.slice(2, 3).map((arrowbutton) => (<LearnMoreArrow text={arrowbutton.arrowtext} cSass={arrowbutton.cSass}/>))
  },

  {
    picture: CabinTile,
    tilename: "Cabin",
    cSass: stylesJobs["tile-main-container"],
    subtilename: "Travel Around the World",
    arrowbmap: arrowButtons.slice(2, 3).map((arrowbutton) => (<LearnMoreArrow text={arrowbutton.arrowtext} cSass={arrowbutton.cSass}/>))
  },

  {
    picture: ATCTile,
    tilename: "Air Traffic Control",
    cSass: stylesJobs["tile-main-container"],
    subtilename: "Manage the Sky",
    arrowbmap: arrowButtons.slice(2, 3).map((arrowbutton) => (<LearnMoreArrow text={arrowbutton.arrowtext} cSass={arrowbutton.cSass}/>))
  },
];





const Home = () => {
  return (
<>
    <div className={styles["mainpage"]}> 
      <div className={styles["mainpage-header"]}>
        <div className={"flex flex-wrap"}>
          <div className={`container mx-auto sm:px-0`}>
            <div className={"flex flex-wrap"}>
              <div className={"md:w-2/5 pr-0 pl-0"}></div>

            {/*SKYHUB LOGO*/}
            <div className={"md:w-1/5 pr-4 pl-4"}>
                <div className={styles["mainpage-logocontainer"]}>
                  <div className={styles["mainpage-logo"]}></div>
                </div>
              </div>
              
            {/*LOGIN/REGISTER BUTTON*/}
                 <div className={`${"md:w-2/5 pr-1 pl-4"} ${"text-right"} ${styles["mainpage-logincontainer"]}`}>
                  <div className={`${styles["mainpage-logincontainer2nd"] } ${"hidden"} ${"md:block"}`} >

                   {loginregButtons.map((test) => (
                               <LoginButton
                               route={test.route}
                               cSass={test.cSass}
                               buttontext={test.buttontext}
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
        <div className={`md:w-full pr-0 pl-0 ${styles["mainpage-robotcontainer"]}`}>
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
              arrowbinfo={pilottile.arrowbmap}
            />
          ))}
        </div>
      </div>


       {/* FIRST TEXT MAIN PAGE*/}
       <div className={"container mx-auto sm:px-0"}>
        <div className={"flex flex-wrap"}>
          <div className={"md:w-full pr-0 pl-0"}>
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
              arrowbinfo={cabintile.arrowbmap}
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
                arrowbinfo={atctile.arrowbmap}
              />
            ))}
          </div>
        </div>
        

        {/*CROSSES AND SQAURES IMAGE*/}
        <Image className={styles.crossimage2} src={CrossandSquare} alt="CrossandSquare"/>


        {/* FAQ & CONTACT US COMPONENT*/}
        <ContainerFAQContact/>

      
      <Footer />
    </div>
    </>
  );
};

export default Home;


{/*
      NOTES ABOUT BS TO TW:

container = container mx-auto sm:px-0
cointainer-fluid = mainpage-header*/
}


 {/*
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
*/}

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
            