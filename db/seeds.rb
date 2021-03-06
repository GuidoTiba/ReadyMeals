require "open-uri"

puts "Deleting all"
Meal.destroy_all
RecipeOption.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
EventOption.destroy_all
Option.destroy_all


puts "Creating recipes"

@barbeque = Recipe.create(name: "Barbeque", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
@gnocchi = Recipe.create(name: "Gnocchi", instructions: "Add sauce to the gnocchi", details: "So good")
@pizza = Recipe.create(name: "Pizza", instructions: "Put pizza in the oven", details: "Put the sauce, the mozzarela and tada")
@caesar_salad = Recipe.create(name: "Caesar salad", instructions: "Mix greens with chicken and add caesar dressing", details: "The dressing is the key")
@sushi = Recipe.create(name: "Sushi", instructions: "Buy the sushi", details: "Don't forget the soy sauce")
@ravioli = Recipe.create(name: "Ravioli", instructions: "Boil water and add the ravioli", details: "Choose savour carefully")
@empanadas = Recipe.create(name: "Empanadas", instructions: "Put empanadas in the oven", details: "An argentine classic")
@chocolate_cake = Recipe.create(name: "Chocolate cake", instructions: "Mix chocolate and eggs", details: "Everybody likes chocolate cake")
@brownies = Recipe.create(name: "Brownies", instructions: "Mix batter with chocolate", details: "You can even make them magical")
@lemon_squares = Recipe.create(name: "Lemon squares", instructions: "Place the dough in the bottom and the lemon liquid on the top", details: "For those who don't prefer chocolate")
@mousse = Recipe.create(name: "Mousse", instructions: "You can make it of any flavour, in this case, we are making it a white chocolate special", details: "Mousse, what else shall I say?")
@chocotorta = Recipe.create(name: "Chocotorta", instructions: "Dip the cookies in milk, do a layer and then add the dulce de leche mix", details: "An argentine classic")

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

@dough = Ingredient.create(name: "Dough")
@filling = Ingredient.create(name: "Filling")

@empanada_top = Ingredient.create(name: "Empanada top")

@chocolate = Ingredient.create(name: "Chocolate")
@white_chocolate = Ingredient.create(name: "White Chocolate")
@butter = Ingredient.create(name: "Butter")
@sugar = Ingredient.create(name: "Sugar")
@peanuts = Ingredient.create(name: "Peanuts")
@chocolinas = Ingredient.create(name: "Chocolinas")
@milk = Ingredient.create(name: "Milk")
@lemons = Ingredient.create(name: "Lemons")
@eggs = Ingredient.create(name: "Eggs")
@dulce_de_leche = Ingredient.create(name: "Dulce de Leche")
@cream = Ingredient.create(name: "Cream")
@casancrem = Ingredient.create(name: "Casancrem")

puts "Creating options of dietary restrictions"

@vegetarian = Option.create(name: "Vegetarian")
@vegan = Option.create(name: "Vegan")
@pescetarian = Option.create(name: "Pescetarian")
@celiac = Option.create(name: "Celiac")
@dairy_intolerant = Option.create(name: "Dairy Intolerant")
@kosher = Option.create(name: "Kosher")
@halal = Option.create(name: "Halal")
@peanut_allergy = Option.create(name: "Peanut allergy")
@shellfish_allergy = Option.create(name: "Shellfish allergy")
@diabetic = Option.create(name: "Diabetic")
@paleo = Option.create(name: "Paleo")
@sugar_free = Option.create(name: "Sugar Free")


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

@ravioli_dough = RecipeIngredient.create(recipe_id: @ravioli.id, ingredient_id: @dough.id, ammount: 500, unit: "grams")
@ravioli_filling = RecipeIngredient.create(recipe_id: @ravioli.id, ingredient_id: @filling.id, ammount: 500, unit: "grams")

@empanadas_empanada_top = RecipeIngredient.create(recipe_id: @empanadas.id, ingredient_id: @empanada_top.id, ammount: 500, unit: "grams")
@empanadas_filling = RecipeIngredient.create(recipe_id: @empanadas.id, ingredient_id: @filling.id, ammount: 500, unit: "grams")

@chocolate_cake_chocolate = RecipeIngredient.create(recipe_id: @chocolate_cake.id, ingredient_id: @chocolate.id, ammount: 500, unit: "grams")
@chocolate_cake_sugar = RecipeIngredient.create(recipe_id: @chocolate_cake.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@chocolate_cake_flour = RecipeIngredient.create(recipe_id: @chocolate_cake.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@chocolate_cake_eggs = RecipeIngredient.create(recipe_id: @chocolate_cake.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@chocolate_cake_butter = RecipeIngredient.create(recipe_id: @chocolate_cake.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")

@brownies_chocolate = RecipeIngredient.create(recipe_id: @brownies.id, ingredient_id: @chocolate.id, ammount: 500, unit: "grams")
@brownies_flour = RecipeIngredient.create(recipe_id: @brownies.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@brownies_sugar = RecipeIngredient.create(recipe_id: @brownies.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@brownies_butter = RecipeIngredient.create(recipe_id: @brownies.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@brownies_eggs = RecipeIngredient.create(recipe_id: @brownies.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@brownies_peanuts = RecipeIngredient.create(recipe_id: @brownies.id, ingredient_id: @peanuts.id, ammount: 500, unit: "grams")

@lemon_squares_butter = RecipeIngredient.create(recipe_id: @lemon_squares.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@lemon_squares_lemons = RecipeIngredient.create(recipe_id: @lemon_squares.id, ingredient_id: @lemons.id, ammount: 500, unit: "grams")
@lemon_squares_sugar = RecipeIngredient.create(recipe_id: @lemon_squares.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@lemon_squares_flour = RecipeIngredient.create(recipe_id: @lemon_squares.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@lemon_squares_eggs = RecipeIngredient.create(recipe_id: @lemon_squares.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")


@mousse_flour = RecipeIngredient.create(recipe_id: @mousse.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@mousse_white_chocolate = RecipeIngredient.create(recipe_id: @mousse.id, ingredient_id: @white_chocolate.id, ammount: 500, unit: "grams")
@mousse_butter = RecipeIngredient.create(recipe_id: @mousse.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@mousse_eggs = RecipeIngredient.create(recipe_id: @mousse.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@mousse_sugar = RecipeIngredient.create(recipe_id: @mousse.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@mousse_chocolate = RecipeIngredient.create(recipe_id: @mousse.id, ingredient_id: @chocolate.id, ammount: 500, unit: "grams")


@chocotorta_chocolinas = RecipeIngredient.create(recipe_id: @chocotorta.id, ingredient_id: @chocolinas.id, ammount: 500, unit: "grams")
@chocotorta_dulce_de_leche = RecipeIngredient.create(recipe_id: @chocotorta.id, ingredient_id: @dulce_de_leche.id, ammount: 500, unit: "grams")
@chocotorta_casancrem = RecipeIngredient.create(recipe_id: @chocotorta.id, ingredient_id: @casancrem.id, ammount: 500, unit: "grams")
@chocotorta_milk = RecipeIngredient.create(recipe_id: @chocotorta.id, ingredient_id: @milk.id, ammount: 500, unit: "grams")

# @replace_replace = RecipeIngredient.create(recipe_id: @replace.id, ingredient_id: @replace.id, ammount: 500, unit: "grams")


puts "Joining recipe with its dietary restriction"
@barbeque_celiac = RecipeOption.create(option_id: @celiac.id, recipe_id: @barbeque.id)
@barbeque_dairy_intolerant = RecipeOption.create(option_id: @dairy_intolerant.id, recipe_id: @barbeque.id)
@barbeque_kosher = RecipeOption.create(recipe_id: @barbeque.id, option_id: @kosher.id)
@barbeque_halal = RecipeOption.create(recipe_id: @barbeque.id, option_id: @halal.id)
@barbeque_peanut_allergy = RecipeOption.create(recipe_id: @barbeque.id, option_id: @peanut_allergy.id)
@barbeque_paleo = RecipeOption.create(recipe_id: @barbeque.id, option_id: @paleo.id)

@gnocchi_vegetarian = RecipeOption.create(option_id: @vegetarian.id, recipe_id: @gnocchi.id)
@gnocchi_vegan = RecipeOption.create(option_id: @vegan.id, recipe_id: @gnocchi.id)
@gnocchi_pescetarian = RecipeOption.create(option_id: @pescetarian.id, recipe_id: @gnocchi.id)
@gnocchi_kosher = RecipeOption.create(recipe_id: @gnocchi.id, option_id: @kosher.id)
@gnocchi_halal = RecipeOption.create(recipe_id: @gnocchi.id, option_id: @halal.id)
@gnocchi_peanut_allergy = RecipeOption.create(recipe_id: @gnocchi.id, option_id: @peanut_allergy.id)

@pizza_vegetarian = RecipeOption.create(option_id: @vegetarian.id, recipe_id: @pizza.id)
@pizza_vegan = RecipeOption.create(option_id: @vegan.id, recipe_id: @pizza.id)
@pizza_pescetarian = RecipeOption.create(option_id: @pescetarian.id, recipe_id: @pizza.id)
@pizza_kosher = RecipeOption.create(recipe_id: @pizza.id, option_id: @kosher.id)
@pizza_halal = RecipeOption.create(recipe_id: @pizza.id, option_id: @halal.id)
@pizza_peanut_allergy = RecipeOption.create(recipe_id: @pizza.id, option_id: @peanut_allergy.id)

@caesar_salad_pescetarian = RecipeOption.create(option_id: @pescetarian.id, recipe_id: @caesar_salad.id)
@caesar_salad_celiac = RecipeOption.create(option_id: @celiac.id, recipe_id: @caesar_salad.id)
@caesar_salad_kosher = RecipeOption.create(recipe_id: @caesar_salad.id, option_id: @kosher.id)
@caesar_salad_halal = RecipeOption.create(recipe_id: @caesar_salad.id, option_id: @halal.id)
@caesar_salad_peanut_allergy = RecipeOption.create(recipe_id: @caesar_salad.id, option_id: @peanut_allergy.id)
@caesar_salad_diabetic = RecipeOption.create(recipe_id: @caesar_salad.id, option_id: @diabetic.id)
@caesar_salad_paleo = RecipeOption.create(recipe_id: @caesar_salad.id, option_id: @paleo.id)

@sushi_celiac = RecipeOption.create(option_id: @celiac.id, recipe_id: @sushi.id)
@sushi_dairy_intolerant = RecipeOption.create(option_id: @dairy_intolerant.id, recipe_id: @sushi.id)
@sushi_kosher = RecipeOption.create(recipe_id: @sushi.id, option_id: @kosher.id)
@sushi_halal = RecipeOption.create(recipe_id: @sushi.id, option_id: @halal.id)
@sushi_peanut_allergy = RecipeOption.create(recipe_id: @sushi.id, option_id: @peanut_allergy.id)
@sushi_diabetic = RecipeOption.create(recipe_id: @sushi.id, option_id: @diabetic.id)
@sushi_paleo = RecipeOption.create(recipe_id: @sushi.id, option_id: @paleo.id)

@ravioli_vegetarian = RecipeOption.create(recipe_id: @vegetarian.id, option_id: @vegetarian.id)
@ravioli_vegan = RecipeOption.create(recipe_id: @vegan.id, option_id: @vegan.id)
@ravioli_pescetarian = RecipeOption.create(recipe_id: @pescetarian.id, option_id: @pescetarian.id)
@ravioli_kosher = RecipeOption.create(recipe_id: @kosher.id, option_id: @kosher.id)
@ravioli_halal = RecipeOption.create(recipe_id: @halal.id, option_id: @halal.id)
@ravioli_peanut_allergy = RecipeOption.create(recipe_id: @peanut_allergy.id, option_id: @peanut_allergy.id)
@ravioli_diabetic = RecipeOption.create(recipe_id: @diabetic.id, option_id: @diabetic.id)

@empanadas_kosher = RecipeOption.create(recipe_id: @empanadas.id, option_id: @kosher.id)
@empanadas_halal = RecipeOption.create(recipe_id: @empanadas.id, option_id: @halal.id)
@empanadas_peanut_allergy = RecipeOption.create(recipe_id: @empanadas.id, option_id: @peanut_allergy.id)
@empanadas_paleo = RecipeOption.create(recipe_id: @empanadas.id, option_id: @paleo.id)

@chocolate_cake_vegetarian = RecipeOption.create(recipe_id: @chocolate_cake.id, option_id: @vegetarian.id)
@chocolate_cake_vegan = RecipeOption.create(recipe_id: @chocolate_cake.id, option_id: @vegan.id)
@chocolate_cake_pescetarian = RecipeOption.create(recipe_id: @chocolate_cake.id, option_id: @pescetarian.id)
@chocolate_cake_kosher = RecipeOption.create(recipe_id: @chocolate_cake.id, option_id: @kosher.id)
@chocolate_cake_halal = RecipeOption.create(recipe_id: @chocolate_cake.id, option_id: @halal.id)
@chocolate_cake_peanut_allergy = RecipeOption.create(recipe_id: @chocolate_cake.id, option_id: @peanut_allergy.id)
@chocolate_cake_paleo = RecipeOption.create(recipe_id: @chocolate_cake.id, option_id: @paleo.id)

@mousse_vegetarian = RecipeOption.create(recipe_id: @mousse.id, option_id: @vegetarian.id)
@mousse_vegan = RecipeOption.create(recipe_id: @mousse.id, option_id: @vegan.id)
@mousse_pescetarian = RecipeOption.create(recipe_id: @mousse.id, option_id: @pescetarian.id)
@mousse_celiac = RecipeOption.create(recipe_id: @mousse.id, option_id: @celiac.id)
@mousse_dairy_intolerant = RecipeOption.create(recipe_id: @mousse.id, option_id: @dairy_intolerant.id)
@mousse_kosher = RecipeOption.create(recipe_id: @mousse.id, option_id: @kosher.id)
@mousse_halal = RecipeOption.create(recipe_id: @mousse.id, option_id: @halal.id)
@mousse_peanut_allergy = RecipeOption.create(recipe_id: @mousse.id, option_id: @peanut_allergy.id)
@mousse_diabetic = RecipeOption.create(recipe_id: @mousse.id, option_id: @diabetic.id)

@brownies_vegetarian = RecipeOption.create(recipe_id: @brownies.id, option_id: @vegetarian.id)
@brownies_vegan = RecipeOption.create(recipe_id: @brownies.id, option_id: @vegan.id)
@brownies_pescetarian = RecipeOption.create(recipe_id: @brownies.id, option_id: @pescetarian.id)
@brownies_kosher = RecipeOption.create(recipe_id: @brownies.id, option_id: @kosher.id)
@brownies_halal = RecipeOption.create(recipe_id: @brownies.id, option_id: @halal.id)

@chocotorta_vegetarian = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @vegetarian.id)
@chocotorta_vegan = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @vegan.id)
@chocotorta_pescetarian = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @pescetarian.id)
@chocotorta_celiac = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @celiac.id)
@chocotorta_dairy_intolerant = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @dairy_intolerant.id)
@chocotorta_kosher = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @kosher.id)
@chocotorta_halal = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @halal.id)
@chocotorta_peanut_allergy = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @peanut_allergy.id)
@chocotorta_diabetic = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @diabetic.id)
@chocotorta_paleo = RecipeOption.create(recipe_id: @chocotorta.id, option_id: @paleo.id)

@lemon_squares_vegetarian = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @vegetarian.id)
@lemon_squares_vegan = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @vegan.id)
@lemon_squares_pescetarian = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @pescetarian.id)
@lemon_squares_celiac = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @celiac.id)
@lemon_squares_dairy_intolerant = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @dairy_intolerant.id)
@lemon_squares_kosher = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @kosher.id)
@lemon_squares_halal = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @halal.id)
@lemon_squares_peanut_allergy = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @peanut_allergy.id)
@lemon_squares_diabetic = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @diabetic.id)
@lemon_squares_paleo = RecipeOption.create(recipe_id: @lemon_squares.id, option_id: @paleo.id)


