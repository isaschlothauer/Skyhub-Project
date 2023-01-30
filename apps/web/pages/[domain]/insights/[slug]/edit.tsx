import React from "react";
import { useRouter } from "next/router";
import axios from "axios";
import { useEffect, useState } from "react";
import DOMPurify from "dompurify";
import EditInsight from "../../../../components/EditInsight";

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
          //   console.log(data[0]);
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

  //   console.log(airlineInfo);
  if (domain == null || slug == null || airlineInfo == null) return <></>;

  return (
    <div>
      <EditInsight
        airlineInfo={airlineInfo}
        domain={domain.toString()}
        slug={slug.toString()}
      />
    </div>
  );
}
