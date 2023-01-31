import { useRouter } from "next/router";
import React from "react";

import JobOffersPage from "../../../../components/Offers_JobOffersPage";
import Loader from "../../../../components/Loader";

export default function StaticPage() {
  const router = useRouter();
  const { domain } = router.query;
  if (domain == null) return <Loader />;

  return (
    <>
      <JobOffersPage domain={domain.toString()} />
    </>
  );
}
