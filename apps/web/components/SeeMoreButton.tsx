import React from "react";
import { useRouter } from "next/router";

function SeeMoreButton() {
  const router = useRouter();
  return (
    <button type="button" onClick={() => router.push("/")}>
      SEE MORE OFFERS
    </button>
  );
}

export default SeeMoreButton;
