import "$styles/index.css";
import "$styles/syntax-highlighting.css";
import "$styles/animate.css";

// Import all JavaScript & CSS files from src/_components
import components from "bridgetownComponents/**/*.{js,jsx,js.rb,css}";

import WOW from "wowjs";

window.wow = new WOW.WOW({
  live: false,
});

import "./main";
import "./scroll";
