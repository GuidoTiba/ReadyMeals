const init_sidebar_loco = () => { 
  const sidebar = document.querySelector(".sidebar-loco");
  const sidebar_toggle_button = document.querySelector("#sidebar-toggle-button");
  if (sidebar) {
    sidebar_toggle_button.addEventListener("click", (event) => {
      sidebar.classList.toggle("d-none");
    });
  }
};

export {init_sidebar_loco}
