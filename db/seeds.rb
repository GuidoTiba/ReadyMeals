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

@potatoes = Ingredient.create(name: "Potatoes")
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

@kosher_kosher_salt = Ingredient.create(name: "Kosher salt")
@fish_and_chips_kosher_salt = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")

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

@carrot_cake_kosher_salt = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
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

@cheesy_bowtie_pasta_kosher_salt = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
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
@cobb_salad_kosher_salt = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
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

@blue_cheese = Ingredient.create(name: "Blue cheese")
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
@cookies_kosher_salt = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")

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
@pancakes_kosher_salt = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
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
@orange_chicken_kosher_salt = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
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


puts "Creating beef pho"
@beef_pho = Recipe.create(name: "Beef Pho", instructions: "Toast star anise, cinnamon stick, and cloves, stirring, until fragrant and crackling slightly, about 2 minutes. Add 2 Tbsp. oil and work around to coat bottom of pot. Reduce heat to medium, add onions, cut sides down, and ginger, and cook, undisturbed, until deep brown in spots, 5–7 minutes. Pour in 1 cup water, scraping up any browned bits with a wooden spoon, then add beef bones, brisket, fish sauce, sugar, 2½ tsp. Diamond Crystal or 1¼ tsp. Morton kosher salt, and another 6 cups water (or just up to your max fill line). Lock lid and turn venting knob to sealing position. Cook on high pressure 1 hour (it will take about 20 minutes to come to pressure before the cook time begins). Naturally release pressure 30 minutes. While the broth is cooking, place noodles in a large bowl and pour in cold water to cover. Let soak 30 minutes. Drain noodles and rinse to remove excess starch.", details: "A modern classic")

#create ingredients
@beef_pho_cinnamon = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @cinnamon.id, ammount: 500, unit: "grams")
@beef_pho_garlic = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@beef_pho_vegetable_oil = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@beef_pho_onions = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @onions.id, ammount: 500, unit: "grams")
@beef_pho_ginger = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")
@beef_pho_meat = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @meat.id, ammount: 500, unit: "grams")
@beef_pho_sugar = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@beef_pho_kosher_salt = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
@beef_pho_black_pepper = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")

@rice_noodles = Ingredient.create(name: "Rice noodles")
@beef_pho_rice_noodles = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @rice_noodles.id, ammount: 500, unit: "grams")

@leaves = Ingredient.create(name: "Leaves")
@beef_pho_leaves = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @leaves.id, ammount: 20, unit: "grams")

@beef_pho_celiac = RecipeOption.create(recipe_id: @beef_pho.id, option_id: @celiac.id)
@beef_pho_dairy_intolerant = RecipeOption.create(recipe_id: @beef_pho.id, option_id: @dairy_intolerant.id)
@beef_pho_kosher = RecipeOption.create(recipe_id: @beef_pho.id, option_id: @kosher.id)
@beef_pho_halal = RecipeOption.create(recipe_id: @beef_pho.id, option_id: @halal.id)
@beef_pho_peanut_allergy = RecipeOption.create(recipe_id: @beef_pho.id, option_id: @peanut_allergy.id)
@beef_pho_shellfish_allergy = RecipeOption.create(recipe_id: @beef_pho.id, option_id: @shellfish_allergy.id)
@beef_pho_diabetic = RecipeOption.create(recipe_id: @beef_pho.id, option_id: @diabetic.id)

# 3 cinnamon stick
# 4 whole cloves
# 2 Tbsp. vegetable oil, plus more for noodles
# 2 medium onions, peeled, halved
# 2 piece ginger, scrubbed, sliced lengthwise ¼ thick
# 1 lb. beef brisket or chuck, cut into 2 pieces
# ½ oz. yellow rock sugar or 3 tsp. granulated sugar
# 2½ tsp. Diamond Crystal or 1¼ tsp. Morton kosher salt; plus more (optional)
# 10 oz. dried thin Banh Pho rice noodles
# Rinsed thinly sliced onion, thinly sliced scallions, chopped cilantro, Thai basil leaves, mint leaves, mung bean sprouts, sliced Thai or serrano chiles, lime wedges, Sriracha, and/or hoisin sauce (for serving; optional)
# Freshly ground black pepper


puts "Creating B cake"
@buckwheat_cake = Recipe.create(name: "Buckwheat cake", instructions: "Place a rack in middle of oven; preheat to 350°. Coat pan with nonstick spray. Separate yolks from eggs over a large bowl to catch egg whites. Place yolks in another small bowl; set egg whites aside. Combine chocolate and butter in a medium heatproof bowl and set over a medium saucepan of simmering water (do not let bowl touch water). Melt chocolate, stirring occasionally, until smooth. Remove from heat and whisk in cocoa powder, vanilla, salt, and ¼ cup (50 g) granulated sugar. Add egg yolks one at a time, whisking until smooth after each addition. Stir in sponge. Add remaining ¼ cup (50 g) granulated sugar to bowl with reserved egg whites. Using an electric mixer on medium-high speed, beat until soft peaks form, about 4 minutes. Fold half of egg whites into batter until smooth, then fold in remaining egg whites until just combined. Scrape batter into prepared pan and smooth surface. Bake cake, rotating pan halfway through, until a tester inserted into the center comes out clean, 40–45 minutes. Let cake cool in pan. Run a paring knife around edges of cake, then unmold and place on a plate. Dust with powdered sugar just before serving. Do ahead: Cake (without powdered sugar) can be made 1 day ahead. Store tightly wrapped at room temperature.", details: "Buckwheat flour!")

@buckwheat_cake_vegetable_oil = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@buckwheat_cake_eggs = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@buckwheat_cake_butter = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@buckwheat_cake_vanilla_extract = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @vanilla_extract.id, ammount: 500, unit: "grams")
@buckwheat_cake_kosher_salt = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
@buckwheat_cake_granulated_sugar = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @granulated_sugar.id, ammount: 500, unit: "grams")
@buckwheat_cake_powdered_sugar = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @powdered_sugar.id, ammount: 500, unit: "grams")

@chocolate_chips = Ingredient.create(name: "Chocolate chips")
@buckwheat_cake_chocolate_chips = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @chocolate_chips.id, ammount: 500, unit: "grams")

@cocoa_powder = Ingredient.create(name: "Cocoa powder")
@buckwheat_cake_cocoa_powder = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @cocoa_powder.id, ammount: 20, unit: "grams")

# Nonstick vegetable oil spray
# 4 large eggs
# ¾ cup (135 g) bittersweet chocolate chips
# ½ cup (1 stick) unsalted butter, cut into pieces
# ¼ cup (25 g) Dutch-process unsweetened cocoa powder, sifted
# 1 bsp. vanilla extract
# Pinch of kosher salt
# ½ cup (100 g) granulated sugar, divided
# 2 Tbsp. powdered sugar

@buckwheat_cake_vegetarian = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @vegetarian.id)
@buckwheat_cake_vegan = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @vegan.id)
@buckwheat_cake_pescetarian = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @pescetarian.id)
@buckwheat_cake_kosher = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @kosher.id)
@buckwheat_cake_halal = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @halal.id)
@buckwheat_cake_peanut_allergy = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @peanut_allergy.id)
@buckwheat_cake_shellfish_allergy = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @shellfish_allergy.id)


puts "Creating chicken rice"
@chicken_rice = Recipe.create(name: "Chicken rice", instructions: "Place rice in a medium bowl and pour in cold water to cover. Agitate rice with your hands until water is cloudy. Drain and repeat until water is almost clear (about 3 times). Pour in water to cover rice by 2; let soak 30–45 minutes. Heat oil in a heavy pot with a wide base (preferably 10) over medium-high. Add shallot and cook, stirring occasionally, until golden, about 3 minutes. Add garlic and cook, stirring until softened, about 1 minute. Add chicken, turmeric, cayenne, and 1½ tsp. salt. Cook, turning and moving around chicken thighs as needed, until chicken begins to turn opaque, about 2 minutes. Pour in ¾ cup water and bring to a simmer. Reduce heat to low, cover, and simmer, turning chicken once, until chicken is cooked through and very tender, about 20 minutes. Drain rice and add to pot with chicken, then add coconut milk and remaining 1 tsp. salt. Stir to incorporate and bring to a boil. Drape a kitchen towel over pot; cover with lid. Bring corners of towel up and over lid and secure with a rubber band. Reduce heat to lowest setting and cook, undisturbed, 15 minutes. Remove from heat and remove towel and lid. Arrange kale in an even layer over chicken and rice and cover with lid. Let sit until wilted, about 10 minutes. Divide chicken and rice among bowls. Top with chiles if using. Serve with lime wedges", details: "You can make the rice sticky!")

#create ingredients
@chicken_rice_vegetable_oil = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@chicken_rice_garlic = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@chicken_rice_chicken = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @chicken.id, ammount: 500, unit: "grams")
@chicken_rice_black_pepper = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@chicken_rice_kosher_salt = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")

