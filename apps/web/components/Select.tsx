import * as React from "react";
import { Fragment, useState } from "react";
import { Listbox, Transition } from "@headlessui/react";
import CaretDown from "./CaretDown";
interface SelectProps {
  label: string;
  options: string[];
  onSelect: (selectedOption: string) => void;
  initialSelected?: string;
}

export default function Select({
  label,
  options,
  onSelect,
  initialSelected,
}: SelectProps) {
  const [selected, setSelected] = useState(initialSelected || options[0]);

  const handleChange = (selectedOption: string) => {
    setSelected(selectedOption);
    onSelect(selectedOption);
  };

  return (
    <div className="w-full">
      <Listbox value={selected} onChange={handleChange}>
        <div className="relative mt-1">
          <Listbox.Button className="relative grow w-full h-[4.125rem] cursor-default rounded-full bg-white py-2 pl-3 pr-10 text-left border-solid border border-light-gray focus:outline-none sm:text-sm tablet:h-[3.875rem]">
            <div className="flex flex-col pl-2">
              <span className="nunito text-[#727481] text-xs md:text-sm ">
                {label}
              </span>
              <span className="block truncate text-pink-primary text-base ">
                {selected}
              </span>
            </div>

            <span className="pointer-events-none absolute inset-y-0 right-0 flex items-center pr-4 ">
              <CaretDown />
            </span>
          </Listbox.Button>
          <Transition
            as={Fragment}
            leave="transition ease-in duration-100"
            leaveFrom="opacity-100"
            leaveTo="opacity-0"
          >
            <Listbox.Options className="absolute mt-1 max-h-60 w-full overflow-auto rounded-md z-10 bg-white py-1 text-base shadow-lg focus:outline-none">
              {options.map((option) => (
                <Listbox.Option
                  key={option}
                  className={({ active }) =>
                    `relative cursor-default select-none py-2 pl-10 pr-4 ${
                      active ? "bg-gray-100 text-pink-primary" : "text-gray-900"
                    }`
                  }
                  value={option}
                >
                  {({ selected }) => (
                    <>
                      <span
                        className={`block truncate ${
                          selected ? "font-medium" : "font-normal"
                        }`}
                      >
                        {option}
                      </span>
                    </>
                  )}
                </Listbox.Option>
              ))}
            </Listbox.Options>
          </Transition>
        </div>
      </Listbox>
    </div>
  );
}
