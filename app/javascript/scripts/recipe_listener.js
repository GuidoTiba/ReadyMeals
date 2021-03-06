const init_recipe_listener = () => { 
  const recipes = document.querySelectorAll("#recipe_id");
  if (recipes) {
    recipes.forEach((recipe) => {
      recipe.addEventListener("click", (event) => {
        // console.log(event.target)
        // console.log(event.target.dataset)
        // console.log(event.target.dataset.recipeId)

        // console.log(event.currentTarget)
        // console.log(event.currentTarget.dataset.recipeId)

        const recipe_instructions = document.getElementById(`recipe_instructions_${event.currentTarget.dataset.recipeId}`)
        // console.log(recipe_instructions)

        if (recipe_instructions.classList.contains("d-none")) {

          recipe_instructions.classList.remove("d-none");
          recipe_instructions.classList.add("d-block");
        } else {
          recipe_instructions.classList.remove("d-block");
          recipe_instructions.classList.add("d-none");
        }      
      });
    });
  }
};

export {init_recipe_listener}