puts "Creating fish n chips"
@fish_and_chips = Recipe.create(name: "Fish and chips", instructions: "In a large bowl, whisk together flour, 1 teaspoon salt, and Old Bay, then whisk in beer and egg. Let sit for 10 minutes. Dry cod with paper towels and season with salt and pepper. In a large pot over medium heat, add enough oil to come up 3 inches and heat to 375°. Working in batches, coat cod in batter then carefully drop in heated oil. Fry until golden and fish is cooked through, 5 to 6 minutes, flipping fish halfway through. Remove and place on a paper towel–lined plate and season with salt. Serve with lemon wedges.", details: "Not apt for vegetarians")

@fish_and_chips_flour = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@fish_and_chips_eggs = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")

@salt = Ingredient.create(name: "Salt")
@fish_and_chips_salt = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")

@lager = Ingredient.create(name: "Lager")
@fish_and_chips_lager = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @lager.id, ammount: 500, unit: "grams")

@cod = Ingredient.create(name: "Cod")
@fish_and_chips_cod = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @cod.id, ammount: 20, unit: "grams")

@black_pepper = Ingredient.create(name: "Black pepper")
@fish_and_chips_black_pepper = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @black_pepper.id, ammount: 20, unit: "grams")

@vegetable_oil = Ingredient.create(name: "Vegetable oil")
@fish_and_chips_vegetable_oil = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @vegetable_oil.id, ammount: 20, unit: "grams")

@fish_and_chips_celiac = RecipeOption.create(recipe_id: @fish_and_chips.id, option_id: @celiac.id)
@fish_and_chips_dairy_intolerant = RecipeOption.create(recipe_id: @fish_and_chips.id, option_id: @dairy_intolerant.id)
@fish_and_chips_kosher = RecipeOption.create(recipe_id: @fish_and_chips.id, option_id: @kosher.id)
@fish_and_chips_halal = RecipeOption.create(recipe_id: @fish_and_chips.id, option_id: @halal.id)
@fish_and_chips_peanut_allergy = RecipeOption.create(recipe_id: @fish_and_chips.id, option_id: @peanut_allergy.id)
@fish_and_chips_diabetic = RecipeOption.create(recipe_id: @fish_and_chips.id, option_id: @diabetic.id)
@fish_and_chips_paleo = RecipeOption.create(recipe_id: @fish_and_chips.id, option_id: @paleo.id)
@fish_and_chips_sugar_free = RecipeOption.create(recipe_id: @fish_and_chips.id, option_id: @sugar_free.id)

# 1 1/2 c. all-purpose flour
# Kosher salt
# 1/2 tsp. Old Bay seasoning
# 1 (12-oz.) bottle lager (such as Harps)
# 1 large egg, beaten
# 2 lb. cod, cut into 12 pieces
# Freshly ground black pepper
# Vegetable oil, for frying


puts "Creating Carrot cake"
@carrot_cake = Recipe.create(name: "Carrot cake", instructions: "Preheat oven to 350° and grease 2 - 8 round cake pans with cooking spray. In a large bowl, whisk together flour, salt, baking soda, and cinnamon. In another large bowl with a hand mixer (or in the bowl of a stand mixer), beat together sugar and oil until well combined. Add eggs one at a time beating well after each addition, then add vanilla. Mix in dry ingredients until just combined. Stir in carrots, pecans, and raisins. Divide batter evenly between prepared pans. Bake until a toothpick inserted into the middle comes out clean, 45 minutes. Let cool 15 minutes then invert cakes onto a cooling rack and let cool completely. Make frosting: In a large bowl with a hand mixer, beat together cream cheese and butter until smooth. Add vanilla and powdered sugar and beat again until smooth and a spreadable consistency. Frost cake as desired and garnish with pecans.", details: "Not apt for vegetarians")

