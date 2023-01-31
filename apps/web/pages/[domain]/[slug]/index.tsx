import { useRouter } from "next/router";
import React from "react";
import StaticPageComponent from "../../../components/Staticpage";
import Loader from "../../../components/Loader";

export default function StaticPage() {
  const router = useRouter();
  const { domain, slug } = router.query;

  if (domain == null || slug == null) return <Loader />;

  return (
    <StaticPageComponent domain={domain.toString()} slug={slug.toString()} />
  );
}
