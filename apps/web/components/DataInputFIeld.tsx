import * as React from 'react';

interface InputProps {
  htmlFor: string,
  classNameLabel: string,
  labelValue: string;
  name: string,
  id: string,
  classNameInput: string;
  placeholder: string;
}

export default function DataInputField({
  htmlFor,
  classNameLabel,
  labelValue,
  name,
  id,
  classNameInput,
  placeholder
}: InputProps) {
  return (
    <div className={`w-full`}>
      <label htmlFor={htmlFor} className={classNameLabel}>{labelValue}</label>
      <input
        type="text"
        className={classNameInput}
        name={name}
        id={id}
        placeholder={placeholder}
        required 
      />
    </div>
  )
};