import "index.css";
import "syntax-highlighting.css";
import "animate.css";

// Import all JavaScript & CSS files from src/_components
import components from "bridgetownComponents/**/*.{js,jsx,js.rb,css}";

import WOW from "wowjs";

window.wow = new WOW.WOW({
  live: false,
});

import "./main";
import "./scroll";