@basmati_rice = Ingredient.create(name: "Basmati rice")
@chicken_rice_basmati_rice = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @basmati_rice.id, ammount: 500, unit: "grams")

@shallot = Ingredient.create(name: "Shallot")
@chicken_rice_shallot = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @shallot.id, ammount: 20, unit: "grams")

@turmeric = Ingredient.create(name: "Turmeric")
@chicken_rice_turmeric = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @turmeric.id, ammount: 20, unit: "grams")

@coconut_milk = Ingredient.create(name: "Coconut milk")
@chicken_rice_coconut_milk = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @coconut_milk.id, ammount: 20, unit: "grams")

@kale = Ingredient.create(name: "Kale")
@chicken_rice_kale = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @kale.id, ammount: 20, unit: "grams")

# 1½ cups basmati rice
# 2 Tbsp. grapeseed or vegetable oil
# 1 large shallot, finely chopped
# 2 cloves garlic, finely chopped
# 1½ lb. skinless, boneless chicken thighs (6–8)
# 1 tsp. ground turmeric
# ½ tsp. cayenne pepper
# # 2½ tsp. kosher salt, divided
# 1 13.5-oz. can unsweetened coconut milk
# ½ bunch Tuscan kale, ribs and stems removed, leaves thinly sliced crosswise into strips (about 2 cups)


# join recipe with dietary restriction
@chicken_rice_celiac = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @celiac.id)
@chicken_rice_dairy_intolerant = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @dairy_intolerant.id)
@chicken_rice_kosher = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @kosher.id)
@chicken_rice_halal = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @halal.id)
@chicken_rice_peanut_allergy = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @peanut_allergy.id)
@chicken_rice_shellfish_allergy = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @shellfish_allergy.id)
@chicken_rice_diabetic = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @diabetic.id)
@chicken_rice_sugar_free = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @sugar_free.id)


puts "Creating granola scones"
@granola_scones = Recipe.create(name: "Granola scones", instructions: "Place a rack in middle of oven; preheat to 350°. Pulse whole wheat flour, oats, cinnamon, baking powder, baking soda, salt, butter, ¼ cup plus 2 Tbsp. (47 g) all-purpose flour, and 2 Tbsp. raw sugar in a food processor until butter is no larger than pea-size, 5–7 pulses. Transfer to a large bowl; mix in orange zest, dates, raisins, flaxseed, almonds, coconut, currants, and pumpkin seeds. Toss by hand until well combined, then make a well in the center. Pour cream into well and toss vigorously with your hands (like a salad) until mixture comes together to form a dough. Transfer dough to a lightly floured surface and pat into a 6 diameter disk about 1 thick. Using a large chef’s knife, cut disk into 6 equal wedges. The dough will be crumbly and may fall apart as you cut it; don’t be afraid to compact it back together. Arrange scones on a parchment-lined baking sheet, spacing at least 2 apart. Lightly brush top of each scone with cream and sprinkle with raw sugar. Bake scones, rotating baking sheet front to back halfway through, until light golden, 25–30 minutes. Let scones cool on baking sheet before serving.", details: "A twist to the classic granola")

@granola_scones_flour = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@granola_scones_cinnamon = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @cinnamon.id, ammount: 500, unit: "grams")
@granola_scones_baking_powder = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @baking_powder.id, ammount: 500, unit: "grams")
@granola_scones_baking_soda = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @baking_soda.id, ammount: 500, unit: "grams")
@granola_scones_kosher_salt = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
@granola_scones_butter = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@granola_scones_sugar = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@granola_scones_oranges = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @oranges.id, ammount: 500, unit: "grams")

@oats = Ingredient.create(name: "Oats")
@granola_scones_oats = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @oats.id, ammount: 500, unit: "grams")

@dates = Ingredient.create(name: "Dates")
@granola_scones_dates = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @dates.id, ammount: 20, unit: "grams")

@golden_raisins = Ingredient.create(name: "Golden raisins")
@granola_scones_golden_raisins = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @golden_raisins.id, ammount: 20, unit: "grams")

@flaxseed = Ingredient.create(name: "Flaxseed")
@granola_scones_flaxseed = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @flaxseed.id, ammount: 20, unit: "grams")

@almonds = Ingredient.create(name: "Almonds")
@granola_scones_almonds = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @almonds.id, ammount: 20, unit: "grams")

@shredded_coconut = Ingredient.create(name: "Shredded Coconut")
@granola_scones_shredded_coconut = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @shredded_coconut.id, ammount: 20, unit: "grams")

@black_currants = Ingredient.create(name: "Black currants")
@granola_scones_black_currants = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @black_currants.id, ammount: 20, unit: "grams")

@heavy_cream = Ingredient.create(name: "Heavy cream")
@granola_scones_heavy_cream = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @heavy_cream.id, ammount: 20, unit: "grams")

# ¼ cup plus 2 Tbsp. (53 g) whole wheat flour
# ½ cup plus 1 Tbsp. (57 g) old-fashioned oats
# ½ tsp. ground cinnamon
# ½ tsp. baking powder
# ¼ tsp. baking soda
# ⅛ tsp. kosher salt
# 6 Tbsp. (¾ stick) chilled unsalted butter, cut into ½ pieces
# 2 Tbsp. raw sugar, plus more for sprinkling
# Zest from 1 orange
# 1 cup (145 g) chopped pitted Medjool dates (about 16)
# 1 cup (145 g) golden raisins
# ½ cup (80 g) flaxseed
# ½ cup (45 g) sliced almonds
# ⅓ cup (30 g) unsweetened shredded coconut
# 6 Tbsp. (55 g) dried black currants
# 5 Tbsp. (50 g) pumpkin seeds (pepitas)
# ⅓ cup heavy cream, plus more for brushing

@granola_scones_vegetarian = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @vegetarian.id)
@granola_scones_vegan = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @vegan.id)
@granola_scones_pescetarian = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @pescetarian.id)
@granola_scones_kosher = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @kosher.id)
@granola_scones_halal = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @halal.id)
@granola_scones_peanut_allergy = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @peanut_allergy.id)
@granola_scones_shellfish_allergy = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @shellfish_allergy.id)
@granola_scones_paleo = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @paleo.id)



puts "Creating grilled mushrooms"
@grilled_mushrooms = Recipe.create(name: "Grilled mushrooms", instructions: "Fill a large pot three quarters full with water, add reserved herb stems, and season heavily with salt. Bring water to a boil, then add carrots and cook until just tender, about 3 minutes. Using a slotted spoon, immediately transfer carrots to a large bowl of ice water and let cool. Place potatoes in same pot and return to a boil. Cook until tender (flesh should be easy to pierce with a fork), about 10 minutes. Using slotted spoon, transfer potatoes to bowl of ice water and let cool. Drain carrots and potatoes; place in a clean large bowl and add half of the radicchio. Place mushrooms in a medium bowl. Whisk Pumpkin Hot Sauce, oil, and chopped herbs in another medium bowl. Pour half of mixture over carrots and potatoes and the other half over mushrooms; toss each to coat. Season with salt and pepper. Prepare a grill for medium-high heat. (Alternatively, heat a large cast-iron skillet over medium-high.) Grill mushrooms, turning occasionally, until deep golden brown and crisp around the edges (or cook in batches, stirring often, if using a skillet), 12–14 minutes. Transfer mushrooms to a large shallow serving bowl. Grill carrots, potatoes, and radicchio, turning occasionally, until deep golden brown all over (or cook in batches, tossing often, if using a skillet), about 4 minutes. Transfer vegetables to bowl with mushrooms and toss to combine. To serve, drizzle generously with sesame sauce; top with Spiced Pecans and remaining radicchio. Squeeze juice from each lemon half over.", details: "A veggies favourite!")

@grilled_mushrooms_carrots = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @carrots.id, ammount: 500, unit: "grams")
@grilled_mushrooms_potatoes = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @potatoes.id, ammount: 500, unit: "grams")
@grilled_mushrooms_vegetable_oil = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@grilled_mushrooms_black_pepper = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@grilled_mushrooms_pecans = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @pecans.id, ammount: 500, unit: "grams")
@grilled_mushrooms_lemons = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @lemons.id, ammount: 500, unit: "grams")

@sesame_sauce = Ingredient.create(name: "Sesame sauce")
@grilled_mushrooms_sesame_sauce = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @sesame_sauce.id, ammount: 500, unit: "grams")

@mixed_herbs = Ingredient.create(name: "miexed herbs")
@grilled_mushrooms_mixed_herbs = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @mixed_herbs.id, ammount: 20, unit: "grams")

@mushrooms = Ingredient.create(name: "Mushrooms")
@grilled_mushrooms_mushrooms = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @mushrooms.id, ammount: 20, unit: "grams")