@carrot_cake_salt = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@carrot_cake_flour = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@carrot_cake_eggs = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@carrot_cake_butter = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@carrot_cake_vegetable_oil = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @vegetable_oil.id, ammount: 20, unit: "grams")

@baking_soda = Ingredient.create(name: "Baking soda")
@carrot_cake_baking_soda = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @baking_soda.id, ammount: 500, unit: "grams")

@granulated_sugar = Ingredient.create(name: "Granulated sugar")
@carrot_cake_granulated_sugar = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @granulated_sugar.id, ammount: 500, unit: "grams")

@cinnamon = Ingredient.create(name: "Cinnamon")
@carrot_cake_cinnamon = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @cinnamon.id, ammount: 500, unit: "grams")

@vanilla_extract = Ingredient.create(name: "Vanilla extract")
@carrot_cake_vanilla_extract = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @vanilla_extract.id, ammount: 20, unit: "grams")

@carrots = Ingredient.create(name: "Carrots")
@carrot_cake_carrots = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @carrots.id, ammount: 20, unit: "grams")

@pecans = Ingredient.create(name: "Pecans")
@carrot_cake_pecans = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @pecans.id, ammount: 20, unit: "grams")

@raisins = Ingredient.create(name: "Raisins")
@carrot_cake_raisins = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @raisins.id, ammount: 20, unit: "grams")

@cream_cheese = Ingredient.create(name: "Cream cheese")
@carrot_cake_cream_cheese = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @cream_cheese.id, ammount: 20, unit: "grams")

@powdered_sugar = Ingredient.create(name: "Powdered sugar")
@carrot_cake_powdered_sugar = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @powdered_sugar.id, ammount: 20, unit: "grams")

@carrot_cake_pescetarian = RecipeOption.create(recipe_id: @carrot_cake.id, option_id: @pescetarian.id)
@carrot_cake_kosher = RecipeOption.create(recipe_id: @carrot_cake.id, option_id: @kosher.id)
@carrot_cake_halal = RecipeOption.create(recipe_id: @carrot_cake.id, option_id: @halal.id)
@carrot_cake_shellfish_allergy = RecipeOption.create(recipe_id: @carrot_cake.id, option_id: @shellfish_allergy.id)

# Cooking spray
# 3 c. all-purpose flour
# 1 1/2 tsp. kosher salt
# 2 tsp. baking soda
# 2 tsp. cinnamon
# 2 c. granulated sugar
# 1 1/2 c. vegetable oil
# 4 large eggs
# 1 tsp. pure vanilla extract
# 3 c. grated carrots
# 1 c. pecans, roughly chopped, plus more for garnish
# 1 c. rasisins
# FOR THE CREAM CHEESE FROSTING
# 1 (8-oz.) block cream cheese, softened
# 1/2 c. (1 stick) butter, softened
# 1 tsp. pure vanilla extract
# 4 c. powdered sugar


puts "Creating cheesy bowtie pasta"
@cheesy_bowtie_pasta = Recipe.create(name: "Cheesy bowtie pasta", instructions: "Preheat the oven to 375º. Bring a large pot of salted water to a boil and cook pasta for 10-12 minutes, or until tender. Drain and set aside. In a medium size pan over medium heat, add ground beef, breaking up meat with a wooden spoon. Add salt, pepper, adobo and paprika and cook until beef is no longer pink, then drain. Add sausage to ground beef and cook for another 4 mins; drain again if needed. Add onions and peppers to meat mixture and cook until softened. Stir in sauce and rosemary garlic seasoning, if using, to beef mixture and simmer on low for about 3-5 minutes. In a large casserole dish, combine cooked pasta with meat mixture and top with cheese. Bake for 8-12 minutes, until cheese is bubbly and melted. Let stand for 5 minutes.", details: "Not apt for vegetarians")

@cheesy_bowtie_pasta_salt = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@cheesy_bowtie_pasta_meat = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @meat.id, ammount: 500, unit: "grams")
@cheesy_bowtie_pasta_black_pepper = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@cheesy_bowtie_pasta_tomato_sauce = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @tomato_sauce.id, ammount: 500, unit: "grams")
@cheesy_bowtie_pasta_cheese = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @cheese.id, ammount: 500, unit: "grams")

@bowtie_pasta = Ingredient.create(name: "Bowtie pasta")
@cheesy_bowtie_pasta_bowtie_pasta = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @bowtie_pasta.id, ammount: 500, unit: "grams")

@adobo_seasoning = Ingredient.create(name: "Adobo seasoning")
@cheesy_bowtie_pasta_adobo_seasoning = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @adobo_seasoning.id, ammount: 20, unit: "grams")

@paprika = Ingredient.create(name: "Paprika")
@cheesy_bowtie_pasta_paprika = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @paprika.id, ammount: 20, unit: "grams")

@somked_sausage = Ingredient.create(name: "Somkes sausage")
@cheesy_bowtie_pasta_somked_sausage = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @somked_sausage.id, ammount: 20, unit: "grams")

@onions = Ingredient.create(name: "Onions")
@cheesy_bowtie_pasta_onions = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @onions.id, ammount: 20, unit: "grams")

@green_peppers = Ingredient.create(name: "Green peppers")
@cheesy_bowtie_pasta_green_peppers = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @green_peppers.id, ammount: 20, unit: "grams")

@rosemary_garlic = Ingredient.create(name: "Rosemary garlic")
@cheesy_bowtie_pasta_rosemary_garlic = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @rosemary_garlic.id, ammount: 20, unit: "grams")

@cheesy_bowtie_pasta_kosher = RecipeOption.create(recipe_id: @cheesy_bowtie_pasta.id, option_id: @kosher.id)
@cheesy_bowtie_pasta_halal = RecipeOption.create(recipe_id: @cheesy_bowtie_pasta.id, option_id: @halal.id)
@cheesy_bowtie_pasta_peanut_allergy = RecipeOption.create(recipe_id: @cheesy_bowtie_pasta.id, option_id: @peanut_allergy.id)
@cheesy_bowtie_pasta_shellfish_allergy = RecipeOption.create(recipe_id: @cheesy_bowtie_pasta.id, option_id: @shellfish_allergy.id)
@cheesy_bowtie_pasta_sugar_free = RecipeOption.create(recipe_id: @cheesy_bowtie_pasta.id, option_id: @sugar_free.id)

# Kosher salt
# 1 (16-oz.) box farfalle (bowtie pasta)
# 1 lb. lean ground beef
# Freshly ground black pepper
# 1/4 tsp. adobo seasoning
# 1/4 tsp. paprika
# 1 (12-oz.) package beef smoked sausage, thinly sliced or quartered
# 1/4 c. onion, diced (optional)
# 1/4 c. green peppers, diced (optional)
# 1 (24-oz.) jar of your favorite red pasta sauce
# 1/4 tsp. rosemary-garlic seasoning (optional)
# 1 (8-oz.) bag finely shredded Mexican-blend cheese


puts "Creating cacio e pepe"
@cacio_pepe = Recipe.create(name: "Cacio e Pepe", instructions: "In a pot of boiling salted water, cook pasta until al dente. Reserve ⅔ cup pasta water and drain pasta. In a large skillet over medium heat, melt 1 tablespoon butter with oil. Add a generous amount of black pepper and toast until fragrant, about 1 minute. Add ⅓ cup reserved pasta water and bring to simmer. Whisk in remaining butter then, using tongs, toss pasta into butter mixture.Add cheeses and toss constantly until cheese is melty, removing skillet from heat when about half the cheese has melted. (If sauce is too thick, loosen with more pasta water.)", details: "Not apt for vegetarians")

