const restrictions = document.querySelectorAll(".clickable");
if (restrictions) {
  restrictions.forEach((restriction) => {
   restriction.addEventListener("click", (event) => {
     event.currentTarget.classList.toggle("active");
   });
  });
}
