import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Welcome !", "Let's tinker together"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