@pumpkin_sauce = Ingredient.create(name: "Pumpkin sauce")
@grilled_mushrooms_pumpkin_sauce = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @pumpkin_sauce.id, ammount: 20, unit: "grams")


# SESAME SAUCE
# 1 cup finely chopped mixed herbs (parsley, oregano, and/or mint), stems reserved for blanching vegetables
# Kosher salt
# 4 medium carrots (about 1 lb.), preferably rainbow, scrubbed, halved lengthwise, cut crosswise into thirds
# 4 lb. baby potatoes, halved
# 1 lb. lion’s mane, king trumpet, or oyster mushrooms, cut into 2 pieces
# ½ cup Pumpkin Hot Sauce
# ½ cup grapeseed or vegetable oil
# Freshly ground black pepper
# 1 cup Spiced Pecans
# 1 lemon, halved

@grilled_mushrooms_vegetarian = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @vegetarian.id)
@grilled_mushrooms_vegan = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @vegan.id)
@grilled_mushrooms_pescetarian = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @pescetarian.id)
@grilled_mushrooms_celiac = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @celiac.id)
@grilled_mushrooms_dairy_intolerant = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @dairy_intolerant.id)
@grilled_mushrooms_kosher = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @kosher.id)
@grilled_mushrooms_halal = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @halal.id)
@grilled_mushrooms_shellfish_allergy = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @shellfish_allergy.id)
@grilled_mushrooms_diabetic = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @diabetic.id)
@grilled_mushrooms_sugar_free = RecipeOption.create(recipe_id: @grilled_mushrooms.id, option_id: @sugar_free.id)


puts "Creating pumpkin soup"
@pumpkin_soup = Recipe.create(name: "Pumpkin soup", instructions: "Preheat oven to 425°. Place pumpkin on a large rimmed baking sheet and roast until tender (a paring knife should pierce flesh easily), about 1 hour. Let cool. Halve pumpkin through stem end; scoop out and discard seeds. Scoop 1½ cups flesh into a blender; reserve remaining pumpkin for another use. Add garlic, ginger, vinegar, lime juice, lemon juice, Allium Confit, salt, half of chiles, and ½ cup ice water and blend until very smooth and bright yellow. Taste and add remaining chile if you’d like a spicier sauce; season with more salt if needed. Do ahead: Hot sauce can be made 2 weeks ahead. Transfer to a jar; cover and chill.", details: "The saviour for the winter")

@pumpkin_soup_garlic = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@pumpkin_soup_ginger = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")

@pumpkin = Ingredient.create(name: "Pumpkin")
@pumpkin_soup_pumpkin = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @pumpkin.id, ammount: 500, unit: "grams")

@cider_vinegar = Ingredient.create(name: "Cider vinegar")
@pumpkin_soup_cider_vinegar = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @cider_vinegar.id, ammount: 20, unit: "grams")

@lime_juice = Ingredient.create(name: "Lime juice")
@pumpkin_soup_lime_juice = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @lime_juice.id, ammount: 20, unit: "grams")

@lemon_juice = Ingredient.create(name: "Lemon juice")
@pumpkin_soup_lemon_juice = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @lemon_juice.id, ammount: 20, unit: "grams")

# 1 2-lb. heirloom pumpkin or butternut squash
# 6 garlic cloves
# 4 oz. ginger, peeled, coarsely chopped
# ¼ cup apple cider vinegar
# ¼ cup fresh lime juice
# 2 Tbsp. fresh lemon juice
# 2 tsp. Diamond Crystal or 1 tsp. Morton kosher salt

# join recipe with dietary restriction
@pumpkin_soup_vegetarian = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @vegetarian.id)
@pumpkin_soup_vegan = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @vegan.id)
@pumpkin_soup_pescetarian = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @pescetarian.id)
@pumpkin_soup_celiac = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @celiac.id)
@pumpkin_soup_dairy_intolerant = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @dairy_intolerant.id)
@pumpkin_soup_kosher = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @kosher.id)
@pumpkin_soup_halal = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @halal.id)
@pumpkin_soup_peanut_allergy = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @peanut_allergy.id)
@pumpkin_soup_shellfish_allergy = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @shellfish_allergy.id)
@pumpkin_soup_diabetic = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @diabetic.id)
@pumpkin_soup_paleo = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @paleo.id)
@pumpkin_soup_sugar_free = RecipeOption.create(recipe_id: @pumpkin_soup.id, option_id: @sugar_free.id)


@tofu_bowl = Recipe.create(name: "Tofu bowl", instructions: "Cut tofu in half horizontally through the equator (like a hamburger bun), then cut into 1 cubes and pat dry again. Arrange in a single layer on a rimmed baking sheet or large plate and set aside. Cut 1 large head of broccoli (about 1 lb.) into small 1 florets. If your broccoli has a long stem, peel tough outer skin to remove the lighter fibrous layer, then slice stem ¼ thick. Finely chop 1 scallion and set aside for serving. To make the sauce, scrape skin from one 1 piece ginger with a spoon, then grate on a Microplane into a small bowl. Smash and peel 1 garlic clove and grate into bowl with ginger. Add ¼ cup tamari or soy sauce, 2 Tbsp. light or dark brown sugar or pure maple syrup, 2 Tbsp. tahini, 2 Tbsp. unseasoned rice vinegar, 1 Tbsp. toasted sesame oil, 1½ tsp. cornstarch, a pinch of kosher salt, and 3 Tbsp. water and whisk to combine. Set sauce aside. Sprinkle 1 tsp. Diamond Crystal or ½ tsp. Morton kosher salt over tofu and toss to coat. Scatter remaining ¼ cup cornstarch over tofu a tablespoonful at a time, tossing after each addition and gently pressing into the tofu pieces, until well coated on all sides. Heat 1 Tbsp. grapeseed oil or vegetable oil in a large nonstick or cast-iron skillet over medium-high. Add broccoli, season with ½ tsp. Diamond Crystal or ¼ tsp. Morton kosher salt and ¼ tsp. freshly ground black pepper, and cook, tossing occasionally, until just tender, about 5 minutes. Transfer broccoli to a plate. Wipe out skillet. Heat remaining ¼ cup grapeseed or vegetable oil in same skillet over medium-high. When oil is hot (it will start to shimmer), reduce heat to medium and add tofu in a single layer (work in batches if needed). Cook, turning every 3–4 minutes, until golden brown all over, 10–12 minutes total. Transfer to a clean kitchen towel or paper towels and let drain. Pour out any remaining oil in pan and wipe out. Return pan to medium heat. Whisk reserved sauce if it has separated, then pour into pan and cook until thickened and bubbling, about 20 seconds. Immediately remove pan from heat and add broccoli and tofu; toss to coat. Top tofu and broccoli with 1 Tbsp. toasted sesame seeds and reserved scallions. Serve with steamed white or brown rice.", details: "Even meat lovers will want to have a bite")

@tofu_bowl_ginger = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")
@tofu_bowl_garlic = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@tofu_bowl_soy_sauce = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @soy_sauce.id, ammount: 500, unit: "grams")
@tofu_bowl_sugar = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@tofu_bowl_sesame_oil = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @sesame_oil.id, ammount: 20, unit: "grams")
@tofu_bowl_vegetable_oil = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@tofu_bowl_black_pepper = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@tofu_bowl_rice = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @rice.id, ammount: 500, unit: "grams")

@tofu = Ingredient.create(name: "Tofu")
@tofu_bowl_tofu = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @tofu.id, ammount: 500, unit: "grams")

@broccoli = Ingredient.create(name: "Broccoli")
@tofu_bowl_broccoli = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @broccoli.id, ammount: 20, unit: "grams")

@scallion = Ingredient.create(name: "Scallion")
@tofu_bowl_scallion = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @scallion.id, ammount: 20, unit: "grams")

@tahini = Ingredient.create(name: "Tahini")
@tofu_bowl_tahini = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @tahini.id, ammount: 20, unit: "grams")

@rice_vinegar = Ingredient.create(name: "Rice vinegar")
@tofu_bowl_rice_vinegar = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @rice_vinegar.id, ammount: 20, unit: "grams")

@sesamae_seeds = Ingredient.create(name: "Sesamae Seeds")
@tofu_bowl_sesamae_seeds = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @sesamae_seeds.id, ammount: 500, unit: "grams")

# 1 14-oz. block extra-firm tofu
# 1 large head of broccoli (about 1 lb.)
# 1 scallion
# 1 1 piece ginger
# 1 garlic clove
# ¼ cup tamari or soy sauce
# 2 Tbsp. light or dark brown sugar or pure maple syrup
# 2 Tbsp. tahini
# 2 Tbsp. unseasoned rice vinegar
# 1 Tbsp. toasted sesame oil
# 1½ tsp. Diamond Crystal or ¾ tsp. Morton kosher salt, divided, plus more
# 1 Tbsp. plus ¼ cup grapeseed oil or vegetable oil, divided
# ¼ tsp. freshly ground black pepper
# 1 Tbsp. toasted sesame seeds
# Steamed white or brown rice (for serving)

