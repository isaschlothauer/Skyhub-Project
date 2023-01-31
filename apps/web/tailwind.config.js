/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx}",
    "./components/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    fontFamily: {
      nunito: ["Nunito", "sans-serif"],
    },
    borderWidth: {
      DEFAULT: "1px",
      0: "0",
      2: "2px",
      3: "3px",
      4: "4px",
      6: "6px",
    },
    extend: {
      colors: {
        "pink-primary": "#ec008c",
        "blue-primary": "#000e94",
        "light-gray": "#eaeaea",
        "dark-gray": "#727481",
      },
      boxShadow: {
        main: "0 0 30px rgb(0 0 0 / 10%)",
      },
      screens: {
        test: { raw: "(max-width: 268px)" },
        mobile: { max: "426px" },
        tablet: { min: "427px", max: "769px" },
        pc: { min: "770px" },
        fix1: { min: "1025px" },
      },
    },
  },
  plugins: [],
};
