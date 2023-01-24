import React from "react";
import { useRouter } from "next/router";
import useAxios from "../../../.././hooks/useAxios";
import DOMPurify from "dompurify";
import AirlineInsightPage from "../../../../components/AirlineInsightPage";

export default function AirlineFullPage() {
  const router = useRouter();
  const { domain, slug } = router.query;

  const airlineInfo = useAxios<AirlineInformationType[]>({
    url: `http://localhost:5000/${domain}/insights/${slug}`,
    transform: (data) =>
      data.map((info) => ({
        ...info,
        fleet: DOMPurify.sanitize(info.fleet),
        orders: DOMPurify.sanitize(info.orders),
        assessments: DOMPurify.sanitize(info.assessments),
        benefits: DOMPurify.sanitize(info.benefits),
      })),
  });

  if (domain == null || slug == null || airlineInfo == null)
    return <p>Loading...</p>;

  return (
    <div>
      <AirlineInsightPage
        airlineInfo={airlineInfo[0]}
        domain={domain.toString()}
        slug={slug.toString()}
      />
    </div>
  );
}
