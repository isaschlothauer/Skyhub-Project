import axios from "axios";
import React, { SyntheticEvent, useRef } from "react";
import { useState } from "react";
import { Button } from "./Button";

export type GeneralAirlineProps = {
  airlineInfo: AirlineInformationType;
  domain: string | string[];
  slug: string | string[];
};

export default function EditInsights({
  airlineInfo,
  domain,
  slug,
}: GeneralAirlineProps) {
  const [inputFields, setInputFields] = useState(airlineInfo);
  const [isSubmitted, setIsSubmitted] = useState(false);
  const [errors, setErrors] = useState<string[]>([]);

  function handleInputChange(
    event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) {
    const { name, value, type } = event.target;
    setInputFields((prevInputFields) => {
      return {
        ...prevInputFields,
        [name]: type === "number" ? parseInt(value) : value,
      };
    });
    setErrors((prevErrors) =>
      prevErrors.filter((fieldname) => fieldname !== name)
    );
  }

  const handleSubmit = (event: React.MouseEvent<HTMLButtonElement>): void => {
    event.preventDefault();
    const {
      has_draft,
      created_at,
      updated_at,
      height,
      width,
      src,
      image_id,
      ...inputTobeSubmitted
    } = inputFields;

    axios
      .post(
        `http://localhost:5000/${domain}/insights/${slug}/edit`,
        inputTobeSubmitted,
        {
          headers: {
            Accept: "application/json, text/plain, */*",
            "Content-Type": "application/json",
          },
        }
      )
      .then((result) => {
        if (result.status === 201) {
          setErrors([]);
          setIsSubmitted(true);
        }
      })
      .catch((err) => {
        const errorItems = err.response.data.validationErrors.map(
          (errorItem: any) => errorItem.param
        );
        document.getElementsByName(errorItems[0])[0].focus();
        setErrors(errorItems);
      });
  };

  const formData = [
    {
      header: "Airline Informations",
      inputs: [
        {
          name: "founding",
          label: "Founded",
          type: "number",
        },
        {
          name: "headquarter",
          label: "Headquarter",
          type: "text",
        },
        {
          name: "employees",
          label: "Employees",
          type: "text",
        },
        {
          name: "profits",
          label: "Revenue",
          type: "text",
        },
        {
          name: "destinations",
          label: "Destinations",
          type: "text",
        },
        {
          name: "callsign",
          label: "Callsign",
          type: "text",
        },
        {
          name: "assessments_link",
          label: "Assessments link",
          type: "text",
        },
        {
          name: "assessments",
          label: `${airlineInfo.name} assesment consists of`,
          type: "text",
        },
      ],
    },
    {
      header: "Aircraft Fleet",
      inputs: [
        {
          name: "fleet",
          label: "Aircraft Fleet",
          type: "text",
        },
      ],
    },
    {
      header: "Aircraft Benefits",
      inputs: [
        {
          name: "benefits",
          label: "Aircraft Benefits",
          type: "text",
        },
      ],
    },
    {
      header: "Captain Salary",
      inputs: [
        {
          name: "salary_captain_max",
          label: "Maximum Captain Salary (€)",
          type: "number",
        },
        {
          name: "salary_captain_avg",
          label: "Average Captain Salary (€)",
          type: "number",
        },
        {
          name: "salary_captain_min",
          label: "Minimum Captain Salary (€)",
          type: "number",
        },
      ],
    },
    {
      header: "Senior First Officer Salary (€)",
      inputs: [
        {
          name: "salary_sfo_max",
          label: "Maximum Senior First Offier Salary (€)",
          type: "number",
        },
        {
          name: "salary_sfo_avg",
          label: "Average Senior First Officer Salary (€)",
          type: "number",
        },
        {
          name: "salary_sfo_min",
          label: "Minimum Senior First Officer Salary (€)",
          type: "number",
        },
      ],
    },
    {
      header: "First Officer Salary(€)",
      inputs: [
        {
          name: "salary_fo_max",
          label: "Maximum First Officer Salary (€)",
          type: "number",
        },
        {
          name: "salary_fo_avg",
          label: "Average First Officer Salary (€)",
          type: "number",
        },
        {
          name: "salary_fo_min",
          label: "Minimum First Officer (€)",
          type: "number",
        },
      ],
    },
    {
      header: "Second Officer Salary (€)",
      inputs: [
        {
          name: "salary_so_max",
          label: "Maximum Second Officer Salary (€)",
          type: "number",
        },
        {
          name: "salary_so_avg",
          label: "Average Second Officer Salary (€)",
          type: "number",
        },
        {
          name: "salary_so_min",
          label: "Minimum Second Officer Salary (€)",
          type: "number",
        },
      ],
    },
  ];

  return (
    <div className="container mx-auto shadow-main bg-white rounded-[15px] px-8 py-10 mb-12 tablet:px-16 tablet:py-12 pc:px-24 pc:py-16 ">
      {!isSubmitted && (
        <form>
          {formData.map(({ header, inputs }) => {
            return (
              <div key={header}>
                <h2 className="text-blue-primary font-extrabold text-base text-center mb-5">
                  {header}
                </h2>
                {inputs.map((input) =>
                  ["assessments", "fleet", "orders", "benefits"].includes(
                    input.name
                  ) ? (
                    <div key={input.label} className="flex flex-col gap-4 ">
                      <label
                        htmlFor={input.label}
                        className="text-pink-primary"
                      >
                        {input.label}
                      </label>
                      <textarea
                        onChange={handleInputChange}
                        className={`border border-dark-gray py-4 p-8 ${
                          !errors.includes(input.name)
                            ? "mb-10"
                            : "border-red-500"
                        } rounded-[3.125rem] focus:outline-none focus:border-2 `}
                        id={input.label}
                        name={input.name}
                        rows={6}
                        cols={50}
                        value={
                          inputFields[
                            input.name as keyof AirlineInformationType
                          ] || ""
                        }
                      >
                        Test
                      </textarea>
                      {errors.includes(input.name) && (
                        <p className=" text-left text-red-500 font-semibold text-base pb-8 ">
                          {input.label} is not valid. please provide a valid
                          value.
                        </p>
                      )}
                    </div>
                  ) : (
                    <div key={input.label} className="flex flex-col gap-4 ">
                      <label
                        htmlFor={input.label}
                        className="text-pink-primary"
                      >
                        {input.label}
                      </label>
                      <input
                        onChange={handleInputChange}
                        onWheel={(event) => {
                          event?.currentTarget.blur();
                        }}
                        className={`border border-dark-gray py-4 p-8 ${
                          !errors.includes(input.name)
                            ? "mb-10"
                            : "border-red-500"
                        } rounded-[3.125rem] focus:outline-none focus:border-2 `}
                        id={input.label}
                        name={input.name}
                        type={input.type}
                        value={
                          inputFields[
                            input.name as keyof AirlineInformationType
                          ] || ""
                        }
                      />
                      {errors.includes(input.name) && (
                        <p className=" text-left  text-red-500 font-semibold text-base pb-8 ">
                          The value you entered for {input.label} is not valid.
                          Please enter a valid value.
                        </p>
                      )}
                    </div>
                  )
                )}
              </div>
            );
          })}
        </form>
      )}
      {isSubmitted && (
        <p className=" text-center mx-auto text-pink-primary font-bold text-lg pb-12 pt-8 ">
          Congratulations! Your submission was successfull! Our team will review
          it soon and update accordingly. Thank you for your contribution.
        </p>
      )}
      {!isSubmitted && (
        <div className="flex flex-row justify-center">
          <Button variant="primary" onClick={handleSubmit}>
            Submit new info
          </Button>
        </div>
      )}
      {errors.length > 0 && (
        <p className=" text-center mx-auto text-pink-primary font-bold text-lg pb-12 pt-8 ">
          Oops, it looks like you entered invalid values. Please check your
          input. Thanks!
        </p>
      )}
    </div>
  );
}
