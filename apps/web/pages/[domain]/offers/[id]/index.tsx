import { useRouter } from "next/router";
import React from "react";

import JobOffersPage from "../../../../components/JobOffersPage";

export default function StaticPage() {
  const router = useRouter();
  const { domain } = router.query;
  if (domain == null) return <p>Loading...</p>;

  return (
    <>
      <JobOffersPage domain={domain.toString()} />
    </>
  );
}