@cacio_pepe_butter = RecipeIngredient.create(recipe_id: @cacio_pepe.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@cacio_pepe_black_pepper = RecipeIngredient.create(recipe_id: @cacio_pepe.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")

@olive_oil = Ingredient.create(name: "Olive oil")
@cacio_pepe_olive_oil = RecipeIngredient.create(recipe_id: @cacio_pepe.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")

@pasta = Ingredient.create(name: "Pasta")
@cacio_pepe_pasta = RecipeIngredient.create(recipe_id: @cacio_pepe.id, ingredient_id: @pasta.id, ammount: 500, unit: "grams")

@pecorino = Ingredient.create(name: "Pecorino")
@cacio_pepe_pecorino = RecipeIngredient.create(recipe_id: @cacio_pepe.id, ingredient_id: @pecorino.id, ammount: 20, unit: "grams")

@cacio_pepe_vegetarian = RecipeOption.create(recipe_id: @cacio_pepe.id, option_id: @vegetarian.id)
@cacio_pepe_vegan = RecipeOption.create(recipe_id: @cacio_pepe.id, option_id: @vegan.id)
@cacio_pepe_pescetarian = RecipeOption.create(recipe_id: @cacio_pepe.id, option_id: @pescetarian.id)
@cacio_pepe_kosher = RecipeOption.create(recipe_id: @cacio_pepe.id, option_id: @kosher.id)
@cacio_pepe_halal = RecipeOption.create(recipe_id: @cacio_pepe.id, option_id: @halal.id)
@cacio_pepe_peanut_allergy = RecipeOption.create(recipe_id: @cacio_pepe.id, option_id: @peanut_allergy.id)
@cacio_pepe_shellfish_allergy = RecipeOption.create(recipe_id: @cacio_pepe.id, option_id: @shellfish_allergy.id)
@cacio_pepe_sugar_free = RecipeOption.create(recipe_id: @cacio_pepe.id, option_id: @sugar_free.id)

# 1/2 lb. pasta
# 2 tbsp. butter, divided
# 1 tbsp. extra-virgin olive oil
# Coarsely ground black pepper
# 3/4 c. freshly grated pecorino, plus more for garnish
# 3/4 c. freshly grated Parmesan, plus more for garnish


puts "Creating grilled cheese"
@grilled_cheese = Recipe.create(name: "Grilled cheese", instructions: "Spread 1 tablespoon butter on one side of each slice of bread. With butter side down, top each slice of bread with about ½ cup cheddar. In a skillet over medium heat, melt 1 tablespoon butter. Add two slices of bread, butter side down. Cook until bread is golden and cheese is starting to melt, about 2 minutes. Flip one piece of bread on top of the other and continue to cook until cheese is melty, about 30 seconds more. Repeat for the second sandwich, wiping skillet clean if necessary.", details: "Fast n' easy")

@grilled_cheese_butter = RecipeIngredient.create(recipe_id: @grilled_cheese.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")

@bread = Ingredient.create(name: "Bread")
@grilled_cheese_bread = RecipeIngredient.create(recipe_id: @grilled_cheese.id, ingredient_id: @bread.id, ammount: 500, unit: "grams")

@cheddar = Ingredient.create(name: "Cheddar")
@grilled_cheese_cheddar = RecipeIngredient.create(recipe_id: @grilled_cheese.id, ingredient_id: @cheddar.id, ammount: 20, unit: "grams")

@grilled_cheese_vegetarian = RecipeOption.create(recipe_id: @grilled_cheese.id, option_id: @vegetarian.id)
@grilled_cheese_vegan = RecipeOption.create(recipe_id: @grilled_cheese.id, option_id: @vegan.id)
@grilled_cheese_pescetarian = RecipeOption.create(recipe_id: @grilled_cheese.id, option_id: @pescetarian.id)
@grilled_cheese_kosher = RecipeOption.create(recipe_id: @grilled_cheese.id, option_id: @kosher.id)
@grilled_cheese_halal = RecipeOption.create(recipe_id: @grilled_cheese.id, option_id: @halal.id)
@grilled_cheese_peanut_allergy = RecipeOption.create(recipe_id: @grilled_cheese.id, option_id: @peanut_allergy.id)
@grilled_cheese_shellfish_allergy = RecipeOption.create(recipe_id: @grilled_cheese.id, option_id: @shellfish_allergy.id)
@grilled_cheese_paleo = RecipeOption.create(recipe_id: @grilled_cheese.id, option_id: @paleo.id)
@grilled_cheese_sugar_free = RecipeOption.create(recipe_id: @grilled_cheese.id, option_id: @sugar_free.id)

# 5 tbsp. butter, softened, divided
# 4 slices sourdough bread
# 2 c. shredded cheddar


puts "Creating cobb salad"
@cobb_salad = Recipe.create(name: "Cobb Salad", instructions: "In a jar, shake together vinegar, mustard, and oil and season with salt and pepper. On a large platter, spread out lettuce, then add rows of hard-boiled egg, chicken, bacon, avocado, blue cheese, and cherry tomatos. Season with salt and pepper, drizzle with dressing, and garnish with chives.", details: "Light to go")

@cobb_salad_olive_oil = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@cobb_salad_salt = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@cobb_salad_black_pepper = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@cobb_salad_eggs = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@cobb_salad_chicken = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @chicken.id, ammount: 500, unit: "grams")

@wine_vinegar = Ingredient.create(name: "Wine vinegar")
@cobb_salad_wine_vinegar = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @wine_vinegar.id, ammount: 500, unit: "grams")

@dijon_mustard = Ingredient.create(name: "Dijon mustard")
@cobb_salad_dijon_mustard = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @dijon_mustard.id, ammount: 20, unit: "grams")

@lettuce = Ingredient.create(name: "Lettuce")
@cobb_salad_lettuce = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @lettuce.id, ammount: 20, unit: "grams")

@bacon = Ingredient.create(name: "Bacon")
@cobb_salad_bacon = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @bacon.id, ammount: 20, unit: "grams")

@avocado = Ingredient.create(name: "Avocado")
@cobb_salad_avocado = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @avocado.id, ammount: 20, unit: "grams")

@blue_cheese = Ingredient.create(name: "X")
@cobb_salad_blue_cheese = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @blue_cheese.id, ammount: 20, unit: "grams")

@cherry_tomatos = Ingredient.create(name: "Cherry tomatos")
@cobb_salad_cherry_tomatos = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @cherry_tomatos.id, ammount: 20, unit: "grams")

@chives = Ingredient.create(name: "Chives")
@cobb_salad_chives = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @chives.id, ammount: 20, unit: "grams")

@cobb_salad_celiac = RecipeOption.create(recipe_id: @cobb_salad.id, option_id: @celiac.id)
@cobb_salad_kosher = RecipeOption.create(recipe_id: @cobb_salad.id, option_id: @kosher.id)
@cobb_salad_halal = RecipeOption.create(recipe_id: @cobb_salad.id, option_id: @halal.id)
@cobb_salad_peanut_allergy = RecipeOption.create(recipe_id: @cobb_salad.id, option_id: @peanut_allergy.id)
@cobb_salad_shellfish_allergy = RecipeOption.create(recipe_id: @cobb_salad.id, option_id: @shellfish_allergy.id)
@cobb_salad_diabetic = RecipeOption.create(recipe_id: @cobb_salad.id, option_id: @diabetic.id)
@cobb_salad_paleo = RecipeOption.create(recipe_id: @cobb_salad.id, option_id: @paleo.id)
@cobb_salad_sugar_free = RecipeOption.create(recipe_id: @cobb_salad.id, option_id: @sugar_free.id)

# 1/3 c. red wine vinegar
# 1 tbsp. Dijon mustard
# 2/3 c. extra-virgin olive oil
# Kosher salt
# Freshly ground black pepper
# 1 head romaine lettuce, coarsely chopped
# 4 hard-boiled eggs, peeled and quartered
# 12 oz. cooked chicken, diced
# 8 slices bacon, cooked and crumbled
# 1 avocado, thinly sliced
# 4 oz. crumbled blue cheese
# 5 oz. cherry tomatoes, halved
# 2 tbsp. finely chopped chives


puts "Creating cookies"
@cookies = Recipe.create(name: "Cookies", instructions: "Preheat oven to 375º and line a large baking sheet with parchment paper. Using an electric mixer, beat butter and sugars until light and fluffy, about 2 minutes. Slowly beat in vanilla extract and eggs. In a separate bowl, mix flour, baking soda and salt. Stir into butter-sugar mixture. Fold in chocolate chips. Roll dough into 1-inch balls, placing them about 2 inches apart on prepared baking sheet. Bake cookies for 10 to 12 minutes, or until lightly golden.", details: "Not apt for vegetarians")

@cookies_butter = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@cookies_granulated_sugar = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @granulated_sugar.id, ammount: 500, unit: "grams")
@cookies_vanilla_extract = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @vanilla_extract.id, ammount: 500, unit: "grams")
@cookies_flour = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@cookies_baking_soda = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @baking_soda.id, ammount: 500, unit: "grams")
@cookies_salt = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")

@brown_sugar = Ingredient.create(name: "Brown sugar")
@cookies_brown_sugar = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @brown_sugar.id, ammount: 500, unit: "grams")

@chocolate_chips = Ingredient.create(name: "Choclate chips")
@cookies_chocolate_chips = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @chocolate_chips.id, ammount: 20, unit: "grams")

@cookies_vegetarian = RecipeOption.create(recipe_id: @cookies.id, option_id: @vegetarian.id)
@cookies_vegan = RecipeOption.create(recipe_id: @cookies.id, option_id: @vegan.id)
@cookies_pescetarian = RecipeOption.create(recipe_id: @cookies.id, option_id: @pescetarian.id)
@cookies_kosher = RecipeOption.create(recipe_id: @cookies.id, option_id: @kosher.id)
@cookies_halal = RecipeOption.create(recipe_id: @cookies.id, option_id: @halal.id)
@cookies_peanut_allergy = RecipeOption.create(recipe_id: @cookies.id, option_id: @peanut_allergy.id)
@cookies_shellfish_allergy = RecipeOption.create(recipe_id: @cookies.id, option_id: @shellfish_allergy.id)
@cookies_diabetic = RecipeOption.create(recipe_id: @cookies.id, option_id: @diabetic.id)
@cookies_paleo = RecipeOption.create(recipe_id: @cookies.id, option_id: @paleo.id)

# 2 1/2 sticks unsalted butter
# 1 c. brown sugar
# 1/2 c. granulated sugar
# 2 tsp. vanilla extract
# 2 eggs
# 2 3/4 c. all-purpose flour
# 1 tsp. baking soda
# 3/4 tsp. salt
# 2 c. semisweet chocolate chips


puts "Creating pancakes"
@pancakes = Recipe.create(name: "Pancakes", instructions: "Mix flour, baking powder, salt, and sugar in a large bowl. In a medium bowl, whisk to combine egg yolk, vanilla, milk, and melted butter. Gently fold dry ingredients into wet ingredients until just combined. In another medium bowl, using a hand mixer, beat egg white until stiff peaks form. Fold egg white into batter gently with a rubber spatula until just combined. In a large frying pan over medium heat, melt 1 tablespoon butter. Pour about 1/4 cup pancake batter into pan. When little bubbles appear, about 1 to 2 minutes, flip and continue cooking until both sides are lightly golden. Repeat with remaining batter. Serve with maple syrup.", details: "Not apt for vegetarians")

@pancakes_flour = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@pancakes_salt = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@pancakes_eggs = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@pancakes_vanilla_extract = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @vanilla_extract.id, ammount: 500, unit: "grams")
@pancakes_milk = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @milk.id, ammount: 500, unit: "grams")
@pancakes_butter = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@pancakes_granulated_sugar = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @granulated_sugar.id, ammount: 20, unit: "grams")

@baking_powder = Ingredient.create(name: "Baking powder")
@pancakes_baking_powder = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @baking_powder.id, ammount: 500, unit: "grams")

@maple_syrup = Ingredient.create(name: "Maple syrup")
@pancakes_maple_syrup = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @maple_syrup.id, ammount: 20, unit: "grams")