# join recipe with dietary restriction
@tofu_bowl_vegetarian = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @vegetarian.id)
@tofu_bowl_vegan = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @vegan.id)
@tofu_bowl_pescetarian = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @pescetarian.id)
@tofu_bowl_celiac = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @celiac.id)
@tofu_bowl_dairy_intolerant = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @dairy_intolerant.id)
@tofu_bowl_kosher = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @kosher.id)
@tofu_bowl_halal = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @halal.id)
@tofu_bowl_peanut_allergy = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @peanut_allergy.id)
@tofu_bowl_shellfish_allergy = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @shellfish_allergy.id)
@tofu_bowl_diabetic = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @diabetic.id)
@tofu_bowl_paleo = RecipeOption.create(recipe_id: @tofu_bowl.id, option_id: @paleo.id)


puts "Creating tofu broccoli"
@tofu_broccoli = Recipe.create(name: "Tofu broccoli", instructions: "Squeeze tofu over a bowl to expel as much water as possible (don’t worry if it starts to break apart). Grate on the large holes of a box grater; set aside. Heat oil and garlic in a large nonstick skillet over medium. Cook, turning once, until garlic is golden, about 3 minutes. Add 1 Tbsp. sesame seeds and 1 tsp. Aleppo-style pepper and cook, stirring, until fragrant, about 30 seconds. Add tofu, increase heat to medium-high, and cook, tossing occasionally and breaking tofu apart with a wooden spoon, until it begins to crisp in spots, about 5 minutes. Stir in scallions, soy sauce, mirin, and butter and cook until liquid is almost completely evaporated, about 3 minutes. Divide rice among shallow bowls and spoon tofu mixture over; top with more sesame seeds and Aleppo-style pepper.", details: "The kids will not want to miss it")

@tofu_broccoli_tofu = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @tofu.id, ammount: 500, unit: "grams")
@tofu_broccoli_vegetable_oil = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@tofu_broccoli_garlic = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@tofu_broccoli_sesamae_seeds = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @sesamae_seeds.id, ammount: 500, unit: "grams")
@tofu_broccoli_soy_sauce = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @soy_sauce.id, ammount: 500, unit: "grams")
@tofu_broccoli_butter = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@tofu_broccoli_rice = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @rice.id, ammount: 500, unit: "grams")

@maple_syrup = Ingredient.create(name: "Maple syrup")
@tofu_broccoli_maple_syrup = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @maple_syrup.id, ammount: 500, unit: "grams")

@scallions = Ingredient.create(name: "Scallions")
@tofu_broccoli_scallions = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @scallions.id, ammount: 500, unit: "grams")

# 1 14-oz. block firm or extra-firm tofu, drained
# 2 Tbsp. vegetable oil
# 2 garlic cloves, smashed
# 1 Tbsp. toasted sesame seeds, plus more for serving
# 3 scallions, chopped into 1 pieces
# 3 Tbsp. soy sauce
# 2 Tbsp. mirin (sweet Japanese rice wine) or 1 Tbsp. pure maple syrup
# 2 Tbsp. unsalted butter
# Cooked white rice (for serving)

@tofu_broccoli_vegetarian = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @vegetarian.id)
@tofu_broccoli_vegan = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @vegan.id)
@tofu_broccoli_pescetarian = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @pescetarian.id)
@tofu_broccoli_dairy_intolerant = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @dairy_intolerant.id)
@tofu_broccoli_kosher = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @kosher.id)
@tofu_broccoli_halal = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @halal.id)
@tofu_broccoli_peanut_allergy = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @peanut_allergy.id)
@tofu_broccoli_diabetic = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @diabetic.id)
@tofu_broccoli_paleo = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @paleo.id)


puts "Creating tuna salad"
@tuna_salad = Recipe.create(name: "Tuna salad", instructions: "Heat 3 Tbsp. oil in a large skillet over medium-high. Cook chickpeas, tossing occasionally, until crisp and golden brown, 6–8 minutes. Season with salt and let cool. Whisk shallot, mayonnaise, mustard, and vinegar in a large bowl; season dressing with salt and pepper. Mix in tuna, breaking up with a fork. Add chickpeas, endive, parsley, and pickled chiles. Finely grate zest from lemon over, then squeeze in juice. Pour in remaining 2 Tbsp. oil and toss to combine. Taste and season with more salt if needed.", details: "Salad with a twist")

@tuna_salad_shallot = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @shallot.id, ammount: 500, unit: "grams")
@tuna_salad_dijon_mustard = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @dijon_mustard.id, ammount: 500, unit: "grams")
@tuna_salad_black_pepper = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@tuna_salad_olive_oil = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@tuna_salad_tuna = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @tuna.id, ammount: 500, unit: "grams")
@tuna_salad_lemons = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @lemons.id, ammount: 500, unit: "grams")

@chickpeas = Ingredient.create(name: "Chickpeas")
@tuna_salad_chickpeas = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @chickpeas.id, ammount: 20, unit: "grams")

@mayonnaise = Ingredient.create(name: "Mayonnaise")
@tuna_salad_mayonnaise = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @mayonnaise.id, ammount: 20, unit: "grams")

@endives = Ingredient.create(name: "Endives")
@tuna_salad_endives = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @endives.id, ammount: 20, unit: "grams")

# 5 Tbsp. extra-virgin olive oil, divided
# 1 15-oz. can chickpeas, rinsed, patted dry
# Kosher salt
# 1 small @shallot, finely chopped
# 2 Tbsp. mayonnaise
# 1 Tbsp. Dijon mustard
# Freshly ground black pepper
# 1 5-oz. can water-packed @tuna, drained
# 3 red or other endive, halved crosswise, leaves separated
# ½ lemon

@tuna_salad_pescetarian = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @pescetarian.id)
@tuna_salad_celiac = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @celiac.id)
@tuna_salad_dairy_intolerant = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @dairy_intolerant.id)
@tuna_salad_kosher = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @kosher.id)
@tuna_salad_halal = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @halal.id)
@tuna_salad_peanut_allergy = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @peanut_allergy.id)
@tuna_salad_shellfish_allergy = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @shellfish_allergy.id)
@tuna_salad_diabetic = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @diabetic.id)
@tuna_salad_sugar_free = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @sugar_free.id)

puts "Creating veggie nachos"
@veggie_nachos = Recipe.create(name: "Veggie nachos", instructions: "Toss radishes and vinegar in a small bowl to combine; set aside. Preheat oven to 400°. Heat 2 Tbsp. oil in a large skillet over medium-high. Cook garlic, tossing often, until golden around edges, about 2 minutes. Add cauliflower; cook, undisturbed, until golden brown underneath, about 3 minutes. Toss, then continue to cook, tossing occasionally, until browned all over and crisp-tender, about 3 minutes more. Add coriander, cumin, paprika, and remaining 1 Tbsp. oil. Cook, tossing, until very fragrant, about 1 minute; season with salt. Spread half of chips on a small rimmed baking sheet. Arrange half of cauliflower on top. Dollop half of beans over, then sprinkle with half of cheese. Repeat layers one more time. Bake until cheese is melted, 10–12 minutes. Top with drained radishes, avocado, cilantro, and yogurt.", details: "A house favourite!")

@veggie_nachos_onions = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @onions.id, ammount: 500, unit: "grams")
@veggie_nachos_olive_oil = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@veggie_nachos_garlic = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@veggie_nachos_paprika = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @paprika.id, ammount: 500, unit: "grams")
@veggie_nachos_cheese = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @cheese.id, ammount: 500, unit: "grams")
@veggie_nachos_avocado = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @avocado.id, ammount: 500, unit: "grams")

@rice_vinegar = Ingredient.create(name: "Rice vinegar")
@veggie_nachos_rice_vinegar = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @rice_vinegar.id, ammount: 500, unit: "grams")

@cauliflower = Ingredient.create(name: "Cauliflower")
@veggie_nachos_cauliflower = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @cauliflower.id, ammount: 20, unit: "grams")

@cumin = Ingredient.create(name: "Cumin")
@veggie_nachos_cumin = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @cumin.id, ammount: 20, unit: "grams")

@tortilla_chips = Ingredient.create(name: "Tortilla chips")
@veggie_nachos_tortilla_chips = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @tortilla_chips.id, ammount: 20, unit: "grams")

@beans = Ingredient.create(name: "Beans")
@veggie_nachos_beans = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @beans.id, ammount: 20, unit: "grams")

@tortilla_chips = Ingredient.create(name: "Tortilla chips")
@veggie_nachos_tortilla_chips = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @tortilla_chips.id, ammount: 20, unit: "grams")


