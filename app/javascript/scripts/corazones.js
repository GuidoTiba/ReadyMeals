
const init_corazones = () => { 
  const listado = document.querySelectorAll(".corazon");
  if (listado) {
    listado.forEach((restriction) => {
      restriction.addEventListener("click", (event) => {
        event.currentTarget.classList.toggle("active");
      });
    });
  }
};

export {init_corazones}