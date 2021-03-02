const init_hearts = () => {
  const listado = document.querySelectorAll(".heart");
  if (listado) {
    listado.forEach((restriction) => {
      restriction.addEventListener("click", (event) => {
        event.currentTarget.classList.toggle("active");
      });
    });
  }
};

export {init_hearts}