# 1 cup thinly sliced radishes, red onion, cabbage, carrots, or other firm vegetable
# ½ cup seasoned rice vinegar
# 3 Tbsp. extra-virgin olive oil, divided
# 2 garlic cloves, smashed
# ½ small head of cauliflower, halved through stem end, thinly sliced
# 1 tsp. ground cumin
# 1 tsp. paprika
# Kosher salt
# 8 oz. tortilla chips
# 1 cup refried beans (such as Amy’s)
# 8 oz. sharp cheddar, coarsely grated
# Chopped @avocado, cilantro leaves with tender stems, and plain yogurt (for serving)

@veggie_nachos_vegetarian = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @vegetarian.id)
@veggie_nachos_vegan = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @vegan.id)
@veggie_nachos_pescetarian = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @pescetarian.id)
@veggie_nachos_celiac = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @celiac.id)
@veggie_nachos_kosher = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @kosher.id)
@veggie_nachos_halal = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @halal.id)
@veggie_nachos_peanut_allergy = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @peanut_allergy.id)
@veggie_nachos_shellfish_allergy = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @shellfish_allergy.id)
@veggie_nachos_diabetic = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @diabetic.id)
@veggie_nachos_sugar_free = RecipeOption.create(recipe_id: @veggie_nachos.id, option_id: @sugar_free.id)





@ba_pizza = Recipe.create(name: "BA pizza", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @ba_pizza_replaceingredient = RecipeIngredient.create(recipe_id: @ba_pizza.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @ba_pizza_replaceingredient = RecipeIngredient.create(recipe_id: @ba_pizza.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @ba_pizza_replaceingredient = RecipeIngredient.create(recipe_id: @ba_pizza.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @ba_pizza_replaceingredient = RecipeIngredient.create(recipe_id: @ba_pizza.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@ba_pizza_vegetarian = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @vegetarian.id)
@ba_pizza_vegan = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @vegan.id)
@ba_pizza_pescetarian = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @pescetarian.id)
@ba_pizza_kosher = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @kosher.id)
@ba_pizza_halal = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @halal.id)
@ba_pizza_peanut_allergy = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @peanut_allergy.id)
@ba_pizza_shellfish_allergy = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @shellfish_allergy.id)
@ba_pizza_paleo = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @paleo.id)
@ba_pizza_sugar_free = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @sugar_free.id)


@chocolate_ganache = Recipe.create(name: "Chocolate ganache", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @chocolate_ganache_replaceingredient = RecipeIngredient.create(recipe_id: @chocolate_ganache.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @chocolate_ganache_replaceingredient = RecipeIngredient.create(recipe_id: @chocolate_ganache.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @chocolate_ganache_replaceingredient = RecipeIngredient.create(recipe_id: @chocolate_ganache.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @chocolate_ganache_replaceingredient = RecipeIngredient.create(recipe_id: @chocolate_ganache.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@chocolate_ganache_vegetarian = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @vegetarian.id)
@chocolate_ganache_vegan = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @vegan.id)
@chocolate_ganache_pescetarian = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @pescetarian.id)
@chocolate_ganache_kosher = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @kosher.id)
@chocolate_ganache_halal = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @halal.id)
@chocolate_ganache_peanut_allergy = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @peanut_allergy.id)
@chocolate_ganache_shellfish_allergy = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @shellfish_allergy.id)


@digestives = Recipe.create(name: "Digestives", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @digestives_replaceingredient = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @digestives_replaceingredient = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @digestives_replaceingredient = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @digestives_replaceingredient = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@digestives_vegetarian = RecipeOption.create(recipe_id: @digestives.id, option_id: @vegetarian.id)
@digestives_vegan = RecipeOption.create(recipe_id: @digestives.id, option_id: @vegan.id)
@digestives_pescetarian = RecipeOption.create(recipe_id: @digestives.id, option_id: @pescetarian.id)
@digestives_kosher = RecipeOption.create(recipe_id: @digestives.id, option_id: @kosher.id)
@digestives_halal = RecipeOption.create(recipe_id: @digestives.id, option_id: @halal.id)
@digestives_peanut_allergy = RecipeOption.create(recipe_id: @digestives.id, option_id: @peanut_allergy.id)
@digestives_shellfish_allergy = RecipeOption.create(recipe_id: @digestives.id, option_id: @shellfish_allergy.id)


@lasagna = Recipe.create(name: "Lasagna", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @digestives_replaceingredient = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @digestives_replaceingredient = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @digestives_replaceingredient = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @digestives_replaceingredient = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@digestives_vegetarian = RecipeOption.create(recipe_id: @digestives.id, option_id: @vegetarian.id)
@digestives_vegan = RecipeOption.create(recipe_id: @digestives.id, option_id: @vegan.id)
@digestives_pescetarian = RecipeOption.create(recipe_id: @digestives.id, option_id: @pescetarian.id)
@digestives_kosher = RecipeOption.create(recipe_id: @digestives.id, option_id: @kosher.id)
@digestives_halal = RecipeOption.create(recipe_id: @digestives.id, option_id: @halal.id)
@digestives_peanut_allergy = RecipeOption.create(recipe_id: @digestives.id, option_id: @peanut_allergy.id)
@digestives_shellfish_allergy = RecipeOption.create(recipe_id: @digestives.id, option_id: @shellfish_allergy.id)
@digestives_sugar_free = RecipeOption.create(recipe_id: @digestives.id, option_id: @sugar_free.id)


@molten_caramel_cake = Recipe.create(name: "Molten caramel cake", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @molten_caramel_cake_replaceingredient = RecipeIngredient.create(recipe_id: @molten_caramel_cake.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @molten_caramel_cake_replaceingredient = RecipeIngredient.create(recipe_id: @molten_caramel_cake.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @molten_caramel_cake_replaceingredient = RecipeIngredient.create(recipe_id: @molten_caramel_cake.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @molten_caramel_cake_replaceingredient = RecipeIngredient.create(recipe_id: @molten_caramel_cake.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@molten_caramel_cake_vegetarian = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @vegetarian.id)
@molten_caramel_cake_vegan = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @vegan.id)
@molten_caramel_cake_pescetarian = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @pescetarian.id)
@molten_caramel_cake_kosher = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @kosher.id)
@molten_caramel_cake_halal = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @halal.id)
@molten_caramel_cake_peanut_allergy = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @peanut_allergy.id)
@molten_caramel_cake_shellfish_allergy = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @shellfish_allergy.id)


@onigiri = Recipe.create(name: "Onigiri", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @onigiri_replaceingredient = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @onigiri_replaceingredient = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @onigiri_replaceingredient = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @onigiri_replaceingredient = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@onigiri_pescetarian = RecipeOption.create(recipe_id: @onigiri.id, option_id: @pescetarian.id)
@onigiri_celiac = RecipeOption.create(recipe_id: @onigiri.id, option_id: @celiac.id)
@onigiri_dairy_intolerant = RecipeOption.create(recipe_id: @onigiri.id, option_id: @dairy_intolerant.id)
@onigiri_kosher = RecipeOption.create(recipe_id: @onigiri.id, option_id: @kosher.id)
@onigiri_halal = RecipeOption.create(recipe_id: @onigiri.id, option_id: @halal.id)
@onigiri_peanut_allergy = RecipeOption.create(recipe_id: @onigiri.id, option_id: @peanut_allergy.id)
@onigiri_shellfish_allergy = RecipeOption.create(recipe_id: @onigiri.id, option_id: @shellfish_allergy.id)
@onigiri_diabetic = RecipeOption.create(recipe_id: @onigiri.id, option_id: @diabetic.id)
@onigiri_sugar_free = RecipeOption.create(recipe_id: @onigiri.id, option_id: @sugar_free.id)


@pepperoni_pizza = Recipe.create(name: "Pepperoni pizza", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @pepperoni_pizza_replaceingredient = RecipeIngredient.create(recipe_id: @pepperoni_pizza.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @pepperoni_pizza_replaceingredient = RecipeIngredient.create(recipe_id: @pepperoni_pizza.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @pepperoni_pizza_replaceingredient = RecipeIngredient.create(recipe_id: @pepperoni_pizza.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @pepperoni_pizza_replaceingredient = RecipeIngredient.create(recipe_id: @pepperoni_pizza.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@pepperoni_pizza_kosher = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @kosher.id)
@pepperoni_pizza_halal = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @halal.id)
@pepperoni_pizza_peanut_allergy = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @peanut_allergy.id)
@pepperoni_pizza_shellfish_allergy = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @shellfish_allergy.id)
@pepperoni_pizza_diabetic = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @diabetic.id)
@pepperoni_pizza_sugar_free = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @sugar_free.id)


