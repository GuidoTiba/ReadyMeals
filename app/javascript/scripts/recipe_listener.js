const init_recipe_listener = () => { 
  const recipes = document.querySelectorAll("#recipe_id");
  if (recipes) {
    recipes.forEach((recipe) => {
      recipe.addEventListener("click", (event) => {
        recipe.style.display = "";
        console.log(event);
      });
    });
  }
};

export {init_recipe_listener}