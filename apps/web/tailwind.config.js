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
    fontSize: {
      xl: "1.125rem",
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
        "light-gray": "#eaeaea",
      },
      boxShadow: {
        main: "0 0 30px rgb(0 0 0 / 10%)",
      },
    },
  },
  plugins: [],
};
