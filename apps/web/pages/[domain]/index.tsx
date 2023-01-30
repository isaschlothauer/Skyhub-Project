import React from "react";
import { useRouter } from "next/router";
import DomainMainStaticCMP from "../../components/DomainMainStaticCMP";
import Loader from "../../components/Loader";


export default function MainStaticDomain() {
  const router = useRouter();
  const { domain } = router.query;

  if (domain == null) return <Loader />;

  return (
    <DomainMainStaticCMP
      domain={domain.toString()}
    />
  );
}