@pie_crust = Recipe.create(name: "Pie crust", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @pie_crust_replaceingredient = RecipeIngredient.create(recipe_id: @pie_crust.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @pie_crust_replaceingredient = RecipeIngredient.create(recipe_id: @pie_crust.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @pie_crust_replaceingredient = RecipeIngredient.create(recipe_id: @pie_crust.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @pie_crust_replaceingredient = RecipeIngredient.create(recipe_id: @pie_crust.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@pie_crust_vegetarian = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @vegetarian.id)
@pie_crust_vegan = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @vegan.id)
@pie_crust_pescetarian = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @pescetarian.id)
@pie_crust_celiac = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @celiac.id)
@pie_crust_dairy_intolerant = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @dairy_intolerant.id)
@pie_crust_kosher = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @kosher.id)
@pie_crust_halal = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @halal.id)
@pie_crust_peanut_allergy = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @peanut_allergy.id)
@pie_crust_shellfish_allergy = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @shellfish_allergy.id)
@pie_crust_diabetic = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @diabetic.id)
@pie_crust_paleo = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @paleo.id)
@pie_crust_sugar_free = RecipeOption.create(recipe_id: @pie_crust.id, option_id: @sugar_free.id)


@pork_roast = Recipe.create(name: "Pork roast", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @pork_roast_replaceingredient = RecipeIngredient.create(recipe_id: @pork_roast.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @pork_roast_replaceingredient = RecipeIngredient.create(recipe_id: @pork_roast.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @pork_roast_replaceingredient = RecipeIngredient.create(recipe_id: @pork_roast.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @pork_roast_replaceingredient = RecipeIngredient.create(recipe_id: @pork_roast.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@pork_roast_celiac = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @celiac.id)
@pork_roast_dairy_intolerant = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @dairy_intolerant.id)
@pork_roast_kosher = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @kosher.id)
@pork_roast_halal = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @halal.id)
@pork_roast_peanut_allergy = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @peanut_allergy.id)
@pork_roast_shellfish_allergy = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @shellfish_allergy.id)
@pork_roast_diabetic = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @diabetic.id)
@pork_roast_paleo = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @paleo.id)
@pork_roast_sugar_free = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @sugar_free.id)


@salted_caramel_tart = Recipe.create(name: "Salted caramel tart", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @salted_caramel_tart_replaceingredient = RecipeIngredient.create(recipe_id: @salted_caramel_tart.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @salted_caramel_tart_replaceingredient = RecipeIngredient.create(recipe_id: @salted_caramel_tart.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @salted_caramel_tart_replaceingredient = RecipeIngredient.create(recipe_id: @salted_caramel_tart.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @salted_caramel_tart_replaceingredient = RecipeIngredient.create(recipe_id: @salted_caramel_tart.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# # join recipe with dietary restriction
# @salted_caramel_tart_vegetarian = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @vegetarian.id)
# @salted_caramel_tart_vegan = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @vegan.id)
# @salted_caramel_tart_pescetarian = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @pescetarian.id)
# @salted_caramel_tart_celiac = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @celiac.id)
# @salted_caramel_tart_dairy_intolerant = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @dairy_intolerant.id)
# @salted_caramel_tart_kosher = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @kosher.id)
# @salted_caramel_tart_halal = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @halal.id)
# @salted_caramel_tart_peanut_allergy = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @peanut_allergy.id)
# @salted_caramel_tart_shellfish_allergy = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @shellfish_allergy.id)
# @salted_caramel_tart_diabetic = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @diabetic.id)
# @salted_caramel_tart_paleo = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @paleo.id)
# @salted_caramel_tart_sugar_free = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @sugar_free.id)


@sushi_salmon = Recipe.create(name: "Sushi salmon", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @sushi_salmon_replaceingredient = RecipeIngredient.create(recipe_id: @sushi_salmon.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @sushi_salmon_replaceingredient = RecipeIngredient.create(recipe_id: @sushi_salmon.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @sushi_salmon_replaceingredient = RecipeIngredient.create(recipe_id: @sushi_salmon.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @sushi_salmon_replaceingredient = RecipeIngredient.create(recipe_id: @sushi_salmon.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@sushi_salmon_pescetarian = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @pescetarian.id)
@sushi_salmon_celiac = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @celiac.id)
@sushi_salmon_dairy_intolerant = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @dairy_intolerant.id)
@sushi_salmon_kosher = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @kosher.id)
@sushi_salmon_halal = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @halal.id)
@sushi_salmon_peanut_allergy = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @peanut_allergy.id)
@sushi_salmon_diabetic = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @diabetic.id)
@sushi_salmon_paleo = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @paleo.id)
@sushi_salmon_sugar_free = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @sugar_free.id)


@tomato_pie = Recipe.create(name: "Tomato pie", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @tomato_pie_replaceingredient = RecipeIngredient.create(recipe_id: @tomato_pie.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @tomato_pie_replaceingredient = RecipeIngredient.create(recipe_id: @tomato_pie.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @tomato_pie_replaceingredient = RecipeIngredient.create(recipe_id: @tomato_pie.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @tomato_pie_replaceingredient = RecipeIngredient.create(recipe_id: @tomato_pie.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@tomato_pie_vegetarian = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @vegetarian.id)
@tomato_pie_vegan = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @vegan.id)
@tomato_pie_pescetarian = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @pescetarian.id)
@tomato_pie_dairy_intolerant = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @dairy_intolerant.id)
@tomato_pie_kosher = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @kosher.id)
@tomato_pie_halal = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @halal.id)
@tomato_pie_peanut_allergy = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @peanut_allergy.id)
@tomato_pie_shellfish_allergy = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @shellfish_allergy.id)
@tomato_pie_diabetic = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @diabetic.id)
@tomato_pie_sugar_free = RecipeOption.create(recipe_id: @tomato_pie.id, option_id: @sugar_free.id)


@tuna_rolls = Recipe.create(name: "Tuna rolls", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @tuna_rolls_replaceingredient = RecipeIngredient.create(recipe_id: @tuna_rolls.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @tuna_rolls_replaceingredient = RecipeIngredient.create(recipe_id: @tuna_rolls.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @tuna_rolls_replaceingredient = RecipeIngredient.create(recipe_id: @tuna_rolls.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @tuna_rolls_replaceingredient = RecipeIngredient.create(recipe_id: @tuna_rolls.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@tuna_rolls_pescetarian = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @pescetarian.id)
@tuna_rolls_celiac = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @celiac.id)
@tuna_rolls_dairy_intolerant = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @dairy_intolerant.id)
@tuna_rolls_kosher = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @kosher.id)
@tuna_rolls_halal = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @halal.id)
@tuna_rolls_peanut_allergy = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @peanut_allergy.id)
@tuna_rolls_diabetic = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @diabetic.id)
@tuna_rolls_sugar_free = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @sugar_free.id)


@biscotti = Recipe.create(name: "Biscotti", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @biscotti_replaceingredient = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @biscotti_replaceingredient = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @biscotti_replaceingredient = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @biscotti_replaceingredient = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @biscotti_replaceingredient = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@biscotti_vegetarian = RecipeOption.create(recipe_id: @biscotti.id, option_id: @vegetarian.id)
@biscotti_vegan = RecipeOption.create(recipe_id: @biscotti.id, option_id: @vegan.id)
@biscotti_pescetarian = RecipeOption.create(recipe_id: @biscotti.id, option_id: @pescetarian.id)
@biscotti_kosher = RecipeOption.create(recipe_id: @biscotti.id, option_id: @kosher.id)
@biscotti_halal = RecipeOption.create(recipe_id: @biscotti.id, option_id: @halal.id)
@biscotti_shellfish_allergy = RecipeOption.create(recipe_id: @biscotti.id, option_id: @shellfish_allergy.id)


@chicken_adobo = Recipe.create(name: "Chicken adobo", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @chicken_adobo_replaceingredient = RecipeIngredient.create(recipe_id: @chicken_adobo.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @chicken_adobo_replaceingredient = RecipeIngredient.create(recipe_id: @chicken_adobo.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @chicken_adobo_replaceingredient = RecipeIngredient.create(recipe_id: @chicken_adobo.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @chicken_adobo_replaceingredient = RecipeIngredient.create(recipe_id: @chicken_adobo.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @chicken_adobo_replaceingredient = RecipeIngredient.create(recipe_id: @chicken_adobo.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@chicken_adobo_celiac = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @celiac.id)
@chicken_adobo_dairy_intolerant = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @dairy_intolerant.id)
@chicken_adobo_kosher = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @kosher.id)
@chicken_adobo_halal = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @halal.id)
@chicken_adobo_peanut_allergy = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @peanut_allergy.id)
@chicken_adobo_shellfish_allergy = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @shellfish_allergy.id)
@chicken_adobo_diabetic = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @diabetic.id)
@chicken_adobo_paleo = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @paleo.id)
@chicken_adobo_sugar_free = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @sugar_free.id)