@pancakes_vegetarian = RecipeOption.create(recipe_id: @pancakes.id, option_id: @vegetarian.id)
@pancakes_vegan = RecipeOption.create(recipe_id: @pancakes.id, option_id: @vegan.id)
@pancakes_pescetarian = RecipeOption.create(recipe_id: @pancakes.id, option_id: @pescetarian.id)
@pancakes_celiac = RecipeOption.create(recipe_id: @pancakes.id, option_id: @celiac.id)
@pancakes_kosher = RecipeOption.create(recipe_id: @pancakes.id, option_id: @kosher.id)
@pancakes_halal = RecipeOption.create(recipe_id: @pancakes.id, option_id: @halal.id)
@pancakes_peanut_allergy = RecipeOption.create(recipe_id: @pancakes.id, option_id: @peanut_allergy.id)
@pancakes_shellfish_allergy = RecipeOption.create(recipe_id: @pancakes.id, option_id: @shellfish_allergy.id)

# 1 1/2 c. all-purpose flour
# 1 tsp. baking powder
# 1 tsp. kosher salt
# 1 tbsp. granulated sugar
# 1 large egg, separated
# 1 tsp. pure vanilla extract
# 1 1/3 c. milk
# 2 tbsp. melted butter, plus more for cooking
# Maple syrup, for serving


puts "Creating orange chicken"
@orange_chicken = Recipe.create(name: "Orange chicken", instructions: "Preheat oven to 400° and line a baking sheet with parchment. Set up a dredging station with one bowl of flour, one of eggs, and one of panko. Dredge the chicken in flour, then coat in eggs and cover in panko. Season generously with salt and pepper. Arrange chicken on parchment-lined baking sheet and bake until no longer pink, 18 to 20 minutes. Meanwhile, make sauce: In a small saucepan over medium heat, combine orange juice, soy sauce, honey, garlic, ginger, and cornstarch. Whisk until combined and cook until thickened, about 5 minutes. Transfer chicken to a large bowl and toss in orange sauce. Serve over rice with orange zest, sesame seeds, and green onions.", details: "Not apt for vegetarians")

@orange_chicken_flour = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@orange_chicken_eggs = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@orange_chicken_chicken = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @chicken.id, ammount: 500, unit: "grams")
@orange_chicken_salt = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@orange_chicken_black_pepper = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@orange_chicken_soy_sauce = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @soy_sauce.id, ammount: 500, unit: "grams")

@green_onions = Ingredient.create(name: "Green onions")
@orange_chicken_green_onions = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @green_onions.id, ammount: 500, unit: "grams")

@ginger = Ingredient.create(name: "Ginger")
@orange_chicken_ginger = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")

@garlic = Ingredient.create(name: "Garlic")
@orange_chicken_garlic = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")

@bread_crumbs = Ingredient.create(name: "Bread crumbs")
@orange_chicken_bread_crumbs = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @bread_crumbs.id, ammount: 20, unit: "grams")

@jasmin_rice = Ingredient.create(name: "Jasmin rice")
@orange_chicken_jasmin_rice = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @jasmin_rice.id, ammount: 500, unit: "grams")

@honey = Ingredient.create(name: "Honey")
@orange_chicken_honey = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @honey.id, ammount: 20, unit: "grams")

@oranges = Ingredient.create(name: "Oranges")
@orange_chicken_oranges = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @oranges.id, ammount: 20, unit: "grams")

@cornstarch = Ingredient.create(name: "Cornstarch")
@orange_chicken_cornstarch = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @cornstarch.id, ammount: 20, unit: "grams")

@garnish = Ingredient.create(name: "Garnish")
@orange_chicken_garnish = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @garnish.id, ammount: 20, unit: "grams")

@orange_chicken_celiac = RecipeOption.create(recipe_id: @orange_chicken.id, option_id: @celiac.id)
@orange_chicken_dairy_intolerant = RecipeOption.create(recipe_id: @orange_chicken.id, option_id: @dairy_intolerant.id)
@orange_chicken_kosher = RecipeOption.create(recipe_id: @orange_chicken.id, option_id: @kosher.id)
@orange_chicken_halal = RecipeOption.create(recipe_id: @orange_chicken.id, option_id: @halal.id)
@orange_chicken_peanut_allergy = RecipeOption.create(recipe_id: @orange_chicken.id, option_id: @peanut_allergy.id)
@orange_chicken_shellfish_allergy = RecipeOption.create(recipe_id: @orange_chicken.id, option_id: @shellfish_allergy.id)
@orange_chicken_diabetic = RecipeOption.create(recipe_id: @orange_chicken.id, option_id: @diabetic.id)
@orange_chicken_paleo = RecipeOption.create(recipe_id: @orange_chicken.id, option_id: @paleo.id)
@orange_chicken_sugar_free = RecipeOption.create(recipe_id: @orange_chicken.id, option_id: @sugar_free.id)

# 2 c. all-purpose flour
# 2 large Eggs, beaten
# 2 c. panko bread crumbs
# 1 lb. boneless skinless chicken breasts, cut into chunks
# kosher salt
# Freshly ground black pepper
# Juice and zest of 2 oranges
# 1/3 c. low-sodium soy sauce
# 1/4 c. honey
# 2 cloves garlic, minced
# 2 tsp. freshly grated ginger
# 2 tbsp. cornstarch
# 2 c. cooked jasmine rice
# Sesame seeds, for garnish
# Sliced green onions, for garnish


puts "Creating egg roll bowls"
@egg_roll_bowls = Recipe.create(name: "Egg roll bowls", instructions: "In a large skillet over medium heat, heat vegetable oil. Add garlic and ginger and cook until fragrant, 1 to 2 minutes. Add pork and cook until no pink remains. Push pork to the side and add sesame oil. Add onion, carrot, and cabbage. Stir to combine with meat and add soy sauce and Sriracha. Cook until cabbage is tender, 5 to 8 minutes. Transfer mixture to a serving dish and garnish with green onions and sesame seeds. Serve.", details: "Not apt for vegetarians")

@egg_roll_bowls_vegetable_oil = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@egg_roll_bowls_onions = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @onions.id, ammount: 500, unit: "grams")
@egg_roll_bowls_carrots = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @carrots.id, ammount: 500, unit: "grams")
@egg_roll_bowls_soy_sauce = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @soy_sauce.id, ammount: 500, unit: "grams")
@egg_roll_bowls_ginger = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @ginger.id, ammount: 20, unit: "grams")
@egg_roll_bowls_green_onions = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @green_onions.id, ammount: 20, unit: "grams")

@garlic = Ingredient.create(name: "Garlic")
@egg_roll_bowls_garlic = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")

@pork = Ingredient.create(name: "Pork")
@egg_roll_bowls_pork = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @pork.id, ammount: 20, unit: "grams")

@sesame_oil = Ingredient.create(name: "Sesame oil")
@egg_roll_bowls_sesame_oil = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @sesame_oil.id, ammount: 20, unit: "grams")

@cabbage = Ingredient.create(name: "Cabbage")
@egg_roll_bowls_cabbage = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @cabbage.id, ammount: 20, unit: "grams")

@sriracha = Ingredient.create(name: "Sriracha")
@egg_roll_bowls_sriracha = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @sriracha.id, ammount: 20, unit: "grams")

@sesame_seeds = Ingredient.create(name: "Sesame seeds")
@egg_roll_bowls_sesame_seeds = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @sesame_seeds.id, ammount: 20, unit: "grams")

@egg_roll_bowls_celiac = RecipeOption.create(recipe_id: @egg_roll_bowls.id, option_id: @celiac.id)
@egg_roll_bowls_dairy_intolerant = RecipeOption.create(recipe_id: @egg_roll_bowls.id, option_id: @dairy_intolerant.id)
@egg_roll_bowls_kosher = RecipeOption.create(recipe_id: @egg_roll_bowls.id, option_id: @kosher.id)
@egg_roll_bowls_halal = RecipeOption.create(recipe_id: @egg_roll_bowls.id, option_id: @halal.id)
@egg_roll_bowls_peanut_allergy = RecipeOption.create(recipe_id: @egg_roll_bowls.id, option_id: @peanut_allergy.id)
@egg_roll_bowls_shellfish_allergy = RecipeOption.create(recipe_id: @egg_roll_bowls.id, option_id: @shellfish_allergy.id)
@egg_roll_bowls_diabetic = RecipeOption.create(recipe_id: @egg_roll_bowls.id, option_id: @diabetic.id)
@egg_roll_bowls_sugar_free = RecipeOption.create(recipe_id: @egg_roll_bowls.id, option_id: @sugar_free.id)

# 1 tbsp. vegetable oil
# 1 clove garlic, minced
# 1 tbsp. minced fresh ginger
# 1 lb. ground pork
# 1 tbsp. sesame oil
# 1/2 onion, thinly sliced
# 1 c. shredded carrot
# 1/4 green cabbage, thinly sliced
# 1/4 c. soy sauce
# 1 tbsp. Sriracha
# 1 green onion, thinly sliced
# 1 tbsp. sesame seeds





@burger_alfresco = Recipe.create(name: "Burger Alfresco", instructions: "Prepare a grill for high heat. Place a cast-iron griddle, flat side up, on grate; heat until very hot, at least 20 minutes. Mix together pickles, mayonnaise, ketchup, adobo sauce, and ½ tsp. salt in a medium bowl; set special sauce aside. Wrap all the buns together in a large sheet of foil to make a packet (this will keep buns soft and from getting too toasted on the grill). Place packet on grate and grill, turning once, until buns are warmed through, about 1 minute. Spread sauce over cut sides of buns. Place 3–4 pieces of lettuce on bottom buns and top each with some onion and a tomato slice, if using.", details: "Everybody love Burgers!")
# #create ingredients
@burger_alfresco_cheddar = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @cheddar.id, ammount: 10, unit: "slices")
@burger_alfresco_vegetable_oil = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @vegetable_oil.id, ammount: 2, unit: "cups")
@burger_alfresco_tomato = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @tomato.id, ammount: 500, unit: "grams")
@burger_alfresco_potato = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @potato.id, ammount: 500, unit: "grams")
@burger_alfresco_meat = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @meat.id, ammount: 1000, unit: "grams")


