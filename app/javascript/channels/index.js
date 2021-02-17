// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

 const restrictions = document.querySelectorAll(".clickable");

 restrictions.forEach((restriction) => {
   restriction.addEventListener("click", (event) => {
     event.currentTarget.classList.toggle("active");
     console.log(event);
  });
 });
