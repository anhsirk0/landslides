import { themes } from "./src/shared/Theme.res.mjs";
import daisyui from "daisyui";

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.res.mjs"],
  theme: {
    extend: {
      screens: {
        xs: "480px",
        sm: "640px",
        md: "768px",
        lg: "1024px",
        xl: "1300px",
        xxl: "1536px",
      },
      backgroundImage: {
        netflix: "url('/src/assets/netflix-bg.jpg')",
      },
      keyframes: {
        grow: {
          "0%": { transform: "scale(0)" },
          "100%": { transform: "scale(1)" },
        },
        appear: {
          "0%": { opacity: "0" },
          "30%": { opacity: "0" },
          "100%": { opacity: "1" },
        },
      },
      animation: {
        grow: "grow 300ms ease-in-out",
        appear: "appear 300ms ease-in-out",
      },
      fontFamily: {
        sans: ["Manrope", "Open Sans"],
        body: ["Manrope"],
        display: ["Manrope"],
      },
    },
  },
  plugins: [daisyui],
  daisyui: { themes, darkTheme: "forest" },
};