# # join recipe with dietary restriction

@burger_alfresco_pescetarian = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @pescetarian.id)
@burger_alfresco_kosher = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @kosher.id)
@burger_alfresco_halal = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @halal.id)
@burger_alfresco_peanut_allergy = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @peanut_allergy.id)
@burger_alfresco_shellfish_allergy = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @shellfish_allergy.id)
@burger_alfresco_sugar_free = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @sugar_free.id)

@chicken_mushroom_noodles = Recipe.create(name: "Chicken and Mushroom Noodles", instructions: "If using 1 lb. skinless, boneless chicken thighs (about 4 small), cut into ¼ pieces on a cutting board with a chef’s knife. (To make this process easier, freeze chicken on a baking sheet 30 minutes, then cut chicken when it’s half thawed.) If you’re using 1 lb. ground chicken, skip this step.", details: "Delicious wok")
# #create ingredients
@chicken_mushroom_noodles_garlic = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @garlic.id, ammount: 5, unit: "gloves")
@chicken_mushroom_noodles_black_pepper = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @black_pepper.id, ammount: 100, unit: "grams")
@chicken_mushroom_noodles_wine_vinegar = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @wine_vinegar.id, ammount: 1, unit: "cup")
@chicken_mushroom_noodles_sugar = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @sugar.id, ammount: 100, unit: "grams")
@chicken_mushroom_noodles_vegetable_oil = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @vegetable_oil.id, ammount: 3, unit: "cups")


# # join recipe with dietary restriction
@chicken_mushroom_noodles_pescetarian = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @pescetarian.id)
@chicken_mushroom_noodles_dairy_intolerant = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @dairy_intolerant.id)
@chicken_mushroom_noodles_kosher = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @kosher.id)
@chicken_mushroom_noodles_peanut_allergy = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @peanut_allergy.id)
@chicken_mushroom_noodles_shellfish_allergy = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @shellfish_allergy.id)
@chicken_mushroom_noodles_sugar_free = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @sugar_free.id)

@herbs_fusilli = Recipe.create(name: "Fusilli With Battuto di Erbe", instructions: "Heat ¾ cup oil in a large Dutch oven or other heavy pot over medium until shimmering. Add garlic, hardy herbs, fennel pollen (if using), and red pepper flakes and cook, stirring often, until oil around garlic starts to sizzle slightly and garlic begins to turn golden brown, about 2 minutes (be careful when you add the garlic as the oil may spatter). Add spring greens and tender herbs and season with a couple pinches of salt. Cook, stirring often, until greens and herbs are wilted and bright green, about 2 minutes. Scrape herb mixture onto a rimmed baking sheet; spread out and let cool slightly. Reserve pot. Scrape pesto back into reserved pot and add pasta and ¾ cup pasta cooking liquid. Set over medium-low heat and cook, tossing vigorously and adding more pasta cooking liquid if needed, until warmed through and pasta is coated (do not let pesto come to a boil), about 1 minute. Taste and season with more salt if needed.", details: "Delicious pasta!")
# #create ingredients
@herbs_fusilli_garlic = RecipeIngredient.create(recipe_id: @herbs_fusilli.id, ingredient_id: @garlic.id, ammount: 5, unit: "gloves")
@herbs_fusilli_vegetable_oil = RecipeIngredient.create(recipe_id: @herbs_fusilli.id, ingredient_id: @vegetable_oil.id, ammount: 3, unit: "cups")

@fusilli = Ingredient.create(name: "Fusilli")
@herbs_fusilli_fusilli = RecipeIngredient.create(recipe_id: @herbs_fusilli.id, ingredient_id: @fusilli.id, ammount: 1000, unit: "grams")



# # join recipe with dietary restriction
@herbs_fusilli_vegetarian = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @vegetarian.id)
@herbs_fusilli_vegan = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @vegan.id)
@herbs_fusilli_pescetarian = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @pescetarian.id)
@herbs_fusilli_peanut_allergy = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @peanut_allergy.id)
@herbs_fusilli_shellfish_allergy = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @shellfish_allergy.id)
@herbs_fusilli_diabetic = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @diabetic.id)
@herbs_fusilli_paleo = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @paleo.id)
@herbs_fusilli_sugar_free = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @sugar_free.id)

@juicy_steak = Recipe.create(name: "Juicy Steaks", instructions: "Clip (or stand) sous vide machine to a tall large pot. Fill pot with warm water to height according to manufacturer’s instructions (keep in mind that steaks when added will cause water to rise). Heat a large cast-iron skillet over high until very hot. Add oil and cook all 4 sides of steak until a nice crust forms, 1–2 minutes total (it happens fast, so don’t walk away). The steak is already perfectly cooked; this step is to get some color and texture on the exterior. Slice steak against the grain, if desired, and season with salt and pepper. (The steak may appear slightly gray when you first cut into it but will turn bright pink when exposed to air.)", details: "You will never eat a steak as delicious as this one")
# #create ingredients
@juicy_steak_meat = RecipeIngredient.create(recipe_id: @juicy_steak.id, ingredient_id: @meat.id, ammount: 1500, unit: "grams")
@juicy_steak_vegetable_oil = RecipeIngredient.create(recipe_id: @juicy_steak.id, ingredient_id: @vegetable_oil.id, ammount: 5, unit: "cups")
@juicy_steak_black_pepper = RecipeIngredient.create(recipe_id: @juicy_steak.id, ingredient_id: @black_pepper.id, ammount: 5, unit: "cups")
@juicy_steak_salt = RecipeIngredient.create(recipe_id: @juicy_steak.id, ingredient_id: @salt.id, ammount: 3, unit: "cups")


# # join recipe with dietary restriction
@juicy_steak_pescetarian = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @pescetarian.id)
@juicy_steak_celiac = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @celiac.id)
@juicy_steak_dairy_intolerant = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @dairy_intolerant.id)
@juicy_steak_kosher = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @kosher.id)
@juicy_steak_halal = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @halal.id)
@juicy_steak_peanut_allergy = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @peanut_allergy.id)
@juicy_steak_shellfish_allergy = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @shellfish_allergy.id)
@juicy_steak_sugar_free = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @sugar_free.id)

@macncheese = Recipe.create(name: "Mac n' Cheese", instructions: "Peel ½ small butternut squash (about 1¼ lb.) and cut flesh into ½ cubes. Peel and finely chop 1 onion. Using the flat side of your chef’s knife, crush 1 garlic clove, then peel and finely chop. Coarsely chop 1 cup kimchi (some kimchi juice is okay; no need to drain).", details: "The good 'ol mac n cheese")
# #create ingredients
@macncheese_cheddar = RecipeIngredient.create(recipe_id: @macncheese.id, ingredient_id: @cheddar.id, ammount: 500, unit: "grams")
@macncheese_garlic = RecipeIngredient.create(recipe_id: @macncheese.id, ingredient_id: @garlic.id, ammount: 4, unit: "gloves")

@maccaroni = Ingredient.create(name: "Macaronis")
@macncheese_maccaroni = RecipeIngredient.create(recipe_id: @macncheese.id, ingredient_id: @maccaroni.id, ammount: 500, unit: "grams")


# # join recipe with dietary restriction
@macncheese_vegetarian = RecipeOption.create(recipe_id: @macncheese.id, option_id: @vegetarian.id)
@macncheese_pescetarian = RecipeOption.create(recipe_id: @macncheese.id, option_id: @pescetarian.id)
@macncheese_kosher = RecipeOption.create(recipe_id: @macncheese.id, option_id: @kosher.id)
@macncheese_halal = RecipeOption.create(recipe_id: @macncheese.id, option_id: @halal.id)
@macncheese_peanut_allergy = RecipeOption.create(recipe_id: @macncheese.id, option_id: @peanut_allergy.id)
@macncheese_shellfish_allergy = RecipeOption.create(recipe_id: @macncheese.id, option_id: @shellfish_allergy.id)
@macncheese_diabetic = RecipeOption.create(recipe_id: @macncheese.id, option_id: @diabetic.id)
@macncheese_sugar_free = RecipeOption.create(recipe_id: @macncheese.id, option_id: @sugar_free.id)

@marinated_chicken = Recipe.create(name: "Delicious marinated Chicken", instructions: "Pour oil into a small skillet; stir in paprika, coriander, and cumin. Set over medium heat and cook, stirring occasionally, until tiny bubbles form and oil around spices starts to sizzle and is very fragrant, about 2 minutes. (This step extracts oils from the spices, bringing out their flavors.) Immediately pour half of spiced oil into a large bowl; set remaining spiced oil aside for borani. Let oil in bowl cool 5 minutes, then add yogurt, garlic, ginger, and red pepper flakes and whisk until smooth.", details: "Not apt for vegetarians")
# #create ingredients
@marinated_chicken_chicken = RecipeIngredient.create(recipe_id: @marinated_chicken.id, ingredient_id: @chicken.id, ammount: 1500, unit: "grams")
@marinated_chicken_black_pepper = RecipeIngredient.create(recipe_id: @marinated_chicken.id, ingredient_id: @black_pepper.id, ammount: 5, unit: "cups")
@marinated_chicken_vegetable_oil = RecipeIngredient.create(recipe_id: @marinated_chicken.id, ingredient_id: @vegetable_oil.id, ammount: 5, unit: "cups")

@yogurt = Ingredient.create(name: "Yogurt")
@marinated_chicken_yogurt = RecipeIngredient.create(recipe_id: @marinated_chicken.id, ingredient_id: @yogurt.id, ammount: 300, unit: "grams")