@huevos_rancheros = Recipe.create(name: "Huevos rancheros", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @huevos_rancheros_replaceingredient = RecipeIngredient.create(recipe_id: @huevos_rancheros.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @huevos_rancheros_replaceingredient = RecipeIngredient.create(recipe_id: @huevos_rancheros.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @huevos_rancheros_replaceingredient = RecipeIngredient.create(recipe_id: @huevos_rancheros.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @huevos_rancheros_replaceingredient = RecipeIngredient.create(recipe_id: @huevos_rancheros.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @huevos_rancheros_replaceingredient = RecipeIngredient.create(recipe_id: @huevos_rancheros.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@huevos_rancheros_vegetarian = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @vegetarian.id)
@huevos_rancheros_pescetarian = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @pescetarian.id)
@huevos_rancheros_celiac = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @celiac.id)
@huevos_rancheros_dairy_intolerant = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @dairy_intolerant.id)
@huevos_rancheros_kosher = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @kosher.id)
@huevos_rancheros_halal = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @halal.id)
@huevos_rancheros_peanut_allergy = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @peanut_allergy.id)
@huevos_rancheros_shellfish_allergy = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @shellfish_allergy.id)
@huevos_rancheros_diabetic = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @diabetic.id)
@huevos_rancheros_paleo = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @paleo.id)
@huevos_rancheros_sugar_free = RecipeOption.create(recipe_id: @huevos_rancheros.id, option_id: @sugar_free.id)

@potato_gratin = Recipe.create(name: "Potato gratin", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @potato_gratin_replaceingredient = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @potato_gratin_replaceingredient = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @potato_gratin_replaceingredient = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @potato_gratin_replaceingredient = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @potato_gratin_replaceingredient = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@potato_gratin_vegetarian = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @vegetarian.id)
@potato_gratin_vegan = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @vegan.id)
@potato_gratin_pescetarian = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @pescetarian.id)
@potato_gratin_celiac = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @celiac.id)
@potato_gratin_dairy_intolerant = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @dairy_intolerant.id)
@potato_gratin_kosher = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @kosher.id)
@potato_gratin_halal = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @halal.id)
@potato_gratin_peanut_allergy = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @peanut_allergy.id)
@potato_gratin_shellfish_allergy = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @shellfish_allergy.id)
@potato_gratin_diabetic = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @diabetic.id)
@potato_gratin_paleo = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @paleo.id)
@potato_gratin_sugar_free = RecipeOption.create(recipe_id: @potato_gratin.id, option_id: @sugar_free.id)

@roasted_beets = Recipe.create(name: "Roasted beets", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @roasted_beets_replaceingredient = RecipeIngredient.create(recipe_id: @roasted_beets.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @roasted_beets_replaceingredient = RecipeIngredient.create(recipe_id: @roasted_beets.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @roasted_beets_replaceingredient = RecipeIngredient.create(recipe_id: @roasted_beets.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @roasted_beets_replaceingredient = RecipeIngredient.create(recipe_id: @roasted_beets.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @roasted_beets_replaceingredient = RecipeIngredient.create(recipe_id: @roasted_beets.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@roasted_beets_vegetarian = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @vegetarian.id)
@roasted_beets_vegan = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @vegan.id)
@roasted_beets_pescetarian = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @pescetarian.id)
@roasted_beets_celiac = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @celiac.id)
@roasted_beets_dairy_intolerant = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @dairy_intolerant.id)
@roasted_beets_kosher = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @kosher.id)
@roasted_beets_halal = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @halal.id)
@roasted_beets_peanut_allergy = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @peanut_allergy.id)
@roasted_beets_shellfish_allergy = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @shellfish_allergy.id)
@roasted_beets_diabetic = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @diabetic.id)
@roasted_beets_paleo = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @paleo.id)
@roasted_beets_sugar_free = RecipeOption.create(recipe_id: @roasted_beets.id, option_id: @sugar_free.id)

@shrimp_curry = Recipe.create(name: "Shrimp curry", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @shrimp_curry_replaceingredient = RecipeIngredient.create(recipe_id: @shrimp_curry.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @shrimp_curry_replaceingredient = RecipeIngredient.create(recipe_id: @shrimp_curry.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @shrimp_curry_replaceingredient = RecipeIngredient.create(recipe_id: @shrimp_curry.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @shrimp_curry_replaceingredient = RecipeIngredient.create(recipe_id: @shrimp_curry.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @shrimp_curry_replaceingredient = RecipeIngredient.create(recipe_id: @shrimp_curry.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@shrimp_curry_pescetarian = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @pescetarian.id)
@shrimp_curry_celiac = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @celiac.id)
@shrimp_curry_dairy_intolerant = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @dairy_intolerant.id)
@shrimp_curry_kosher = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @kosher.id)
@shrimp_curry_halal = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @halal.id)
@shrimp_curry_peanut_allergy = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @peanut_allergy.id)
@shrimp_curry_diabetic = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @diabetic.id)
@shrimp_curry_sugar_free = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @sugar_free.id)

@sweet_potatoes = Recipe.create(name: "Sweet potatoes", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @sweet_potatoes_replaceingredient = RecipeIngredient.create(recipe_id: @sweet_potatoes.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @sweet_potatoes_replaceingredient = RecipeIngredient.create(recipe_id: @sweet_potatoes.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @sweet_potatoes_replaceingredient = RecipeIngredient.create(recipe_id: @sweet_potatoes.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @sweet_potatoes_replaceingredient = RecipeIngredient.create(recipe_id: @sweet_potatoes.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @sweet_potatoes_replaceingredient = RecipeIngredient.create(recipe_id: @sweet_potatoes.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@sweet_potatoes_vegetarian = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @vegetarian.id)
@sweet_potatoes_vegan = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @vegan.id)
@sweet_potatoes_pescetarian = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @pescetarian.id)
@sweet_potatoes_celiac = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @celiac.id)
@sweet_potatoes_dairy_intolerant = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @dairy_intolerant.id)
@sweet_potatoes_kosher = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @kosher.id)
@sweet_potatoes_halal = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @halal.id)
@sweet_potatoes_peanut_allergy = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @peanut_allergy.id)
@sweet_potatoes_shellfish_allergy = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @shellfish_allergy.id)
@sweet_potatoes_diabetic = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @diabetic.id)
@sweet_potatoes_paleo = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @paleo.id)
@sweet_potatoes_sugar_free = RecipeOption.create(recipe_id: @sweet_potatoes.id, option_id: @sugar_free.id)

