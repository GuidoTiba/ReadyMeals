puts "Deleting all"
RecipeOption.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Option.destroy_all


puts "Creating recipes"
@barbeque = Recipe.create(name: "Barbeque", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
@gnocchi = Recipe.create(name: "Gnocchi", instructions: "Add sauce to the gnocchi", details: "So good")
@pizza = Recipe.create(name: "Pizza", instructions: "Put pizza in the oven", details: "Put the sauce, the mozzarela and tada")
@caesar_salad = Recipe.create(name: "Caesar salad", instructions: "Mix greens with chicken and add caesar dressing", details: "The dressing is the key")
@sushi = Recipe.create(name: "Sushi", instructions: "Buy the sushi", details: "Don't forget the soy sauce")
@ravioli = Recipe.create(name: "Ravioli", instructions: "Boil water and add the ravioli", details: "Choose savour carefully")
@empanadas = Recipe.create(name: "Asado", instructions: "Put empanadas in the oven", details: "An argentine classic")


puts "Creating ingredients"
@meat = Ingredient.create(name: "Meat")
@barbequesauce = Ingredient.create(name: "Barbeque Sauce")

@potato = Ingredient.create(name: "Potatoes")
@flour = Ingredient.create(name: "Flour")
@tomato_sauce = Ingredient.create(name: "Tomato Sauce")

@mozzarela = Ingredient.create(name: "Mozzarela")
@tomato = Ingredient.create(name: "Tomato")
@oregano = Ingredient.create(name: "Oregano")

@chicken = Ingredient.create(name: "Chicken")
@caesar_dressing = Ingredient.create(name: "Caesar Dressing")
@greens = Ingredient.create(name: "Greens")
@cheese = Ingredient.create(name: "Cheese")

@salmon = Ingredient.create(name: "Salmon")
@tuna = Ingredient.create(name: "Tuna")
@rice = Ingredient.create(name: "Rice")
@algae = Ingredient.create(name: "Algae")
@soy_sauce = Ingredient.create(name: "Soy sauce")

puts "Creating options of dietary restrictions"
@vegetarian = Option.create(name: "Vegetarian")
@vegan = Option.create(name: "Vegan")
@pescetarian = Option.create(name: "Pescetarian")
@celiac = Option.create(name: "Celiac")
@dairy_intolerant = Option.create(name: "Dairy Intolerant")

puts "Joining recipe with its ingredients"
@barbeque_meat = RecipeIngredient.create(recipe_id: @barbeque.id, ingredient_id: @meat.id, ammount: 500, unit: "grams")
@barbeque_sauce = RecipeIngredient.create(recipe_id: @barbeque.id, ingredient_id: @barbequesauce.id, ammount: 20, unit: "grams")

@gnocchi_potato = RecipeIngredient.create(recipe_id: @gnocchi.id, ingredient_id: @gnocchi.id, ammount: 500, unit: "grams")
@gnocchi_flour = RecipeIngredient.create(recipe_id: @gnocchi.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@gnocchi_tomato_sauce = RecipeIngredient.create(recipe_id: @gnocchi.id, ingredient_id: @tomato_sauce.id, ammount: 500, unit: "grams")

@pizza_tomato_sauce = RecipeIngredient.create(recipe_id: @pizza.id, ingredient_id: @tomato_sauce.id, ammount: 500, unit: "grams")
@pizza_tomato = RecipeIngredient.create(recipe_id: @pizza.id, ingredient_id: @tomato.id, ammount: 500, unit: "grams")
@pizza_mozzarela = RecipeIngredient.create(recipe_id: @pizza.id, ingredient_id: @mozzarela.id, ammount: 500, unit: "grams")
@pizza_oregano = RecipeIngredient.create(recipe_id: @pizza.id, ingredient_id: @oregano.id, ammount: 500, unit: "grams")

@caesar_salad_chicken = RecipeIngredient.create(recipe_id: @caesar_salad.id, ingredient_id: @chicken.id, ammount: 500, unit: "grams")
@caesar_salad_ceasar_dressing = RecipeIngredient.create(recipe_id: @caesar_salad.id, ingredient_id: @caesar_dressing.id, ammount: 500, unit: "grams")
@caesar_salad_cheese = RecipeIngredient.create(recipe_id: @caesar_salad.id, ingredient_id: @cheese.id, ammount: 500, unit: "grams")
@caesar_salad_greens = RecipeIngredient.create(recipe_id: @caesar_salad.id, ingredient_id: @greens.id, ammount: 500, unit: "grams")

@sushi_salmon = RecipeIngredient.create(recipe_id: @sushi.id, ingredient_id: @salmon.id, ammount: 500, unit: "grams")
@sushi_tuna = RecipeIngredient.create(recipe_id: @sushi.id, ingredient_id: @tuna.id, ammount: 500, unit: "grams")
@sushi_rice = RecipeIngredient.create(recipe_id: @sushi.id, ingredient_id: @rice.id, ammount: 500, unit: "grams")
@sushi_algae = RecipeIngredient.create(recipe_id: @sushi.id, ingredient_id: @algae.id, ammount: 500, unit: "grams")
@sushi_soy_sauce  = RecipeIngredient.create(recipe_id: @sushi.id, ingredient_id: @soy_sauce.id, ammount: 500, unit: "grams")


puts "joining recipe with its dietary restriction"
@barbeque_celiac = RecipeOption.create(option_id: @celiac.id, recipe_id: @barbeque.id)
@barbeque_dairy_intolerant = RecipeOption.create(option_id: @dairy_intolerant.id, recipe_id: @barbeque.id)

@gnocchi_vegetarian = RecipeOption.create(option_id: @vegetarian.id, recipe_id: @gnocchi.id)
@gnocchi_vegan = RecipeOption.create(option_id: @vegan.id, recipe_id: @gnocchi.id)
@gnocchi_pescetarian = RecipeOption.create(option_id: @pescetarian.id, recipe_id: @gnocchi.id)

@pizza_vegetarian = RecipeOption.create(option_id: @vegetarian.id, recipe_id: @pizza.id)
@pizza_vegan = RecipeOption.create(option_id: @vegan.id, recipe_id: @pizza.id)
@pizza_pescetarian = RecipeOption.create(option_id: @pescetarian.id, recipe_id: @pizza.id)

@caesar_salad_pescetarian = RecipeOption.create(option_id: @pescetarian.id, recipe_id: @caesar_salad.id)
@caesar_salad_celiac = RecipeOption.create(option_id: @celiac.id, recipe_id: @caesar_salad.id)

@sushi_celiac = RecipeOption.create(option_id: @celiac.id, recipe_id: @sushi.id)
@sushi_dairy_intolerant = RecipeOption.create(option_id: @dairy_intolerant.id, recipe_id: @sushi.id)





# puts "Creating events"
# @mdq = Event.create(title: "Trip to Mar del Plata", number_of_members: 8, user_id: 1)
# @cordoba = Event.create(title: "Trip to Cordoba", number_of_members: 3, user_id: 1)
# @hawaii = Event.create(title: "Trip to Hawaii", number_of_members: 4, user_id: 1)
# @bali = Event.create(title: "Trip to Bali", number_of_members: 6, user_id: 1)
# @paris = Event.create(title: "Trip to Paris", number_of_members: 5, user_id: 1)
# @london = Event.create(title: "Trip to London", number_of_members: 10, user_id: 1)

# puts "Creating event options of dietary restrictions"
# @mdq_vegetarian = EventOption.create(option_id: @vegetarian.id, event_id: @mdq.id)