# # join recipe with dietary restriction
@marinated_chicken_pescetarian = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @pescetarian.id)
@marinated_chicken_celiac = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @celiac.id)
@marinated_chicken_dairy_intolerant = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @dairy_intolerant.id)
@marinated_chicken_kosher = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @kosher.id)
@marinated_chicken_peanut_allergy = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @peanut_allergy.id)
@marinated_chicken_shellfish_allergy = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @shellfish_allergy.id)
@marinated_chicken_sugar_free = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @sugar_free.id)

@noodle_puttanesca = Recipe.create(name: "Noodles Puttanesca", instructions: "Step 1 Pulse beefsteak tomatoes, garlic, red pepper flakes, and 2 tsp. salt in a food processor until smooth; transfer sauce to a large bowl and mix in cherry tomatoes, olives, capers, and ¼ cup oil. Step 2 Cook spaghetti in a large pot of boiling salted water, stirring occasionally, until al dente. Drain pasta, reserving ¼ cup pasta cooking liquid. Step 3 Add pasta, parsley, and butter to sauce. Toss vigorously with tongs, adding a splash of pasta cooking liquid or more as needed to create an emulsified sauce that coats pasta. Divide among bowls and drizzle with more oil.", details: "Delicious pasta")
# #create ingredients
@noodle_puttanesca_tomato = RecipeIngredient.create(recipe_id: @noodle_puttanesca.id, ingredient_id: @tomato.id, ammount: 300, unit: "grams")
@noodle_puttanesca_tomato_sauce = RecipeIngredient.create(recipe_id: @noodle_puttanesca.id, ingredient_id: @tomato_sauce.id, ammount: 400, unit: "grams")
@noodle_puttanesca_pasta = RecipeIngredient.create(recipe_id: @noodle_puttanesca.id, ingredient_id: @pasta.id, ammount: 1000, unit: "grams")
@noodle_puttanesca_vegetable_oil = RecipeIngredient.create(recipe_id: @noodle_puttanesca.id, ingredient_id: @vegetable_oil.id, ammount: 4, unit: "cups")

# # join recipe with dietary restriction
@noodle_puttanesca_vegetarian = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @vegetarian.id)
@noodle_puttanesca_vegan = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @vegan.id)
@noodle_puttanesca_pescetarian = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @pescetarian.id)
@noodle_puttanesca_celiac = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @celiac.id)
@noodle_puttanesca_dairy_intolerant = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @dairy_intolerant.id)
@noodle_puttanesca_kosher = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @kosher.id)
@noodle_puttanesca_halal = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @halal.id)
@noodle_puttanesca_peanut_allergy = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @peanut_allergy.id)
@noodle_puttanesca_shellfish_allergy = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @shellfish_allergy.id)
@noodle_puttanesca_diabetic = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @diabetic.id)
@noodle_puttanesca_paleo = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @paleo.id)
@noodle_puttanesca_sugar_free = RecipeOption.create(recipe_id: @noodle_puttanesca.id, option_id: @sugar_free.id)

@steak_wraps = Recipe.create(name: "Lettuce and Steak Wraps", instructions: "This recipe is simple: marinate some skirt steak in the adobo sauce from canned chipotles in adobo, lime juice, salt, pepper, and neutral oil. Cook it in a ripping-hot cast iron pan, let it rest, slice, and slide into iceberg lettuce. That’s all fine and dandy, but the reason this recipe is so exciting isn’t because it’s weeknight friendly or because it’s way to eat less carbs without feeling like you’re depriving yourself. It’s amazing because you are eating corn nuts, a snack that your mom probably didn’t let you buy from the gas station! There are radishes there for a sharp bite and extra vegetables, spicy yogurt sauce, cilantro, and lime too, but really, my eyes are on those corn nuts.", details: "Delicious and healthy")
# #create ingredients
@steak_wraps_lettuce = RecipeIngredient.create(recipe_id: @steak_wraps.id, ingredient_id: @lettuce.id, ammount: 500, unit: "grams")
@steak_wraps_meat = RecipeIngredient.create(recipe_id: @steak_wraps.id, ingredient_id: @meat.id, ammount: 1500, unit: "grams")
@steak_wraps_black_pepper = RecipeIngredient.create(recipe_id: @steak_wraps.id, ingredient_id: @black_pepper.id, ammount: 4, unit: "cups")

@wrap = Ingredient.create(name: "Wraps")
@steak_wraps_wrap = RecipeIngredient.create(recipe_id: @steak_wraps.id, ingredient_id: @wrap.id, ammount: 10, unit: "units")


# # join recipe with dietary restriction
@steak_wraps_pescetarian = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @pescetarian.id)
@steak_wraps_dairy_intolerant = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @dairy_intolerant.id)
@steak_wraps_kosher = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @kosher.id)
@steak_wraps_peanut_allergy = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @peanut_allergy.id)
@steak_wraps_shellfish_allergy = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @shellfish_allergy.id)
@steak_wraps_diabetic = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @diabetic.id)
@steak_wraps_paleo = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @paleo.id)
@steak_wraps_sugar_free = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @sugar_free.id)

@steaks_and_eggs = Recipe.create(name: "Steak and Eggs with Saucy Beans", instructions: "Step 1 Mix paprika, Aleppo-style pepper, 2½ tsp. salt, and 1 tsp. black pepper in a bowl. Rub all over steaks, pressing to adhere. Let sit while you make the beans. Step 2 Heat 2 Tbsp. oil in a medium saucepan over medium-low. Cook shallots, garlic, and cilantro stems, stirring often, until softened but not yet browned, about 3 minutes. Add beans, butter, and ¾ cup water. Bring to a simmer and cook, stirring occasionally, until beans are saucy, 6–9 minutes. Remove from heat and stir in cilantro leaves. Finely grate some lime zest from one of the lime halves into beans, then squeeze in its juice. Season with salt and pepper. Cover to keep warm.", details: "Not apt for vegetarians")
# #create ingredients
@steaks_and_eggs_eggs = RecipeIngredient.create(recipe_id: @steaks_and_eggs.id, ingredient_id: @eggs.id, ammount: 5, unit: "units")
@steaks_and_eggs_meat = RecipeIngredient.create(recipe_id: @steaks_and_eggs.id, ingredient_id: @meat.id, ammount: 1500, unit: "grams")
@steaks_and_eggs_butter = RecipeIngredient.create(recipe_id: @steaks_and_eggs.id, ingredient_id: @butter.id, ammount: 100, unit: "grams")
@steaks_and_eggs_lemons = RecipeIngredient.create(recipe_id: @steaks_and_eggs.id, ingredient_id: @lemons.id, ammount: 2, unit: "units")


# # join recipe with dietary restriction
@steaks_and_eggs_pescetarian = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @pescetarian.id)
@steaks_and_eggs_celiac = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @celiac.id)
@steaks_and_eggs_kosher = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @kosher.id)
@steaks_and_eggs_halal = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @halal.id)
@steaks_and_eggs_peanut_allergy = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @peanut_allergy.id)
@steaks_and_eggs_shellfish_allergy = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @shellfish_allergy.id)
@steaks_and_eggs_sugar_free = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @sugar_free.id)

@vegan_pasta = Recipe.create(name: "Vegan Pasta", instructions: "Marinate them like you would olives or cheese. Sauté a sliced leek, shallot, or onion in plenty of oil. Add spices—mustard/fennel/cumin/coriander seeds in the oil, along with chile flakes and lemon peel—and cook until fragrant. Remove from heat and grate in garlic. Pour over any kind of drained and rinsed beans (or even cooked lentils). Let them hang out for 20 minutes or an hour or as long as you can handle. Add a squeeze of lemon juice or a splash of vinegar. Spoon over toast.", details: "Delicious and healthy vegan pasta")
# #create ingredients
@vegan_pasta_pasta = RecipeIngredient.create(recipe_id: @vegan_pasta.id, ingredient_id: @pasta.id, ammount: 500, unit: "grams")
@vegan_pasta_tomato = RecipeIngredient.create(recipe_id: @vegan_pasta.id, ingredient_id: @tomato.id, ammount: 300, unit: "grams")
@vegan_pasta_black_pepper = RecipeIngredient.create(recipe_id: @vegan_pasta.id, ingredient_id: @black_pepper.id, ammount: 3, unit: "cups")


# # join recipe with dietary restriction
@vegan_pasta_vegetarian = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @vegetarian.id)
@vegan_pasta_vegan = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @vegan.id)
@vegan_pasta_pescetarian = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @pescetarian.id)
@vegan_pasta_dairy_intolerant = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @dairy_intolerant.id)
@vegan_pasta_kosher = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @kosher.id)
@vegan_pasta_peanut_allergy = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @peanut_allergy.id)
@vegan_pasta_shellfish_allergy = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @shellfish_allergy.id)
@vegan_pasta_sugar_free = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @sugar_free.id)

@veggie_burger = Recipe.create(name: "Veggie Burger", instructions: "Step 1 Cook wheat berries in a medium saucepan of boiling salted water until tender (they will remain quite chewy), 45–50 minutes. Drain, spread out on a baking sheet, and let cool. Step 2 Meanwhile, place porcini mushrooms in a small bowl and cover with 1 cup very hot water. Let stand 20 minutes to soften; drain, reserving ¼ cup mushroom soaking liquid. Step 3 Heat 2 Tbsp. oil in a large skillet over medium-high heat. Add shallot and cook, stirring often, until softened, about 3 minutes. Add shiitake mushrooms and cook, tossing occasionally, until golden brown and tender, 6–8 minutes. Transfer shallot and shiitake mushrooms to a food processor. Add chickpeas and rehydrated porcini mushrooms and pulse until coarsely chopped. Add wheat berries, liquid aminos, and reserved mushroom soaking liquid and process until fairly smooth (mixture should still have some texture). Transfer to a large bowl; season with salt and pepper and fold in carrot and egg. Form mixture into four 5” patties; place on a plate and chill, uncovered, at least 30 minutes.", details: "Not apt for vegetarians")
# #create ingredients
@veggie_burger_onions = RecipeIngredient.create(recipe_id: @veggie_burger.id, ingredient_id: @onions.id, ammount: 500, unit: "grams")
@veggie_burger_carrots = RecipeIngredient.create(recipe_id: @veggie_burger.id, ingredient_id: @carrots.id, ammount: 300, unit: "grams")
@veggie_burger_bread = RecipeIngredient.create(recipe_id: @veggie_burger.id, ingredient_id: @bread.id, ammount: 4, unit: "units")

