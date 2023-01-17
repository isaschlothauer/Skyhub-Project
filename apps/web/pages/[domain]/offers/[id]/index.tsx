import { useRouter } from "next/router";
import React from "react";

import JobOffersPage from "../../../../components/JobOffersPage";
import { JobOffer } from "../../../../components/DomainMainStaticCMP";
import useAxios from "../../../../hooks/useAxios";

export default function StaticPage() {
  const router = useRouter();
  const { domain, id } = router.query;

  const jobs = useAxios<JobOffer[]>({
    url: `http://localhost:5000/jobs/offers?domain=${domain}&${id}`,
    initialValue: [],
  });

  if (id == null || domain == null) return <p>Loading...</p>;

  return (
    <>
      {jobs.map((job) => (
        <JobOffersPage
          company={job.company}
          title={job.title}
          job_type={job.jog_type}
          base={job.base}
          status={job.status}
          content={job.content}
          rating={job.rating}
          position={job.position}
          aircraft_type={job.aircraft_type}
          min_hours={job.min_hours}
          certificates={job.certificates}
          roster={job.roster}
          insurance={job.insurance}
          salary={job.salary}
          benefits={job.benefits}
          apply_type={job.apply_type}
          apply_link={job.apply_link}
          apply_phone={job.apply_phone}
        />
      ))}
    </>
  );
}