@wings = Recipe.create(name: "Wings", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# #create ingredients
# @wings_replaceingredient = RecipeIngredient.create(recipe_id: @wings.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @wings_replaceingredient = RecipeIngredient.create(recipe_id: @wings.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
# @wings_replaceingredient = RecipeIngredient.create(recipe_id: @wings.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @wings_replaceingredient = RecipeIngredient.create(recipe_id: @wings.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")

# @replaceingredient = Ingredient.create(name: "X")
# @wings_replaceingredient = RecipeIngredient.create(recipe_id: @wings.id, ingredient_id: @replaceingredient.id, ammount: 20, unit: "grams")

# join recipe with dietary restriction
@wings_celiac = RecipeOption.create(recipe_id: @wings.id, option_id: @celiac.id)
@wings_dairy_intolerant = RecipeOption.create(recipe_id: @wings.id, option_id: @dairy_intolerant.id)
@wings_kosher = RecipeOption.create(recipe_id: @wings.id, option_id: @kosher.id)
@wings_halal = RecipeOption.create(recipe_id: @wings.id, option_id: @halal.id)
@wings_peanut_allergy = RecipeOption.create(recipe_id: @wings.id, option_id: @peanut_allergy.id)
@wings_shellfish_allergy = RecipeOption.create(recipe_id: @wings.id, option_id: @shellfish_allergy.id)
@wings_diabetic = RecipeOption.create(recipe_id: @wings.id, option_id: @diabetic.id)
@wings_paleo = RecipeOption.create(recipe_id: @wings.id, option_id: @paleo.id)
@wings_sugar_free = RecipeOption.create(recipe_id: @wings.id, option_id: @sugar_free.id)




















# #create ingredients
# @replacerecipe_replaceingredient = RecipeIngredient.create(recipe_id: @replacerecipe.id, ingredient_id: @replaceingredient.id, ammount: 500, unit: "grams")
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







# #create recipe with image
# @replacerecipe = Recipe.create(name: "X", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# replacerecipe_file = URI.open('X')
# @replacerecipe.photo.attach(io: replacerecipe_file, filename: 'replacerecipe.png', content_type: 'image/png')



barbeque_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614125987/swuqcu0j0d2jfmfwqmj8.jpg')
@barbeque.photo.attach(io: barbeque_file, filename: 'barbeque.jpg', content_type: 'image/jpg')

gnocchi_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615053381/kzbtd0ohtwl5lbroobv9.png')
@gnocchi.photo.attach(io: gnocchi_file, filename: 'gnochi.png', content_type: 'image/png')

pizza_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615053480/i9qipvofntu9ziqtqyqf.png')
@pizza.photo.attach(io: pizza_file, filename: 'pizza.png', content_type: 'image/png')

caesar_salad_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126458/xda3j02xma6gzxh331jn.jpg')
@caesar_salad.photo.attach(io: caesar_salad_file, filename: 'caesar_salad.jpg', content_type: 'image/jpg')

sushi_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126514/giiyj8swmlkjdgplinrb.jpg')
@sushi.photo.attach(io: sushi_file, filename: 'sushi.jpg', content_type: 'image/jpg')

ravioli_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615053559/huebfmbla6aqe2rfz7on.png')
@ravioli.photo.attach(io: ravioli_file, filename: 'ravioli.png', content_type: 'image/png')

empanadas_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126783/m61fdr3at6l4gjqofzc1.jpg')
@empanadas.photo.attach(io: empanadas_file, filename: 'empanadas.jpg', content_type: 'image/jpg')

chocolate_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615049914/yq2xftypucmcn4qvq7iw.png')
@chocolate_cake.photo.attach(io: chocolate_cake_file, filename: 'chocolate_cake.png', content_type: 'image/png')

brownies_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615053361/j6v4pcmkyqqanfjrl6mz.png')
@brownies.photo.attach(io: brownies_file, filename: 'brownies.png', content_type: 'image/png')

lemon_squares_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615055058/urfxo5zjewf7c665wtgl.png')
@lemon_squares.photo.attach(io: lemon_squares_file, filename: 'lemon_squares.png', content_type: 'image/png')

mousse_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615053433/uvzbd4wf9j2c66gs3v68.png')
@mousse.photo.attach(io: mousse_file, filename: 'mousse.png', content_type: 'image/png')

chocotorta_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615055015/dgukk9jpiv5ixzmiws3q.png')
@chocotorta.photo.attach(io: chocotorta_file, filename: 'chocotorta.png', content_type: 'image/png')

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
@egg_roll_bowls.photo.attach(io: egg_roll_bowls_file, filename: 'egg_roll_bowls.png', content_type: 'image/png')

beef_pho_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615038978/e3bb3ndn37sdx5wnehwt.png')
@beef_pho.photo.attach(io: beef_pho_file, filename: 'beef_pho.png', content_type: 'image/png')

buckwheat_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615039153/mbitzfksk6qsum5yxozl.png')
@buckwheat_cake.photo.attach(io: buckwheat_cake_file, filename: 'buckwheat_cake.png', content_type: 'image/png')

chicken_rice_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615039178/qstvuvu8n1bgkaxr8wiu.png')
@chicken_rice.photo.attach(io: chicken_rice_file, filename: 'chicken_rice.png', content_type: 'image/png')

granola_scones_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615039212/krfhzfexkjmjyul2s7dg.png')
@granola_scones.photo.attach(io: granola_scones_file, filename: 'granola_scones.png', content_type: 'image/png')

grilled_mushrooms_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615039248/ap92jkqlqmheqms413in.png')
@grilled_mushrooms.photo.attach(io: grilled_mushrooms_file, filename: 'grilled_mushrooms.png', content_type: 'image/png')

pumpkin_soup_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615039318/gta8bditbevstdtrzse2.png')
@pumpkin_soup.photo.attach(io: pumpkin_soup_file, filename: 'pumpkin_soup.png', content_type: 'image/png')

tofu_bowl_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615039397/mz7lhznzqjfhzzdihbra.png')
@tofu_bowl.photo.attach(io: tofu_bowl_file, filename: 'tofu_bowl.png', content_type: 'image/png')

tofu_broccoli_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615039423/vtdmdfaajtqvclkivuez.png')
@tofu_broccoli.photo.attach(io: tofu_broccoli_file, filename: 'tofu_broccoli.png', content_type: 'image/png')

tuna_salad_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615039468/zw6nak8m2bnmjuekey4a.png')
@tuna_salad.photo.attach(io: tuna_salad_file, filename: 'tuna_salad.png', content_type: 'image/png')

veggie_nachos_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615039560/y9wr62kkvfbevbmin2fr.png')
@veggie_nachos.photo.attach(io: veggie_nachos_file, filename: 'veggie_nachos.png', content_type: 'image/png')

ba_pizza_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615051559/zpvxi1krxmzfyilopddt.png')
@ba_pizza.photo.attach(io: ba_pizza_file, filename: 'ba_pizza.png', content_type: 'image/png')

chocolate_ganache_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615051591/ffm5ywew7panzu70udrd.png')
@chocolate_ganache.photo.attach(io: chocolate_ganache_file, filename: 'chocolate_ganache.png', content_type: 'image/png')

digestives_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615051643/c0cvg4pawjvgspfpftgm.png')
@digestives.photo.attach(io: digestives_file, filename: 'digestives.png', content_type: 'image/png')

lasagna_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615051750/mf2ktv8zhybdezbfchpm.png')
@lasagna.photo.attach(io: lasagna_file, filename: 'lasagna.png', content_type: 'image/png')

molten_caramel_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615051699/clmqhyfnw2f1zyriiwr5.png')
@molten_caramel_cake.photo.attach(io: molten_caramel_cake_file, filename: 'molten_caramel_cake.png', content_type: 'image/png')

onigiri_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615051794/mjoqr2ifpyiocj0fremf.png')
@onigiri.photo.attach(io: onigiri_file, filename: 'onigiri.png', content_type: 'image/png')

pepperoni_pizza_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615051858/fzfjyoxpvyuayfjti19k.png')
@pepperoni_pizza.photo.attach(io: pepperoni_pizza_file, filename: 'pepperoni_pizza.png', content_type: 'image/png')

pie_crust_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615051939/wbdal91sgi96mm83sejt.png')
@pie_crust.photo.attach(io: pie_crust_file, filename: 'pie_crust.png', content_type: 'image/png')

pork_roast_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615051979/cnqbxkwinwfuqgintfgz.png')
@pork_roast.photo.attach(io: pork_roast_file, filename: 'pork_roast.png', content_type: 'image/png')

salted_caramel_tart_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615052018/c5tpdzjqeckinekwmqlk.png')
@salted_caramel_tart.photo.attach(io: salted_caramel_tart_file, filename: 'salted_caramel_tart.png', content_type: 'image/png')

sushi_salmon_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615052040/bbq88pfhr7e9f3xojcxd.png')
@sushi_salmon.photo.attach(io: sushi_salmon_file, filename: 'sushi_salmon.png', content_type: 'image/png')

tomato_pie_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615052241/jucxzogvaw0d3ut563ka.png')
@tomato_pie.photo.attach(io: tomato_pie_file, filename: 'tomato_pie.png', content_type: 'image/png')

tuna_rolls_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615052288/mbhxba00t4scais15eir.png')
@tuna_rolls.photo.attach(io: tuna_rolls_file, filename: 'tuna_rolls.png', content_type: 'image/png')

biscotti_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615055370/qdrdodmparxwrpiblje4.png')
@biscotti.photo.attach(io: biscotti_file, filename: 'biscotti.png', content_type: 'image/png')

chicken_adobo_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615055413/lr7cdf0kampon8vqemlx.png')
@chicken_adobo.photo.attach(io: chicken_adobo_file, filename: 'chicken_adobo.png', content_type: 'image/png')

huevos_rancheros_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615055519/t8o3irotehexzwre04xn.png')
@huevos_rancheros.photo.attach(io: huevos_rancheros_file, filename: 'huevos_rancheros.png', content_type: 'image/png')

potato_gratin_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615055535/gljzslasbax9p8gswq4z.png')
@potato_gratin.photo.attach(io: potato_gratin_file, filename: 'potato_gratin.png', content_type: 'image/png')

roasted_beets_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615056101/jce9q690zl5dit4aoydb.png')
@roasted_beets.photo.attach(io: roasted_beets_file, filename: 'roasted_beets.png', content_type: 'image/png')

shrimp_curry_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615056186/pyoxhvkikn7y2ymshumv.png')
@shrimp_curry.photo.attach(io: shrimp_curry_file, filename: 'shrimp_curry.png', content_type: 'image/png')

sweet_potatoes_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615056205/q2yjahym9fl0riatxgtw.png')
@sweet_potatoes.photo.attach(io: sweet_potatoes_file, filename: 'sweet_potatoes.png', content_type: 'image/png')

wings_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615056238/x0ybovdm6nxqgjfoccrn.png')
@wings.photo.attach(io: wings_file, filename: 'wings.png', content_type: 'image/png')

















# Cloudinary::Uploader.upload("app/assets/images/chocolate_cake.png")
