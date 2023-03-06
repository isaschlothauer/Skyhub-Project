import React from "react";
import { useRouter } from "next/router";
import axios from "axios";
import { useEffect, useState } from "react";
import DOMPurify from "dompurify";
import EditInsight from "../../../../components/EditInsight";
import Mini_Header from "../../../../components/Header";
import Footer from "../../../../components/Footer";
import FAQ_Contact_Container from "../../../../components/FAQ_Contact_Container";

export default function EditInsightPage() {
  const router = useRouter();
  const { domain, slug } = router.query;
  const [airlineInfo, setAirlineInfo] = useState<AirlineInformationType | null>(
    null
  );

  useEffect(() => {
    if (domain && slug)
      axios
        .get(`http://localhost:5000/${domain}/insights/${slug}`)
        .then((response) => response.data)
        .then((data) => {
          const airlineInfo = {
            ...data[0],
            fleet: DOMPurify.sanitize(data[0].fleet),
            orders: DOMPurify.sanitize(data[0].orders),
            assessments: DOMPurify.sanitize(data[0].assessments),
            benefits: DOMPurify.sanitize(data[0].benefits),
          };
          setAirlineInfo(airlineInfo);
        });
  }, [domain, slug]);

  if (domain == null || slug == null || airlineInfo == null) return <></>;

  return (
    <div>
      <Mini_Header
        title={`${airlineInfo.name}`}
        Scssdomain={domain as string}
      />
      <div className="mx-auto container relative z-10 mobile:top-[15.625rem] tablet:top-[16.25rem] pc:top-[20rem] ">
        <EditInsight domain={domain} slug={slug} airlineInfo={airlineInfo} />
        <FAQ_Contact_Container />
      </div>
      <div className="relative z-10 mobile:top-[15.625rem] tablet:top-[16.25rem] pc:top-[20rem]">
        <Footer />
      </div>
    </div>
  );
}
