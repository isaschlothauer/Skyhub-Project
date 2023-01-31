import React from "react";
import { useState } from "react";

export type GeneralAirlineProps = {
  airlineInfo: AirlineInformationType;
};

export default function EditInsights({ airlineInfo }: GeneralAirlineProps) {
  const [inputFields, setInputFields] = useState({
    founded: airlineInfo.founding,
    headquarter: airlineInfo.headquarter,
    employees: airlineInfo.employees,
    revenue: airlineInfo.profits,
    destinations: airlineInfo.destinations,
    callsign: airlineInfo.callsign,
    assessment_link: airlineInfo.assessments_link,
    captain_max_salary: airlineInfo.salary_captain_max,
    captain_avg_salary: airlineInfo.salary_captain_avg,
    captain_min_salary: airlineInfo.salary_captain_min,
    sfo_max_salary: airlineInfo.salary_sfo_max,
    sfo_avg_salary: airlineInfo.salary_sfo_avg,
    sfo_min_salary: airlineInfo.salary_sfo_min,
    fo_max_salary: airlineInfo.salary_fo_max,
    fo_avg_salary: airlineInfo.salary_fo_avg,
    fo_min_salary: airlineInfo.salary_fo_min,
    so_max_salary: airlineInfo.salary_so_max,
    so_avg_salary: airlineInfo.salary_so_avg,
    so_min_salary: airlineInfo.salary_so_min,
  });

  function handleInputChange(
    event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) {
    setInputFields((prevInputFields) => {
      const { name, value } = event.target;
      return {
        ...prevInputFields,
        [name]: value,
      };
    });
  }

  const formData = [
    {
      header: "Airline Informations",
      inputs: [
        {
          name: "founded",
          label: "Founded",
          type: "text",
          value: inputFields.founded,
        },
        {
          name: "headquarter",
          label: "Headquarter",
          type: "text",
          value: inputFields.headquarter,
        },
        {
          name: "employees",
          label: "Employees",
          type: "text",
          value: inputFields.employees,
        },
        {
          name: "revenue",
          label: "Revenue",
          type: "text",
          value: inputFields.revenue,
        },
        {
          name: "destinations",
          label: "Destinations",
          type: "text",
          value: inputFields.destinations,
        },
        {
          name: "callsign",
          label: "Callsign",
          type: "text",
          value: inputFields.callsign,
        },
        {
          name: "assessment_link",
          label: "Assessments link",
          type: "text",
          value: inputFields.assessment_link,
        },
      ],
    },
    {
      header: "Captain Salary",
      inputs: [
        {
          name: "captain_max_salary",
          label: "Maximum Captain Salary",
          type: "text",
          value: inputFields.captain_max_salary,
        },
        {
          name: "captain_avg_salary",
          label: "Average Captain Salary",
          type: "text",
          value: inputFields.captain_avg_salary,
        },
        {
          name: "captain_min_salary",
          label: "Minimum Captain Salary",
          type: "text",
          value: inputFields.captain_min_salary,
        },
      ],
    },
    {
      header: "Senior First Officer Salary",
      inputs: [
        {
          name: "sfo_max_salary",
          label: "Maximum Senior First Offier Salary",
          type: "text",
          value: inputFields.sfo_max_salary,
        },
        {
          name: "sfo_avg_salary",
          label: "Average Senior First Officer Salary",
          type: "text",
          value: inputFields.sfo_avg_salary,
        },
        {
          name: "sfo_min_salary",
          label: "Minimum Senior First Officer Salary",
          type: "text",
          value: inputFields.sfo_min_salary,
        },
      ],
    },
    {
      header: "First Officer Salary",
      inputs: [
        {
          name: "fo_max_salary",
          label: "Maximum First Officer Salary",
          type: "text",
          value: inputFields.fo_max_salary,
        },
        {
          name: "fo_avg_salary",
          label: "Average First Officer Salary",
          type: "text",
          value: inputFields.fo_avg_salary,
        },
        {
          name: "fo_min_salary",
          label: "Minimum First Officer Salary",
          type: "text",
          value: inputFields.fo_min_salary,
        },
      ],
    },
    {
      header: "Second Officer Salary",
      inputs: [
        {
          name: "so_max_salary",
          label: "Maximum Second Officer Salary",
          type: "text",
          value: inputFields.so_max_salary,
        },
        {
          name: "so_avg_salary",
          label: "Average Second Officer Salary",
          type: "text",
          value: inputFields.so_avg_salary,
        },
        {
          name: "so_min_salary",
          label: "Minimum Second Officer Salary",
          type: "text",
          value: inputFields.so_min_salary,
        },
      ],
    },
  ];

  return (
    <div className="container mx-auto shadow-main bg-white rounded-[15px] px-8 py-10 tablet:px-16 tablet:py-12 pc:px-24 pc:py-16 ">
      <form>
        {formData.map(({ header, inputs }) => {
          return (
            <div key={header}>
              <h2 className="text-blue-primary font-extrabold text-base text-center mb-5">
                {header}
              </h2>
              {inputs.map((input) => (
                <div key={input.label} className="flex flex-col gap-4 ">
                  <label htmlFor={input.label} className="text-pink-primary">
                    {input.label}
                  </label>
                  <input
                    onChange={handleInputChange}
                    className=" border border-dark-gray py-4 p-8 mb-8 rounded-[3.125rem] focus:outline-none focus:border-2  focus:border-orange-400  "
                    id={input.label}
                    name={input.name}
                    type={input.type}
                    value={input.value || ""}
                  />
                </div>
              ))}
            </div>
          );
        })}
      </form>
    </div>
  );
}
