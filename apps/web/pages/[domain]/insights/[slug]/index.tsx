import { useRouter } from "next/router";
import React from "react";
import AirlineInsightPage from "../../../../components/AirlineInsightPage";

export default function AirlineFullPage() {
  const router = useRouter();
  const { domain, slug } = router.query;
  if (domain == null || slug == null) return <p>Loading...</p>;

  return (
    <div>
      <AirlineInsightPage domain={domain.toString()} slug={slug.toString()} />
    </div>
  );
}
