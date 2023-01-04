import React from "react";
import Image from "next/image";

// importing styles
import contactUsStyle from "./contactus.module.scss";

// importing components
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";
//import FAQTile from "../../components/FAQ_contact_tile"

const ContactUs = () => {
    return (
    <div className={`${contactUsStyle["all-container"]} ${contactUsStyle["header-otherpages"]}`}>
     <Mini_Header title={"Contact Us"} />
        <div className={`block rounded-lg shadow-lg py-10 md:py-12 px-4 md:px-6 ${contactUsStyle["contact-form"]}`}>
        </div>
     <Footer />
    </div>
    )
}

export default ContactUs;