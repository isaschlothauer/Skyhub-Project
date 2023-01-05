import { useRouter } from 'next/router'
import React from 'react'
import StaticPageComponent from "../../../components/Staticpage";

export default function StaticPage() {
  const router = useRouter();
  const { domain, slug } = router.query;
  if(domain == null || slug == null) return <p>Loading...</p>;

  return (
    <StaticPageComponent domain={domain.toString()} slug={slug.toString()} />
  )
}
