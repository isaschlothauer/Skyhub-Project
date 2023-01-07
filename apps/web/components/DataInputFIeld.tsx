import * as React from 'react';

interface InputProps {
  label: string;
  input: string;
}

// let fields: InputProps[];

// console.log(fields);

export default function DataInputField({
  label,
  input,
}: InputProps) {
  const { value } = label;
  const { placeholder, id, className } = input; 
  console.log(typeof fields)

  return (
    <div className={`w-full`}>
      <label htmlFor="username" className={"block text-pink-primary"}>{value}</label>
      <input
        type="text"
        className={className}
        name="username"
        id="username"
        placeholder={placeholder}
        required
      />
    </div>
  )
};