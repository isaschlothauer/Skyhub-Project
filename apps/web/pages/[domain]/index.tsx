import React from "react";
import { useRouter } from "next/router";
import DomainMainStaticCMP from "../../components/DomainMainStaticCMP";


export default function MainStaticDomain() {
  const router = useRouter();
  const { domain } = router.query;

  if (domain == null) return <p>Loading...</p>;

  return (
    <DomainMainStaticCMP
      domain={domain.toString()}
    />
  );
}
