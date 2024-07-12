/*!
 * Start Bootstrap - Shop Homepage v5.0.6 (https://startbootstrap.com/template/shop-homepage)
 * Copyright 2013-2023 Start Bootstrap
 * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-shop-homepage/blob/master/LICENSE)
 */
// This file is intentionally blank
// Use this file to add JavaScript to your project

document.querySelector("body").innerHTML += `
<style>
  /* POPUP */
  .popup-container {
    position: fixed;
    top: 0%;
    left: 0%;
    width: 100vw;
    height: 100vh;
    backdrop-filter: blur(10px);
    /* Standard syntax */
    -webkit-backdrop-filter: blur(10px);
    /* Safari 9+ and iOS 9+ */
    visibility: hidden;
    opacity: 0;
    transition: visibility 0s linear 0.3s, opacity 0.3s ease-in-out;
    z-index: 99999999999999;
  }

  .popup-container:target {
    visibility: visible;
    opacity: 1;
    transition: visibility 0s linear 0s, opacity 0.3s ease-in-out;
  }
</style>
`;