@mushrooms = Ingredient.create(name: "Mushrooms")
@veggie_burger_mushrooms = RecipeIngredient.create(recipe_id: @veggie_burger.id, ingredient_id: @mushrooms.id, ammount: 150, unit: "grams")


# # join recipe with dietary restriction
@veggie_burger_vegetarian = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @vegetarian.id)
@veggie_burger_vegan = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @vegan.id)
@veggie_burger_pescetarian = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @pescetarian.id)
@veggie_burger_celiac = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @celiac.id)
@veggie_burger_dairy_intolerant = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @dairy_intolerant.id)
@veggie_burger_kosher = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @kosher.id)
@veggie_burger_halal = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @halal.id)
@veggie_burger_peanut_allergy = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @peanut_allergy.id)
@veggie_burger_shellfish_allergy = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @shellfish_allergy.id)






# #create recipe with image
# @replacerecipe = Recipe.create(name: "X", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# replacerecipe_file = URI.open('X')
# @replacerecipe.photo.attach(io: replacerecipe_file, filename: 'replacerecipe.jpg', content_type: 'image/jpg')

# #create ingredients
# @replacerecipe_replaceingredient = RecipeIngredient.create(recipe_id: @replacerecipe.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @replacerecipe_replaceingredient = RecipeIngredient.create(recipe_id: @replacerecipe.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @replacerecipe_replaceingredient = RecipeIngredient.create(recipe_id: @replacerecipe.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @replacerecipe_replaceingredient = RecipeIngredient.create(recipe_id: @replacerecipe.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# # join recipe with dietary restriction
# @replacerecipe_vegetarian = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @vegetarian.id)
# @replacerecipe_vegan = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @vegan.id)
# @replacerecipe_pescetarian = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @pescetarian.id)
# @replacerecipe_celiac = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @celiac.id)
# @replacerecipe_dairy_intolerant = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @dairy_intolerant.id)
# @replacerecipe_kosher = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @kosher.id)
# @replacerecipe_halal = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @halal.id)
# @replacerecipe_peanut_allergy = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @peanut_allergy.id)
# @replacerecipe_shellfish_allergy = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @shellfish_allergy.id)
# @replacerecipe_diabetic = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @diabetic.id)
# @replacerecipe_paleo = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @paleo.id)
# @replacerecipe_sugar_free = RecipeOption.create(recipe_id: @replacerecipe.id, option_id: @sugar_free.id)


barbeque_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614125987/swuqcu0j0d2jfmfwqmj8.jpg')
@barbeque.photo.attach(io: barbeque_file, filename: 'barbeque.jpg', content_type: 'image/jpg')

gnocchi_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126473/mhidyfrmkizqqrq88sr7.jpg')
@gnocchi.photo.attach(io: gnocchi_file, filename: 'gnochi.jpg', content_type: 'image/jpg')

pizza_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614125924/xqgqppjx4mqwh7tqqwak.jpg')
@pizza.photo.attach(io: pizza_file, filename: 'pizza.jpg', content_type: 'image/jpg')

caesar_salad_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126458/xda3j02xma6gzxh331jn.jpg')
@caesar_salad.photo.attach(io: caesar_salad_file, filename: 'caesar_salad.jpg', content_type: 'image/jpg')

sushi_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126514/giiyj8swmlkjdgplinrb.jpg')
@sushi.photo.attach(io: sushi_file, filename: 'sushi.jpg', content_type: 'image/jpg')

ravioli_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126495/ba1m7hiif9jpkq1ugecq.jpg')
@ravioli.photo.attach(io: ravioli_file, filename: 'ravioli.jpg', content_type: 'image/jpg')

empanadas_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126783/m61fdr3at6l4gjqofzc1.jpg')
@empanadas.photo.attach(io: empanadas_file, filename: 'empanadas.jpg', content_type: 'image/jpg')

chocolate_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614275222/exlltipyltc79yiycsjg.jpg')
@chocolate_cake.photo.attach(io: chocolate_cake_file, filename: 'replace.jpg', content_type: 'image/jpg')

brownies_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614275060/gih2jpnhuudagrbjgmdj.jpg')
@brownies.photo.attach(io: brownies_file, filename: 'brownies.jpg', content_type: 'image/jpg')

lemon_squares_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614275022/xlhaqf50pzrj85gtllaa.jpg')
@lemon_squares.photo.attach(io: lemon_squares_file, filename: 'lemon_squares.jpg', content_type: 'image/jpg')

mousse_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614274878/kvfrpthizp1q02xj8lxq.jpg')
@mousse.photo.attach(io: mousse_file, filename: 'mousse.jpg', content_type: 'image/jpg')

chocotorta_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614275041/cgsjppta9lh0himrj0ld.jpg')
@chocotorta.photo.attach(io: chocotorta_file, filename: 'chocotorta.jpg', content_type: 'image/jpg')

fish_and_chips_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614977184/zdh5ckmlou6phzqd1lyq.png')
@fish_and_chips.photo.attach(io: fish_and_chips_file, filename: 'fish_and_chips.png', content_type: 'image/png')

carrot_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614976782/ioslx2dvdmguj2dmbsfv.png')
@carrot_cake.photo.attach(io: carrot_cake_file, filename: 'carrot_cake.png', content_type: 'image/png')

cheesy_bowtie_pasta_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614977754/jk66xk1efqmjds9iyc3z.png')
@cheesy_bowtie_pasta.photo.attach(io: cheesy_bowtie_pasta_file, filename: 'cheesy_bowtie_pasta.png', content_type: 'image/png')

cacio_pepe_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614979373/usipaqkezh9ltvf8re36.png')
@cacio_pepe.photo.attach(io: cacio_pepe_file, filename: 'cacio_pepe.png', content_type: 'image/png')

grilled_cheese_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614979606/uraw1axzeypw2fkrwoei.png')
@grilled_cheese.photo.attach(io: grilled_cheese_file, filename: 'grilled_cheese.png', content_type: 'image/png')

cobb_salad_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614979403/cfw7mixkokytpylsizxi.png')
@cobb_salad.photo.attach(io: cobb_salad_file, filename: 'cobb_salad.png', content_type: 'image/png')

cookies_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614983834/zqif1btjsxsvfjrusr2w.png')
@cookies.photo.attach(io: cookies_file, filename: 'cookies.png', content_type: 'image/png')

pancakes_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614983923/pn1hujzyopmkeosm6t0o.png')
@pancakes.photo.attach(io: pancakes_file, filename: 'pancakes.png', content_type: 'image/png')

orange_chicken_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614983988/gww2qfcsg2i5gazlghlg.png')
@orange_chicken.photo.attach(io: orange_chicken_file, filename: 'orange_chicken.png', content_type: 'image/png')

egg_roll_bowls_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614984224/zrrpxhzifzhhttmptvs5.png')
@egg_roll_bowls.photo.attach(io: egg_roll_bowls_file, filename: 'egg_roll_bowls.jpg', content_type: 'image/jpg')


# Cloudinary::Uploader.upload("app/assets/images/replace.jpg")



# @replacerecipe = Recipe.create(name: "X", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# replacerecipe_file = URI.open('X')
# @replacerecipe.photo.attach(io: replacerecipe_file, filename: 'replacerecipe.jpg', content_type: 'image/jpg')





burger_alfresco_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058494/k1q4afeu8dx3gwqhbih0.png')
@burger_alfresco.photo.attach(io: burger_alfresco_file, filename: 'burger_alfresco.png', content_type: 'image/png')


chicken_mushroom_noodles_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058498/vjiika1yvyi5dth9t9pf.png')
@chicken_mushroom_noodles.photo.attach(io: chicken_mushroom_noodles_file, filename: 'chicken_mushroom_noodles.png', content_type: 'image/png')


herbs_fusilli_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058502/pzhhqj4ptq8uimd9wlsl.png')
@herbs_fusilli.photo.attach(io: herbs_fusilli_file, filename: 'herbs_fusilli.png', content_type: 'image/png')


juicy_steak_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058506/yeprsjgrlfencomslewt.png')
@juicy_steak.photo.attach(io: juicy_steak_file, filename: 'juicy_steak.png', content_type: 'image/png')


macncheese_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058509/o8fe22vfjgnjihhqfbpr.png')
@macncheese.photo.attach(io: macncheese_file, filename: 'macncheese.png', content_type: 'image/png')


marinated_chicken_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058512/jehhgsl2mkilcgofetvl.png')
@marinated_chicken.photo.attach(io: marinated_chicken_file, filename: 'marinated_chicken.png', content_type: 'image/png')


noodle_puttanesca_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058516/stfnpajmemr3zs7ul9d4.png')
@noodle_puttanesca.photo.attach(io: noodle_puttanesca_file, filename: 'noodle_puttanesca.png', content_type: 'image/png')


steak_wraps_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058519/vsw6xq0tb1jvfy2idepa.png')
@steak_wraps.photo.attach(io: steak_wraps_file, filename: 'steak_wraps.png', content_type: 'image/png')


steaks_and_eggs_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058522/ve0xvqkfitgykgk6rhne.png')
@steaks_and_eggs.photo.attach(io: steaks_and_eggs_file, filename: 'steaks_and_eggs.png', content_type: 'image/png')


vegan_pasta_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058526/k60t0kva3lam3fjefc2a.png')
@vegan_pasta.photo.attach(io: vegan_pasta_file, filename: 'vegan_pasta.png', content_type: 'image/png')


veggie_burger_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615058528/vncwmvvrmhxbltu3whkh.png')
@veggie_burger.photo.attach(io: veggie_burger_file, filename: 'veggie_burger.png', content_type: 'image/png')