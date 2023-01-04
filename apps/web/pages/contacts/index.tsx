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
        <div>
        <Mini_Header title={"Contact Us"} />
        </div>
    )
}

export default ContactUs;