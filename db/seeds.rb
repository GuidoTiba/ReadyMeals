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
@gnocchi = Recipe.create(name: "Gnocchi", instructions: "Gnocchi are a variety of pasta consisting of various thick, small, and soft dough that may be made from semolina, ordinary wheat flour, egg, cheese, potato, breadcrumbs, cornmeal or similar ingredients, and possibly including flavourings of herbs, vegetables, cocoa or prunes. The dough for gnocchi is most often rolled out before it is cut into small pieces about the size of a wine cork. The little dumplings are then pressed with a fork or a cheese grater to make ridges that can hold sauce. Alternatively, they are simply cut into little lumps. Gnocchi are usually eaten as a replacement for pasta in the first course, but they can also be served as a contorno to some main courses.", details: "So good")
@pizza = Recipe.create(name: "Pizza", instructions: "Pizza is a savory dish of Italian origin consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, pineapple, meat, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven. A small pizza is sometimes called a pizzetta. A person who makes pizza is known as a pizzaiolo.", details: "Put the sauce, the mozzarela and tada")
@caesar_salad = Recipe.create(name: "Caesar salad", instructions: "Mix greens with chicken and add caesar dressing", details: "The dressing is the key")
@sushi = Recipe.create(name: "Sushi", instructions: "Buy the sushi", details: "Don't forget the soy sauce")
@ravioli = Recipe.create(name: "Ravioli", instructions: "Boil water and add the ravioli", details: "Choose savour carefully")
@empanadas = Recipe.create(name: "Empanadas", instructions: "An empanada is a type of baked or fried turnover consisting of pastry and filling, common in Southern European, Latin American, and the Philippines cultures. The name comes from the Galician verb empanar, and translates as enbreaded, that is, wrapped or coated in bread. They are made by folding dough over a filling, which may consist of meat, cheese, tomato, corn, or other ingredients, and then cooking the resulting turnover, either by baking or frying.", details: "An argentine classic")
@chocolate_cake = Recipe.create(name: "Chocolate cake", instructions: "Mix chocolate and eggs", details: "Everybody likes chocolate cake")
@brownies = Recipe.create(name: "Brownies", instructions: "Mix batter with chocolate", details: "You can even make them magical")
@lemon_squares = Recipe.create(name: "Lemon squares", instructions: "Place the dough in the bottom and the lemon liquid on the top", details: "For those who don't prefer chocolate")
@chocotorta = Recipe.create(name: "Chocotorta", instructions: "Dip the cookies in milk, do a layer and then add the dulce de leche mix", details: "An argentine classic")

puts "Creating ingredients"

@salt = Ingredient.create(name: "Salt")
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
@kosher_kosher_salt = Ingredient.create(name: "Kosher salt")
@lager = Ingredient.create(name: "Lager")
@cod = Ingredient.create(name: "Cod")
@black_pepper = Ingredient.create(name: "Black pepper")
@vegetable_oil = Ingredient.create(name: "Vegetable oil")
@baking_soda = Ingredient.create(name: "Baking soda")
@granulated_sugar = Ingredient.create(name: "Granulated sugar")
@cinnamon = Ingredient.create(name: "Cinnamon")
@vanilla_extract = Ingredient.create(name: "Vanilla extract")
@carrots = Ingredient.create(name: "Carrots")
@pecans = Ingredient.create(name: "Pecans")
@raisins = Ingredient.create(name: "Raisins")
@cream_cheese = Ingredient.create(name: "Cream cheese")
@powdered_sugar = Ingredient.create(name: "Powdered sugar")
@bowtie_pasta = Ingredient.create(name: "Bowtie pasta")
@adobo_seasoning = Ingredient.create(name: "Adobo seasoning")
@paprika = Ingredient.create(name: "Paprika")
@somked_sausage = Ingredient.create(name: "Somkes sausage")
@onions = Ingredient.create(name: "Onions")
@green_peppers = Ingredient.create(name: "Green peppers")
@rosemary_garlic = Ingredient.create(name: "Rosemary garlic")
@olive_oil = Ingredient.create(name: "Olive oil")
@pasta = Ingredient.create(name: "Pasta")
@pecorino = Ingredient.create(name: "Pecorino")
@bread = Ingredient.create(name: "Bread")
@cheddar = Ingredient.create(name: "Cheddar")
@wine_vinegar = Ingredient.create(name: "Wine vinegar")
@dijon_mustard = Ingredient.create(name: "Dijon mustard")
@lettuce = Ingredient.create(name: "Lettuce")
@bacon = Ingredient.create(name: "Bacon")
@avocado = Ingredient.create(name: "Avocado")
@blue_cheese = Ingredient.create(name: "Blue cheese")
@cherry_tomatos = Ingredient.create(name: "Cherry tomatos")
@chives = Ingredient.create(name: "Chives")
@brown_sugar = Ingredient.create(name: "Brown sugar")
@chocolate_chips = Ingredient.create(name: "Choclate chips")
@baking_powder = Ingredient.create(name: "Baking powder")
@maple_syrup = Ingredient.create(name: "Maple syrup")
@green_onions = Ingredient.create(name: "Green onions")
@ginger = Ingredient.create(name: "Ginger")
@garlic = Ingredient.create(name: "Garlic")
@bread_crumbs = Ingredient.create(name: "Bread crumbs")
@jasmin_rice = Ingredient.create(name: "Jasmin rice")
@honey = Ingredient.create(name: "Honey")
@oranges = Ingredient.create(name: "Oranges")
@cornstarch = Ingredient.create(name: "Cornstarch")
@garnish = Ingredient.create(name: "Garnish")
@garlic = Ingredient.create(name: "Garlic")
@pork = Ingredient.create(name: "Pork")
@sesame_oil = Ingredient.create(name: "Sesame oil")
@cabbage = Ingredient.create(name: "Cabbage")
@sriracha = Ingredient.create(name: "Sriracha")
@sesame_seeds = Ingredient.create(name: "Sesame seeds")
@rice_noodles = Ingredient.create(name: "Rice noodles")
@leaves = Ingredient.create(name: "Leaves")
@chocolate_chips = Ingredient.create(name: "Chocolate chips")
@cocoa_powder = Ingredient.create(name: "Cocoa powder")
@basmati_rice = Ingredient.create(name: "Basmati rice")
@shallot = Ingredient.create(name: "Shallot")
@turmeric = Ingredient.create(name: "Turmeric")
@coconut_milk = Ingredient.create(name: "Coconut milk")
@kale = Ingredient.create(name: "Kale")
@oats = Ingredient.create(name: "Oats")
@dates = Ingredient.create(name: "Dates")
@golden_raisins = Ingredient.create(name: "Golden raisins")
@flaxseed = Ingredient.create(name: "Flaxseed")
@almonds = Ingredient.create(name: "Almonds")
@shredded_coconut = Ingredient.create(name: "Shredded Coconut")
@black_currants = Ingredient.create(name: "Black currants")
@heavy_cream = Ingredient.create(name: "Heavy cream")
@sesame_sauce = Ingredient.create(name: "Sesame sauce")
@mixed_herbs = Ingredient.create(name: "miexed herbs")
@mushrooms = Ingredient.create(name: "Mushrooms")
@pumpkin_sauce = Ingredient.create(name: "Pumpkin sauce")
@pumpkin = Ingredient.create(name: "Pumpkin")
@cider_vinegar = Ingredient.create(name: "Cider vinegar")
@lime_juice = Ingredient.create(name: "Lime juice")
@lemon_juice = Ingredient.create(name: "Lemon juice")
@tofu = Ingredient.create(name: "Tofu")
@broccoli = Ingredient.create(name: "Broccoli")
@scallion = Ingredient.create(name: "Scallion")
@tahini = Ingredient.create(name: "Tahini")
@rice_vinegar = Ingredient.create(name: "Rice vinegar")
@sesamae_seeds = Ingredient.create(name: "Sesamae Seeds")
@maple_syrup = Ingredient.create(name: "Maple syrup")
@scallions = Ingredient.create(name: "Scallions")
@chickpeas = Ingredient.create(name: "Chickpeas")
@mayonnaise = Ingredient.create(name: "Mayonnaise")
@endives = Ingredient.create(name: "Endives")
@rice_vinegar = Ingredient.create(name: "Rice vinegar")
@cauliflower = Ingredient.create(name: "Cauliflower")
@cumin = Ingredient.create(name: "Cumin")
@tortilla_chips = Ingredient.create(name: "Tortilla chips")
@beans = Ingredient.create(name: "Beans")
@tortilla_chips = Ingredient.create(name: "Tortilla chips")
@beets = Ingredient.create(name: "Beets")
@shrimps = Ingredient.create(name: "Shrimps")
@sweet_potatoes = Ingredient.create(name: "Sweet potatoes")
@fusilli = Ingredient.create(name: "Fusilli")
@nuts = Ingredient.create(name: "Nuts")
@nori_sheets = Ingredient.create(name: "Nori sheets")
@kimchi = Ingredient.create(name: "Kimchi")
@pepperoni = Ingredient.create(name: "Pepperoni")
@fleur_de_sel = Ingredient.create(name: "Fleur de sel")
@maccaroni = Ingredient.create(name: "Macaronis")
@yogurt = Ingredient.create(name: "Yogurt")
@wrap = Ingredient.create(name: "Wraps")
@mushrooms = Ingredient.create(name: "Mushrooms")


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
@fish_and_chips_kosher_salt = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
@fish_and_chips_lager = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @lager.id, ammount: 500, unit: "grams")
@fish_and_chips_cod = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @cod.id, ammount: 20, unit: "grams")
@fish_and_chips_black_pepper = RecipeIngredient.create(recipe_id: @fish_and_chips.id, ingredient_id: @black_pepper.id, ammount: 20, unit: "grams")
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
@carrot_cake_baking_soda = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @baking_soda.id, ammount: 500, unit: "grams")
@carrot_cake_granulated_sugar = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @granulated_sugar.id, ammount: 500, unit: "grams")
@carrot_cake_cinnamon = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @cinnamon.id, ammount: 500, unit: "grams")
@carrot_cake_vanilla_extract = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @vanilla_extract.id, ammount: 20, unit: "grams")
@carrot_cake_carrots = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @carrots.id, ammount: 20, unit: "grams")
@carrot_cake_pecans = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @pecans.id, ammount: 20, unit: "grams")
@carrot_cake_raisins = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @raisins.id, ammount: 20, unit: "grams")
@carrot_cake_cream_cheese = RecipeIngredient.create(recipe_id: @carrot_cake.id, ingredient_id: @cream_cheese.id, ammount: 20, unit: "grams")
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
@cheesy_bowtie_pasta_bowtie_pasta = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @bowtie_pasta.id, ammount: 500, unit: "grams")
@cheesy_bowtie_pasta_adobo_seasoning = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @adobo_seasoning.id, ammount: 20, unit: "grams")
@cheesy_bowtie_pasta_paprika = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @paprika.id, ammount: 20, unit: "grams")
@cheesy_bowtie_pasta_somked_sausage = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @somked_sausage.id, ammount: 20, unit: "grams")
@cheesy_bowtie_pasta_onions = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @onions.id, ammount: 20, unit: "grams")
@cheesy_bowtie_pasta_green_peppers = RecipeIngredient.create(recipe_id: @cheesy_bowtie_pasta.id, ingredient_id: @green_peppers.id, ammount: 20, unit: "grams")
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
@cacio_pepe_olive_oil = RecipeIngredient.create(recipe_id: @cacio_pepe.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@cacio_pepe_pasta = RecipeIngredient.create(recipe_id: @cacio_pepe.id, ingredient_id: @pasta.id, ammount: 500, unit: "grams")
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
@grilled_cheese_bread = RecipeIngredient.create(recipe_id: @grilled_cheese.id, ingredient_id: @bread.id, ammount: 500, unit: "grams")
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
@cobb_salad_wine_vinegar = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @wine_vinegar.id, ammount: 500, unit: "grams")
@cobb_salad_dijon_mustard = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @dijon_mustard.id, ammount: 20, unit: "grams")
@cobb_salad_lettuce = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @lettuce.id, ammount: 20, unit: "grams")
@cobb_salad_bacon = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @bacon.id, ammount: 20, unit: "grams")
@cobb_salad_avocado = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @avocado.id, ammount: 20, unit: "grams")
@cobb_salad_blue_cheese = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @blue_cheese.id, ammount: 20, unit: "grams")
@cobb_salad_cherry_tomatos = RecipeIngredient.create(recipe_id: @cobb_salad.id, ingredient_id: @cherry_tomatos.id, ammount: 20, unit: "grams")
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
@cookies_brown_sugar = RecipeIngredient.create(recipe_id: @cookies.id, ingredient_id: @brown_sugar.id, ammount: 500, unit: "grams")
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
@pancakes_baking_powder = RecipeIngredient.create(recipe_id: @pancakes.id, ingredient_id: @baking_powder.id, ammount: 500, unit: "grams")
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
@orange_chicken_green_onions = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @green_onions.id, ammount: 500, unit: "grams")
@orange_chicken_ginger = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")
@orange_chicken_garlic = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@orange_chicken_bread_crumbs = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @bread_crumbs.id, ammount: 20, unit: "grams")
@orange_chicken_jasmin_rice = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @jasmin_rice.id, ammount: 500, unit: "grams")
@orange_chicken_honey = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @honey.id, ammount: 20, unit: "grams")
@orange_chicken_oranges = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @oranges.id, ammount: 20, unit: "grams")
@orange_chicken_cornstarch = RecipeIngredient.create(recipe_id: @orange_chicken.id, ingredient_id: @cornstarch.id, ammount: 20, unit: "grams")
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
@egg_roll_bowls_garlic = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@egg_roll_bowls_pork = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @pork.id, ammount: 20, unit: "grams")
@egg_roll_bowls_sesame_oil = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @sesame_oil.id, ammount: 20, unit: "grams")
@egg_roll_bowls_cabbage = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @cabbage.id, ammount: 20, unit: "grams")
@egg_roll_bowls_sriracha = RecipeIngredient.create(recipe_id: @egg_roll_bowls.id, ingredient_id: @sriracha.id, ammount: 20, unit: "grams")
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

@beef_pho_cinnamon = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @cinnamon.id, ammount: 500, unit: "grams")
@beef_pho_garlic = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@beef_pho_vegetable_oil = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@beef_pho_onions = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @onions.id, ammount: 500, unit: "grams")
@beef_pho_ginger = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")
@beef_pho_meat = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @meat.id, ammount: 500, unit: "grams")
@beef_pho_sugar = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@beef_pho_kosher_salt = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
@beef_pho_black_pepper = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@beef_pho_rice_noodles = RecipeIngredient.create(recipe_id: @beef_pho.id, ingredient_id: @rice_noodles.id, ammount: 500, unit: "grams")
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
@buckwheat_cake_chocolate_chips = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @chocolate_chips.id, ammount: 500, unit: "grams")
@buckwheat_cake_cocoa_powder = RecipeIngredient.create(recipe_id: @buckwheat_cake.id, ingredient_id: @cocoa_powder.id, ammount: 20, unit: "grams")

@buckwheat_cake_vegetarian = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @vegetarian.id)
@buckwheat_cake_vegan = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @vegan.id)
@buckwheat_cake_pescetarian = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @pescetarian.id)
@buckwheat_cake_kosher = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @kosher.id)
@buckwheat_cake_halal = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @halal.id)
@buckwheat_cake_peanut_allergy = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @peanut_allergy.id)
@buckwheat_cake_shellfish_allergy = RecipeOption.create(recipe_id: @buckwheat_cake.id, option_id: @shellfish_allergy.id)

# Nonstick vegetable oil spray
# 4 large eggs
# ¾ cup (135 g) bittersweet chocolate chips
# ½ cup (1 stick) unsalted butter, cut into pieces
# ¼ cup (25 g) Dutch-process unsweetened cocoa powder, sifted
# 1 bsp. vanilla extract
# Pinch of kosher salt
# ½ cup (100 g) granulated sugar, divided
# 2 Tbsp. powdered sugar


puts "Creating chicken rice"
@chicken_rice = Recipe.create(name: "Chicken rice", instructions: "Place rice in a medium bowl and pour in cold water to cover. Agitate rice with your hands until water is cloudy. Drain and repeat until water is almost clear (about 3 times). Pour in water to cover rice by 2; let soak 30–45 minutes. Heat oil in a heavy pot with a wide base (preferably 10) over medium-high. Add shallot and cook, stirring occasionally, until golden, about 3 minutes. Add garlic and cook, stirring until softened, about 1 minute. Add chicken, turmeric, cayenne, and 1½ tsp. salt. Cook, turning and moving around chicken thighs as needed, until chicken begins to turn opaque, about 2 minutes. Pour in ¾ cup water and bring to a simmer. Reduce heat to low, cover, and simmer, turning chicken once, until chicken is cooked through and very tender, about 20 minutes. Drain rice and add to pot with chicken, then add coconut milk and remaining 1 tsp. salt. Stir to incorporate and bring to a boil. Drape a kitchen towel over pot; cover with lid. Bring corners of towel up and over lid and secure with a rubber band. Reduce heat to lowest setting and cook, undisturbed, 15 minutes. Remove from heat and remove towel and lid. Arrange kale in an even layer over chicken and rice and cover with lid. Let sit until wilted, about 10 minutes. Divide chicken and rice among bowls. Top with chiles if using. Serve with lime wedges", details: "You can make the rice sticky!")

@chicken_rice_vegetable_oil = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@chicken_rice_garlic = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@chicken_rice_chicken = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @chicken.id, ammount: 500, unit: "grams")
@chicken_rice_black_pepper = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@chicken_rice_kosher_salt = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @kosher_kosher_salt.id, ammount: 500, unit: "grams")
@chicken_rice_basmati_rice = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @basmati_rice.id, ammount: 500, unit: "grams")
@chicken_rice_shallot = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @shallot.id, ammount: 20, unit: "grams")
@chicken_rice_turmeric = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @turmeric.id, ammount: 20, unit: "grams")
@chicken_rice_coconut_milk = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @coconut_milk.id, ammount: 20, unit: "grams")
@chicken_rice_kale = RecipeIngredient.create(recipe_id: @chicken_rice.id, ingredient_id: @kale.id, ammount: 20, unit: "grams")

@chicken_rice_celiac = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @celiac.id)
@chicken_rice_dairy_intolerant = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @dairy_intolerant.id)
@chicken_rice_kosher = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @kosher.id)
@chicken_rice_halal = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @halal.id)
@chicken_rice_peanut_allergy = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @peanut_allergy.id)
@chicken_rice_shellfish_allergy = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @shellfish_allergy.id)
@chicken_rice_diabetic = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @diabetic.id)
@chicken_rice_sugar_free = RecipeOption.create(recipe_id: @chicken_rice.id, option_id: @sugar_free.id)

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
@granola_scones_oats = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @oats.id, ammount: 500, unit: "grams")
@granola_scones_dates = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @dates.id, ammount: 20, unit: "grams")
@granola_scones_golden_raisins = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @golden_raisins.id, ammount: 20, unit: "grams")
@granola_scones_flaxseed = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @flaxseed.id, ammount: 20, unit: "grams")
@granola_scones_almonds = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @almonds.id, ammount: 20, unit: "grams")
@granola_scones_shredded_coconut = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @shredded_coconut.id, ammount: 20, unit: "grams")
@granola_scones_black_currants = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @black_currants.id, ammount: 20, unit: "grams")
@granola_scones_heavy_cream = RecipeIngredient.create(recipe_id: @granola_scones.id, ingredient_id: @heavy_cream.id, ammount: 20, unit: "grams")


@granola_scones_vegetarian = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @vegetarian.id)
@granola_scones_vegan = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @vegan.id)
@granola_scones_pescetarian = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @pescetarian.id)
@granola_scones_kosher = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @kosher.id)
@granola_scones_halal = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @halal.id)
@granola_scones_peanut_allergy = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @peanut_allergy.id)
@granola_scones_shellfish_allergy = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @shellfish_allergy.id)
@granola_scones_paleo = RecipeOption.create(recipe_id: @granola_scones.id, option_id: @paleo.id)

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


puts "Creating grilled mushrooms"
@grilled_mushrooms = Recipe.create(name: "Grilled mushrooms", instructions: "Fill a large pot three quarters full with water, add reserved herb stems, and season heavily with salt. Bring water to a boil, then add carrots and cook until just tender, about 3 minutes. Using a slotted spoon, immediately transfer carrots to a large bowl of ice water and let cool. Place potatoes in same pot and return to a boil. Cook until tender (flesh should be easy to pierce with a fork), about 10 minutes. Using slotted spoon, transfer potatoes to bowl of ice water and let cool. Drain carrots and potatoes; place in a clean large bowl and add half of the radicchio. Place mushrooms in a medium bowl. Whisk Pumpkin Hot Sauce, oil, and chopped herbs in another medium bowl. Pour half of mixture over carrots and potatoes and the other half over mushrooms; toss each to coat. Season with salt and pepper. Prepare a grill for medium-high heat. (Alternatively, heat a large cast-iron skillet over medium-high.) Grill mushrooms, turning occasionally, until deep golden brown and crisp around the edges (or cook in batches, stirring often, if using a skillet), 12–14 minutes. Transfer mushrooms to a large shallow serving bowl. Grill carrots, potatoes, and radicchio, turning occasionally, until deep golden brown all over (or cook in batches, tossing often, if using a skillet), about 4 minutes. Transfer vegetables to bowl with mushrooms and toss to combine. To serve, drizzle generously with sesame sauce; top with Spiced Pecans and remaining radicchio. Squeeze juice from each lemon half over.", details: "A veggies favourite!")

@grilled_mushrooms_carrots = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @carrots.id, ammount: 500, unit: "grams")
@grilled_mushrooms_potatoes = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @potatoes.id, ammount: 500, unit: "grams")
@grilled_mushrooms_vegetable_oil = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@grilled_mushrooms_black_pepper = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@grilled_mushrooms_pecans = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @pecans.id, ammount: 500, unit: "grams")
@grilled_mushrooms_lemons = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @lemons.id, ammount: 500, unit: "grams")
@grilled_mushrooms_sesame_sauce = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @sesame_sauce.id, ammount: 500, unit: "grams")
@grilled_mushrooms_mixed_herbs = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @mixed_herbs.id, ammount: 20, unit: "grams")
@grilled_mushrooms_mushrooms = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @mushrooms.id, ammount: 20, unit: "grams")
@grilled_mushrooms_pumpkin_sauce = RecipeIngredient.create(recipe_id: @grilled_mushrooms.id, ingredient_id: @pumpkin_sauce.id, ammount: 20, unit: "grams")

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


puts "Creating Chicken and Mushroom Noodles"
@chicken_mushroom_noodles = Recipe.create(name: "Chicken and Mushroom Noodles", instructions: "If using 1 lb. skinless, boneless chicken thighs (about 4 small), cut into ¼ pieces on a cutting board with a chef’s knife. (To make this process easier, freeze chicken on a baking sheet 30 minutes, then cut chicken when it’s half thawed.) If you’re using 1 lb. ground chicken, skip this step.", details: "Delicious wok")

@chicken_mushroom_noodles_garlic = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @garlic.id, ammount: 5, unit: "gloves")
@chicken_mushroom_noodles_black_pepper = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @black_pepper.id, ammount: 100, unit: "grams")
@chicken_mushroom_noodles_wine_vinegar = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @wine_vinegar.id, ammount: 1, unit: "cup")
@chicken_mushroom_noodles_sugar = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @sugar.id, ammount: 100, unit: "grams")
@chicken_mushroom_noodles_vegetable_oil = RecipeIngredient.create(recipe_id: @chicken_mushroom_noodles.id, ingredient_id: @vegetable_oil.id, ammount: 3, unit: "cups")

@chicken_mushroom_noodles_pescetarian = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @pescetarian.id)
@chicken_mushroom_noodles_dairy_intolerant = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @dairy_intolerant.id)
@chicken_mushroom_noodles_kosher = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @kosher.id)
@chicken_mushroom_noodles_peanut_allergy = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @peanut_allergy.id)
@chicken_mushroom_noodles_shellfish_allergy = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @shellfish_allergy.id)
@chicken_mushroom_noodles_sugar_free = RecipeOption.create(recipe_id: @chicken_mushroom_noodles.id, option_id: @sugar_free.id)


puts "Creating pumpkin soup"
@pumpkin_soup = Recipe.create(name: "Pumpkin soup", instructions: "Preheat oven to 425°. Place pumpkin on a large rimmed baking sheet and roast until tender (a paring knife should pierce flesh easily), about 1 hour. Let cool. Halve pumpkin through stem end; scoop out and discard seeds. Scoop 1½ cups flesh into a blender; reserve remaining pumpkin for another use. Add garlic, ginger, vinegar, lime juice, lemon juice, Allium Confit, salt, half of chiles, and ½ cup ice water and blend until very smooth and bright yellow. Taste and add remaining chile if you’d like a spicier sauce; season with more salt if needed. Do ahead: Hot sauce can be made 2 weeks ahead. Transfer to a jar; cover and chill.", details: "The saviour for the winter")

@pumpkin_soup_garlic = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@pumpkin_soup_ginger = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")
@pumpkin_soup_pumpkin = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @pumpkin.id, ammount: 500, unit: "grams")
@pumpkin_soup_cider_vinegar = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @cider_vinegar.id, ammount: 20, unit: "grams")
@pumpkin_soup_lime_juice = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @lime_juice.id, ammount: 20, unit: "grams")
@pumpkin_soup_lemon_juice = RecipeIngredient.create(recipe_id: @pumpkin_soup.id, ingredient_id: @lemon_juice.id, ammount: 20, unit: "grams")

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

# 1 2-lb. heirloom pumpkin or butternut squash
# 6 garlic cloves
# 4 oz. ginger, peeled, coarsely chopped
# ¼ cup apple cider vinegar
# ¼ cup fresh lime juice
# 2 Tbsp. fresh lemon juice
# 2 tsp. Diamond Crystal or 1 tsp. Morton kosher salt

puts "Creating tofu bowl"
@tofu_bowl = Recipe.create(name: "Tofu bowl", instructions: "Cut tofu in half horizontally through the equator (like a hamburger bun), then cut into 1 cubes and pat dry again. Arrange in a single layer on a rimmed baking sheet or large plate and set aside. Cut 1 large head of broccoli (about 1 lb.) into small 1 florets. If your broccoli has a long stem, peel tough outer skin to remove the lighter fibrous layer, then slice stem ¼ thick. Finely chop 1 scallion and set aside for serving. To make the sauce, scrape skin from one 1 piece ginger with a spoon, then grate on a Microplane into a small bowl. Smash and peel 1 garlic clove and grate into bowl with ginger. Add ¼ cup tamari or soy sauce, 2 Tbsp. light or dark brown sugar or pure maple syrup, 2 Tbsp. tahini, 2 Tbsp. unseasoned rice vinegar, 1 Tbsp. toasted sesame oil, 1½ tsp. cornstarch, a pinch of kosher salt, and 3 Tbsp. water and whisk to combine. Set sauce aside. Sprinkle 1 tsp. Diamond Crystal or ½ tsp. Morton kosher salt over tofu and toss to coat. Scatter remaining ¼ cup cornstarch over tofu a tablespoonful at a time, tossing after each addition and gently pressing into the tofu pieces, until well coated on all sides. Heat 1 Tbsp. grapeseed oil or vegetable oil in a large nonstick or cast-iron skillet over medium-high. Add broccoli, season with ½ tsp. Diamond Crystal or ¼ tsp. Morton kosher salt and ¼ tsp. freshly ground black pepper, and cook, tossing occasionally, until just tender, about 5 minutes. Transfer broccoli to a plate. Wipe out skillet. Heat remaining ¼ cup grapeseed or vegetable oil in same skillet over medium-high. When oil is hot (it will start to shimmer), reduce heat to medium and add tofu in a single layer (work in batches if needed). Cook, turning every 3–4 minutes, until golden brown all over, 10–12 minutes total. Transfer to a clean kitchen towel or paper towels and let drain. Pour out any remaining oil in pan and wipe out. Return pan to medium heat. Whisk reserved sauce if it has separated, then pour into pan and cook until thickened and bubbling, about 20 seconds. Immediately remove pan from heat and add broccoli and tofu; toss to coat. Top tofu and broccoli with 1 Tbsp. toasted sesame seeds and reserved scallions. Serve with steamed white or brown rice.", details: "Even meat lovers will want to have a bite")

@tofu_bowl_ginger = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")
@tofu_bowl_garlic = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@tofu_bowl_soy_sauce = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @soy_sauce.id, ammount: 500, unit: "grams")
@tofu_bowl_sugar = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@tofu_bowl_sesame_oil = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @sesame_oil.id, ammount: 20, unit: "grams")
@tofu_bowl_vegetable_oil = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@tofu_bowl_black_pepper = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@tofu_bowl_rice = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @rice.id, ammount: 500, unit: "grams")
@tofu_bowl_tofu = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @tofu.id, ammount: 500, unit: "grams")
@tofu_bowl_broccoli = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @broccoli.id, ammount: 20, unit: "grams")
@tofu_bowl_scallion = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @scallion.id, ammount: 20, unit: "grams")
@tofu_bowl_tahini = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @tahini.id, ammount: 20, unit: "grams")
@tofu_bowl_rice_vinegar = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @rice_vinegar.id, ammount: 20, unit: "grams")
@tofu_bowl_sesamae_seeds = RecipeIngredient.create(recipe_id: @tofu_bowl.id, ingredient_id: @sesamae_seeds.id, ammount: 500, unit: "grams")

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


puts "Creating tofu broccoli"
@tofu_broccoli = Recipe.create(name: "Tofu broccoli", instructions: "Squeeze tofu over a bowl to expel as much water as possible (don’t worry if it starts to break apart). Grate on the large holes of a box grater; set aside. Heat oil and garlic in a large nonstick skillet over medium. Cook, turning once, until garlic is golden, about 3 minutes. Add 1 Tbsp. sesame seeds and 1 tsp. Aleppo-style pepper and cook, stirring, until fragrant, about 30 seconds. Add tofu, increase heat to medium-high, and cook, tossing occasionally and breaking tofu apart with a wooden spoon, until it begins to crisp in spots, about 5 minutes. Stir in scallions, soy sauce, mirin, and butter and cook until liquid is almost completely evaporated, about 3 minutes. Divide rice among shallow bowls and spoon tofu mixture over; top with more sesame seeds and Aleppo-style pepper.", details: "The kids will not want to miss it")

@tofu_broccoli_tofu = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @tofu.id, ammount: 500, unit: "grams")
@tofu_broccoli_vegetable_oil = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@tofu_broccoli_garlic = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@tofu_broccoli_sesamae_seeds = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @sesamae_seeds.id, ammount: 500, unit: "grams")
@tofu_broccoli_soy_sauce = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @soy_sauce.id, ammount: 500, unit: "grams")
@tofu_broccoli_butter = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@tofu_broccoli_rice = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @rice.id, ammount: 500, unit: "grams")
@tofu_broccoli_maple_syrup = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @maple_syrup.id, ammount: 500, unit: "grams")
@tofu_broccoli_scallions = RecipeIngredient.create(recipe_id: @tofu_broccoli.id, ingredient_id: @scallions.id, ammount: 500, unit: "grams")

@tofu_broccoli_vegetarian = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @vegetarian.id)
@tofu_broccoli_vegan = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @vegan.id)
@tofu_broccoli_pescetarian = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @pescetarian.id)
@tofu_broccoli_dairy_intolerant = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @dairy_intolerant.id)
@tofu_broccoli_kosher = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @kosher.id)
@tofu_broccoli_halal = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @halal.id)
@tofu_broccoli_peanut_allergy = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @peanut_allergy.id)
@tofu_broccoli_diabetic = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @diabetic.id)
@tofu_broccoli_paleo = RecipeOption.create(recipe_id: @tofu_broccoli.id, option_id: @paleo.id)

# 1 14-oz. block firm or extra-firm tofu, drained
# 2 Tbsp. vegetable oil
# 2 garlic cloves, smashed
# 1 Tbsp. toasted sesame seeds, plus more for serving
# 3 scallions, chopped into 1 pieces
# 3 Tbsp. soy sauce
# 2 Tbsp. mirin (sweet Japanese rice wine) or 1 Tbsp. pure maple syrup
# 2 Tbsp. unsalted butter
# Cooked white rice (for serving)


puts "Creating tuna salad"
@tuna_salad = Recipe.create(name: "Tuna salad", instructions: "Heat 3 Tbsp. oil in a large skillet over medium-high. Cook chickpeas, tossing occasionally, until crisp and golden brown, 6–8 minutes. Season with salt and let cool. Whisk shallot, mayonnaise, mustard, and vinegar in a large bowl; season dressing with salt and pepper. Mix in tuna, breaking up with a fork. Add chickpeas, endive, parsley, and pickled chiles. Finely grate zest from lemon over, then squeeze in juice. Pour in remaining 2 Tbsp. oil and toss to combine. Taste and season with more salt if needed.", details: "Salad with a twist")

@tuna_salad_shallot = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @shallot.id, ammount: 500, unit: "grams")
@tuna_salad_dijon_mustard = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @dijon_mustard.id, ammount: 500, unit: "grams")
@tuna_salad_black_pepper = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@tuna_salad_olive_oil = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@tuna_salad_tuna = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @tuna.id, ammount: 500, unit: "grams")
@tuna_salad_lemons = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @lemons.id, ammount: 500, unit: "grams")
@tuna_salad_chickpeas = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @chickpeas.id, ammount: 20, unit: "grams")
@tuna_salad_mayonnaise = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @mayonnaise.id, ammount: 20, unit: "grams")
@tuna_salad_endives = RecipeIngredient.create(recipe_id: @tuna_salad.id, ingredient_id: @endives.id, ammount: 20, unit: "grams")

@tuna_salad_pescetarian = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @pescetarian.id)
@tuna_salad_celiac = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @celiac.id)
@tuna_salad_dairy_intolerant = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @dairy_intolerant.id)
@tuna_salad_kosher = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @kosher.id)
@tuna_salad_halal = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @halal.id)
@tuna_salad_peanut_allergy = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @peanut_allergy.id)
@tuna_salad_shellfish_allergy = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @shellfish_allergy.id)
@tuna_salad_diabetic = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @diabetic.id)
@tuna_salad_sugar_free = RecipeOption.create(recipe_id: @tuna_salad.id, option_id: @sugar_free.id)

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


puts "Creating veggie nachos"
@veggie_nachos = Recipe.create(name: "Veggie nachos", instructions: "Toss radishes and vinegar in a small bowl to combine; set aside. Preheat oven to 400°. Heat 2 Tbsp. oil in a large skillet over medium-high. Cook garlic, tossing often, until golden around edges, about 2 minutes. Add cauliflower; cook, undisturbed, until golden brown underneath, about 3 minutes. Toss, then continue to cook, tossing occasionally, until browned all over and crisp-tender, about 3 minutes more. Add coriander, cumin, paprika, and remaining 1 Tbsp. oil. Cook, tossing, until very fragrant, about 1 minute; season with salt. Spread half of chips on a small rimmed baking sheet. Arrange half of cauliflower on top. Dollop half of beans over, then sprinkle with half of cheese. Repeat layers one more time. Bake until cheese is melted, 10–12 minutes. Top with drained radishes, avocado, cilantro, and yogurt.", details: "A house favourite!")

@veggie_nachos_onions = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @onions.id, ammount: 500, unit: "grams")
@veggie_nachos_olive_oil = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@veggie_nachos_garlic = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@veggie_nachos_paprika = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @paprika.id, ammount: 500, unit: "grams")
@veggie_nachos_cheese = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @cheese.id, ammount: 500, unit: "grams")
@veggie_nachos_avocado = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @avocado.id, ammount: 500, unit: "grams")
@veggie_nachos_rice_vinegar = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @rice_vinegar.id, ammount: 500, unit: "grams")
@veggie_nachos_cauliflower = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @cauliflower.id, ammount: 20, unit: "grams")
@veggie_nachos_cumin = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @cumin.id, ammount: 20, unit: "grams")
@veggie_nachos_tortilla_chips = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @tortilla_chips.id, ammount: 20, unit: "grams")
@veggie_nachos_beans = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @beans.id, ammount: 20, unit: "grams")
@veggie_nachos_tortilla_chips = RecipeIngredient.create(recipe_id: @veggie_nachos.id, ingredient_id: @tortilla_chips.id, ammount: 20, unit: "grams")

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


puts "Creating BA pizza"
@ba_pizza = Recipe.create(name: "BA pizza", instructions: "Preheat oven to 500°. Let dough sit, covered, at room temperature 30 minutes. Meanwhile, process Parmesan, ricotta, cream, garlic, salt, pepper, ¾ cup corn, and 2 Tbsp. oil in a food processor until mostly smooth (mixture will still have some texture). Scrape creamed corn into a small bowl; stir in ¼ cup corn. Coat bottom and sides of a 13x9 rimmed baking sheet or baking dish with 2 Tbsp. oil. Place dough in center of baking sheet; gently press and stretch until it reaches to edges and into corners. (If dough springs back, let it rest a few minutes before continuing.) Spread creamed corn over dough, leaving a ½ border. Top with pepperoni, then tomatoes and remaining ½ cup corn. Bake until crust is golden underneath and cooked through, about 20 minutes. Top with smoked mozzarella and bake until cheese is melted, about 2 minutes. Drizzle with oil and top with basil leaves.", details: "Bon Appetit's classic")

@ba_pizza_tomato_sauce = RecipeIngredient.create(recipe_id: @ba_pizza.id, ingredient_id: @tomato_sauce.id, ammount: 500, unit: "grams")
@ba_pizza_mozzarela = RecipeIngredient.create(recipe_id: @ba_pizza.id, ingredient_id: @cheese.id, ammount: 500, unit: "grams")
@ba_pizza_cheese = RecipeIngredient.create(recipe_id: @ba_pizza.id, ingredient_id: @cheese.id, ammount: 500, unit: "grams")
@ba_pizza_garlic = RecipeIngredient.create(recipe_id: @ba_pizza.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")

@ba_pizza_vegetarian = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @vegetarian.id)
@ba_pizza_vegan = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @vegan.id)
@ba_pizza_pescetarian = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @pescetarian.id)
@ba_pizza_kosher = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @kosher.id)
@ba_pizza_halal = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @halal.id)
@ba_pizza_peanut_allergy = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @peanut_allergy.id)
@ba_pizza_shellfish_allergy = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @shellfish_allergy.id)
@ba_pizza_paleo = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @paleo.id)
@ba_pizza_sugar_free = RecipeOption.create(recipe_id: @ba_pizza.id, option_id: @sugar_free.id)

# 1 1-lb. store-bought pizza dough
# ¼ cup grated Parmesan
# ¼ cup fresh ricotta
# 2 Tbsp. heavy cream
# 1 small garlic clove, finely grated
# 1 tsp. Diamond Crystal or ½ tsp. Morton kosher salt
# ¾ tsp. freshly ground black pepper
# 1½ cups fresh corn (from about 2 medium ears), divided
# 4 Tbsp. extra-virgin olive oil, divided, plus more for drizzling
# 2 oz. sliced pepperoni
# 8 oz. cherry tomatoes, halved (about 1⅓ cups)
# ½ cup grated smoked mozzarella
# Fresh basil leaves (for serving)


puts "Creating Chocolate ganache"
@chocolate_ganache = Recipe.create(name: "Chocolate ganache", instructions: "Place a rack in middle of oven; preheat to 350°. Lightly butter pan; line with a round of parchment paper cut to fit just inside pan. Pulse nuts in a food processor until finely chopped. Add sugar and salt and pulse again to combine. Drizzle in melted butter and pulse until nuts begin to clump together and mixture looks sandy. Using your hands, firmly and evenly press mixture into bottom and up sides of pan (it doesn’t need to come all the way up the sides). Bake crust until golden brown, 20–25 minutes. Let cool. Place chocolate in a medium bowl. Heat cream in a small saucepan until just beginning to simmer; immediately pour over chocolate. Let sit, undisturbed, 5 minutes. Add butter and mix with a heatproof rubber spatula until smooth and glossy. Scrape ganache into crust and smooth out any bubbles. Chill, uncovered, until set, at least 1 hour. Remove tart from pan; sprinkle sea salt over. Slice into wedges with a hot knife. Do Ahead: Tart can be made 1 day ahead. Cover and keep chilled.", details: "Not apt for vegetarians")

@chocolate_ganache_chocolate = RecipeIngredient.create(recipe_id: @chocolate_ganache.id, ingredient_id: @chocolate.id, ammount: 500, unit: "grams")
@chocolate_ganache_sugar = RecipeIngredient.create(recipe_id: @chocolate_ganache.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@chocolate_ganache_nuts = RecipeIngredient.create(recipe_id: @chocolate_ganache.id, ingredient_id: @nuts.id, ammount: 500, unit: "grams")

@chocolate_ganache_vegetarian = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @vegetarian.id)
@chocolate_ganache_vegan = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @vegan.id)
@chocolate_ganache_pescetarian = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @pescetarian.id)
@chocolate_ganache_kosher = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @kosher.id)
@chocolate_ganache_halal = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @halal.id)
@chocolate_ganache_shellfish_allergy = RecipeOption.create(recipe_id: @chocolate_ganache.id, option_id: @shellfish_allergy.id)

# 4 Tbsp. unsalted butter, melted, plus more room temperature for pan
# 2½ cups mixed raw nuts (such as walnuts, blanched hazelnuts, pistachios, and/or almonds)
# 6 Tbsp. sugar
# ¾ tsp. kosher salt
# 12 oz. bittersweet chocolate, chopped
# 2 cups heavy cream
# 6 Tbsp. unsalted butter, room temperature, cut into 1 pieces
# Flaky sea salt

puts "Creating Digestives"
@digestives = Recipe.create(name: "Digestives", instructions: "Place racks in upper and lower thirds of oven; preheat to 350°. Process 1⅓ cups whole wheat flour, wheat germ, sugar, baking powder, salt, and butter in a food processor until butter virtually disappears and you have a fine, floury meal. Add milk and pulse until a damp and crumbly dough forms. Turn dough out onto an unfloured surface and gently knead just to bring it into a ball; flatten into a disk. Lightly flour surface and roll out dough until just shy of ¼” thick. Lightly flour cookie cutter and punch out cookies, dusting with more flour as needed to avoid sticking. Dust any excess flour off of cookies with a dry pastry brush. Using a spatula, transfer cookies to 2 parchment-lined baking sheets. Gently knead scraps together, reroll, and punch out more cookies. Discard any scraps (or bake as is and crumble over ice cream!). Prick each cookie 3 times with a fork and bake, rotating baking sheets top to bottom and front to back halfway through, until bottoms and edges are browned, 15–18 minutes. Let cool on baking sheets (cookies will crisp up as they cool). If using, melt chocolate and oil in a microwave-safe bowl in the microwave in 20-second increments, stirring after each burst, until mostly melted and smooth, about 1 minute total. (Alternatively, melt in a heatproof bowl set over a saucepan of simmering water, stirring occasionally, until melted; do not let bowl touch water.) Stir chocolate mixture until fully melted, then continue to stir until slightly cooled and thickened, about 3 minutes. (This makes it easier to get a thick layer of chocolate on the cookies.) Using a small offset spatula or butter knife and working one at a time, spread a scant 1 tsp. chocolate over the flat underside of each cookie. Using the edge of the spatula and starting from one side and working your way to the other, gently and quickly press a few lines into chocolate as desired. Chill cookies on baking sheets until chocolate is set, about 10 minutes.", details: "Not apt for vegetarians")

@digestives_chocolate = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @chocolate.id, ammount: 500, unit: "grams")
@digestives_butter = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@digestives_sugar = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")

@digestives_vegetarian = RecipeOption.create(recipe_id: @digestives.id, option_id: @vegetarian.id)
@digestives_vegan = RecipeOption.create(recipe_id: @digestives.id, option_id: @vegan.id)
@digestives_pescetarian = RecipeOption.create(recipe_id: @digestives.id, option_id: @pescetarian.id)
@digestives_kosher = RecipeOption.create(recipe_id: @digestives.id, option_id: @kosher.id)
@digestives_halal = RecipeOption.create(recipe_id: @digestives.id, option_id: @halal.id)
@digestives_peanut_allergy = RecipeOption.create(recipe_id: @digestives.id, option_id: @peanut_allergy.id)
@digestives_shellfish_allergy = RecipeOption.create(recipe_id: @digestives.id, option_id: @shellfish_allergy.id)

# ½ cup (1 stick) chilled unsalted butter, cut into pieces
# ½ cup (33 g) wheat germ
# 6 Tbsp. (75 g) sugar
# 1 tsp. baking powder
# 1 tsp. kosher salt
# 1⅓ cups (167 g) whole wheat flour, plus more for surface
# ¼ cup (65g) milk
# 2 oz. chocolate (any percentage), chopped (optional)
# 1 tsp. refined coconut oil (optional)


puts "Creating lasagna"
@lasagna = Recipe.create(name: "Lasagna", instructions: "Preheat oven to 225°. Mix pork and beef with your hands in a large bowl; season generously with salt and pepper, then mix again. Form into about 18 large meatballs (they don’t need to be perfect—you’ll be mashing them later).", details: "Not apt for vegetarians")

@lasagna_tomato = RecipeIngredient.create(recipe_id: @digestives.id, ingredient_id: @tomato.id, ammount: 500, unit: "grams")
@lasagna_salt = RecipeIngredient.create(recipe_id: @lasagna.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@lasagna_olive_oil = RecipeIngredient.create(recipe_id: @lasagna.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@lasagna_salt = RecipeIngredient.create(recipe_id: @lasagna.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")

@lasagna_vegetarian = RecipeOption.create(recipe_id: @lasagna.id, option_id: @vegetarian.id)
@lasagna_vegan = RecipeOption.create(recipe_id: @lasagna.id, option_id: @vegan.id)
@lasagna_pescetarian = RecipeOption.create(recipe_id: @lasagna.id, option_id: @pescetarian.id)
@lasagna_kosher = RecipeOption.create(recipe_id: @lasagna.id, option_id: @kosher.id)
@lasagna_halal = RecipeOption.create(recipe_id: @lasagna.id, option_id: @halal.id)
@lasagna_peanut_allergy = RecipeOption.create(recipe_id: @lasagna.id, option_id: @peanut_allergy.id)
@lasagna_shellfish_allergy = RecipeOption.create(recipe_id: @lasagna.id, option_id: @shellfish_allergy.id)
@lasagna_sugar_free = RecipeOption.create(recipe_id: @lasagna.id, option_id: @sugar_free.id)

# lb. ground pork
# 1 lb. ground beef chuck (20% fat)
# Kosher salt, freshly ground pepper
# 2 Tbsp. extra-virgin olive oil
# 2 oz. pancetta or slab bacon, chopped
# 1 medium onion, finely chopped
# 1 celery stalk, finely chopped
# 1 medium carrot, peeled, finely chopped
# 6 garlic cloves, sliced
# 2 Tbsp. tomato paste
# ¾ cup dry white wine
# 1 28-oz. can whole peeled tomatoes
# 1 cup low-sodium chicken broth
# 1 cup whole milk
# 7 Tbsp. unsalted butter
# ¼ cup plus 3 Tbsp. all-purpose flour
# 6 cups whole milk
# 4 oz. Parmesan, coarsely grated (about 1 cup)
# Pinch of cayenne pepper
# Pinch of ground nutmeg
# Kosher salt, freshly ground pepper
# 1¼ lb. dried lasagna noodles (we like De Cecco since they are wide and short)
# Kosher salt
# Extra-virgin olive oil (for greasing)

puts "Creating Molten caramel cake"
@molten_caramel_cake = Recipe.create(name: "Molten caramel cake", instructions: "Stir dulce de leche and butter in a small bowl until well combined. Dollop in 4 equal-size blobs on a metal baking dish or baking sheet. Freeze at least 30 minutes or up to overnight until very firm (the sugar will keep it from freezing completely solid). Preheat oven to 350°. Whisk flour, salt, and baking powder in a small bowl; set aside. Coat ramekins with butter in a thin, even layer, then coat with sugar, knocking out any excess. Using an electric mixer on medium-high speed (use the paddle attachment if you’re using a stand mixer), beat ⅓ cup sugar and 6 Tbsp. butter in a medium bowl until light and fluffy, about 4 minutes. Add dulce de leche and continue to beat until incorporated, about 1 minute. Beat in eggs, one at a time, until combined, followed by vanilla. Beat mixture on medium-high speed 1 minute (it might look slightly grainy and separated, and that’s okay!). Reduce mixer speed to low and beat in reserved dry ingredients until smooth. Divide batter among prepared ramekins. Make a small divot with a spoon in the top of each mound of batter. Place frozen filling onto divots, but do not press down into batter; you want the filling cradled by the batter but still on the surface, as it will sink to the center during baking. Place ramekins on a small rimmed baking sheet. Bake cakes until tops are browned, firm to the touch (be careful when checking as the filling may ooze out and it is very hot), and a tester inserted into the cakes, avoiding the liquid centers, comes out clean, 23–25 minutes.", details: "Not apt for vegetarians")

@molten_caramel_cake_flour = RecipeIngredient.create(recipe_id: @molten_caramel_cake.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@molten_caramel_cake_salt = RecipeIngredient.create(recipe_id: @molten_caramel_cake.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@molten_caramel_cake_dulce_de_leche = RecipeIngredient.create(recipe_id: @molten_caramel_cake.id, ingredient_id: @dulce_de_leche.id, ammount: 500, unit: "grams")
@molten_caramel_cake_eggs = RecipeIngredient.create(recipe_id: @molten_caramel_cake.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")

@molten_caramel_cake_vegetarian = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @vegetarian.id)
@molten_caramel_cake_vegan = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @vegan.id)
@molten_caramel_cake_pescetarian = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @pescetarian.id)
@molten_caramel_cake_kosher = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @kosher.id)
@molten_caramel_cake_halal = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @halal.id)
@molten_caramel_cake_peanut_allergy = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @peanut_allergy.id)
@molten_caramel_cake_shellfish_allergy = RecipeOption.create(recipe_id: @molten_caramel_cake.id, option_id: @shellfish_allergy.id)

# ¼ cup store-bought dulce de leche
# 1 Tbsp. unsalted butter, room temperature
# CAKES AND ASSEMBLY
# ⅔ cup all-purpose flour
# 1 tsp. kosher salt
# ¼ tsp. baking powder
# 6 Tbsp. unsalted butter, plus more for ramekins, room temperature
# ⅓ cup sugar, plus more for ramekins
# ¼ cup store-bought dulce de leche
# 2 large eggs, room temperature
# ½ tsp. vanilla extract

puts "Creating Onigiri"
@onigiri = Recipe.create(name: "Onigiri", instructions: "Place 2 cups sushi rice in a large bowl and pour in cold water to cover by 2–3. Gently swish around with your hands to rinse, then drain. Repeat process until water is almost clear (about 3 more times). Pour cold water over rice to cover by 1 and let soak 30 minutes (this will help the grains cook more evenly). Drain well in a sieve. Combine rice and 2½ cups water in a medium saucepan and bring to a boil over high heat, stirring occasionally. Reduce heat to low, cover, and simmer rice until water is absorbed, 12–14 minutes. Remove from heat and let sit (still covered) 15 minutes. This will allow rice to steam and become tender. Uncover and gently fluff rice with a fork. Let sit until cool enough to handle but still warm. .Meanwhile, cut three 8½x7½ toasted nori sheets into 3x1¼ strips with kitchen shears; set aside. Prepare the fillings. Mix one 5-oz. can tuna, 2 Tbsp. mayonnaise, preferably Kewpie, and 1 tsp. soy sauce in a small bowl to combine. Place 4 umeboshi on a cutting board. Working one at a time, press a chef’s knife against fruit until pit is exposed; pull out and discard. Set fruit aside (no need to chop). Working over the sink and using your hands, squeeze liquid out of ⅓ cup kimchi; chop into small pieces. Place 1 cup water in a small bowl and stir in ¾ tsp. Diamond Crystal or ½ tsp. Morton kosher salt. Dip your hands in the salted water, then scoop a little less than ⅓ cup rice into 1 hand. Form into a thick disk 3–4 in diameter (keep remaining rice in pot covered). Create a small indentation in the center and add 1–2 tsp. filling of choice (or a whole umeboshi). Mold rice up and over filling to create a sphere (filling should not be visible), then press firmly with index finger and thumb to form into a triangle. Place on cutting board or a baking sheet. Repeat with remaining rice and filling, dipping your hands in salt water each time. (You’ll have extra tuna—save it for making a tuna salad sandwich or spooning onto crackers.) Place ¼ cup furikake or toasted sesame seeds on a small plate. Wrap bottom of each onigiri with a strip of reserved nori, then roll remaining exposed sides in furikake.", details: "Not apt for vegetarians")

@onigiri_salmon = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @salmon.id, ammount: 500, unit: "grams")
@onigiri_rice = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @rice.id, ammount: 500, unit: "grams")
@onigiri_tuna = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @tuna.id, ammount: 500, unit: "grams")
@onigiri_soy_sauce = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @soy_sauce.id, ammount: 500, unit: "grams")
@onigiri_nori_sheets = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @nori_sheets.id, ammount: 500, unit: "grams")
@onigiri_kimchi = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @kimchi.id, ammount: 20, unit: "grams")
@onigiri_salt = RecipeIngredient.create(recipe_id: @onigiri.id, ingredient_id: @salt.id, ammount: 20, unit: "grams")

@onigiri_pescetarian = RecipeOption.create(recipe_id: @onigiri.id, option_id: @pescetarian.id)
@onigiri_celiac = RecipeOption.create(recipe_id: @onigiri.id, option_id: @celiac.id)
@onigiri_dairy_intolerant = RecipeOption.create(recipe_id: @onigiri.id, option_id: @dairy_intolerant.id)
@onigiri_kosher = RecipeOption.create(recipe_id: @onigiri.id, option_id: @kosher.id)
@onigiri_halal = RecipeOption.create(recipe_id: @onigiri.id, option_id: @halal.id)
@onigiri_peanut_allergy = RecipeOption.create(recipe_id: @onigiri.id, option_id: @peanut_allergy.id)
@onigiri_shellfish_allergy = RecipeOption.create(recipe_id: @onigiri.id, option_id: @shellfish_allergy.id)
@onigiri_diabetic = RecipeOption.create(recipe_id: @onigiri.id, option_id: @diabetic.id)
@onigiri_sugar_free = RecipeOption.create(recipe_id: @onigiri.id, option_id: @sugar_free.id)

# 2 cups sushi rice
# 3 8½x7½ toasted nori sheets, divided
# 5-oz. can tuna
# 2 Tbsp. mayonnaise, preferably Kewpie
# 1 tsp. soy sauce
# 4 umeboshi
# ⅓ cup kimchi
# ¾ tsp. Diamond Crystal or ½ tsp. Morton kosher salt
# ¼ cup furikake or toasted sesame seeds

puts "Creating Pepperoni pizza"
@pepperoni_pizza = Recipe.create(name: "Pepperoni pizza", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")

@pepperoni_pizza_pepperoni = RecipeIngredient.create(recipe_id: @pepperoni_pizza.id, ingredient_id: @pepperoni.id, ammount: 500, unit: "grams")
@pepperoni_pizza_cheese = RecipeIngredient.create(recipe_id: @pepperoni_pizza.id, ingredient_id: @cheese.id, ammount: 500, unit: "grams")

@pepperoni_pizza_kosher = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @kosher.id)
@pepperoni_pizza_halal = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @halal.id)
@pepperoni_pizza_peanut_allergy = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @peanut_allergy.id)
@pepperoni_pizza_shellfish_allergy = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @shellfish_allergy.id)
@pepperoni_pizza_diabetic = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @diabetic.id)
@pepperoni_pizza_sugar_free = RecipeOption.create(recipe_id: @pepperoni_pizza.id, option_id: @sugar_free.id)


puts "Creating Pie crust"
@pie_crust = Recipe.create(name: "Pie crust", instructions: "Whisk sugar, salt, and 2⅔ cups flour in a large bowl. Add butter and, using your fingers, smash each piece into a thin disk. Take your time doing this and don’t feel compelled to break butter into even smaller pieces. Drizzle ⅔ cup ice water over, dispersing it as widely as possible, and mix with a rubber spatula to bring mixture together into a shaggy mass. Turn dough out onto a surface and work together with your hands, pushing and flattening until dough holds together when squeezed in your palm but some streaks of dry flour are still visible. Divide dough into 2 portions. Flatten 1 portion of dough into an 8-diameter disk. Cut into quarters, stack pieces on top of one another, and flatten dough with a rolling pin to about half of its original height. At this point dough should hold together with no dry spots remaining, and have nice big flakes of butter showing. Use a bench scraper or a large knife to clean any clingy bits of dough from surface. Dust surface with flour, then dust top of dough with flour. Roll out to a ¼–⅜-thick round. Wrap dough around rolling pin and transfer to a standard 9-diameter pie dish. Unfurl into dish, then lift edges and allow dough to slump down into dish. Trim overhang to an even 1 (there will be some excess). Fold overhang under and crimp as desired. Cover and chill until very cold, at least 1 hour and up to 12 hours (cover tightly if chilling longer than 1 hour). Repeat process with remaining dough and another pie dish. Or form into a 1½-thick disk, wrap in plastic, and chill up to 3 days (or freeze up to 1 month). Place a rack in middle of oven; preheat oven to 400°. Lay 2 sheets of parchment paper over dough and fill with pie weights or dried beans (they should fill the dish). Set on a foil-lined rimmed baking sheet (this will keep any butter drips from smoking up your oven). Bake until edges are golden brown and bottom is opaque (carefully lift parchment to check), 30–35 minutes. Remove from oven; reduce oven temperature to 300°. Lift out parchment and weights. Bake crust until evenly chestnut brown all over, 10–15 minutes. If baking both crusts, turn oven dial back up to 400° and let oven preheat; repeat with remaining crust.", details: "Not apt for vegetarians")

@pie_crust_flour = RecipeIngredient.create(recipe_id: @pie_crust.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@pie_crust_sugar = RecipeIngredient.create(recipe_id: @pie_crust.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@pie_crust_butter = RecipeIngredient.create(recipe_id: @pie_crust.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@pie_crust_salt = RecipeIngredient.create(recipe_id: @pie_crust.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")

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

# 2 Tbsp. granulated sugar
# 2 tsp. Diamond Crystal or 1 tsp. Morton kosher salt
# 2⅔ cups all-purpose flour, plus more for dusting
# 1½ cups (3 sticks) chilled unsalted butter, cut into ½ pieces

puts "Creating Pork roast"
@pork_roast = Recipe.create(name: "Pork roast", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")

@pork_roast_pork = RecipeIngredient.create(recipe_id: @pork_roast.id, ingredient_id: @pork.id, ammount: 500, unit: "grams")
@pork_roast_salt = RecipeIngredient.create(recipe_id: @pork_roast.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@pork_roast_onions = RecipeIngredient.create(recipe_id: @pork_roast.id, ingredient_id: @onions.id, ammount: 500, unit: "grams")
@pork_roast_pork = RecipeIngredient.create(recipe_id: @pork_roast.id, ingredient_id: @pork.id, ammount: 500, unit: "grams")

@pork_roast_celiac = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @celiac.id)
@pork_roast_dairy_intolerant = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @dairy_intolerant.id)
@pork_roast_kosher = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @kosher.id)
@pork_roast_halal = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @halal.id)
@pork_roast_peanut_allergy = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @peanut_allergy.id)
@pork_roast_shellfish_allergy = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @shellfish_allergy.id)
@pork_roast_diabetic = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @diabetic.id)
@pork_roast_paleo = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @paleo.id)
@pork_roast_sugar_free = RecipeOption.create(recipe_id: @pork_roast.id, option_id: @sugar_free.id)

# 3 dried bay leaves
# 2 Tbsp. black peppercorns
# 2 tsp. fennel seeds
# 2 sprigs rosemary, leaves stripped, finely chopped
# 2 Tbsp. Diamond Crystal or 4½ tsp. Morton kosher salt
# 3 Tbsp extra-virgin olive oil, divided
# 1 8-bone pork rib roast (about 6 lb.), preferably skin-on and with fat cap, chine bone removed
# 2 large onions, coarsely chopped
# 3 garlic cloves, crushed
# 2 cups dry white wine
# Flaky sea salt


puts "Creating Salted caramel tart"
@salted_caramel_tart = Recipe.create(name: "Salted caramel tart", instructions: "Prepare chocolate dough: In bowl of an electric mixer, combine the butter, confectioners' sugar and cocoa. Beat until smooth. Add egg yolk and vanilla, and beat until blended. Sift flour into dough mixture. Beat on low speed until combined. Press the dough into the bottom and up the sides of a 10-inch tart pan. (You can use a 9-inch pan, but the crust will be thicker and the caramel may take longer to set in step 4.) Preheat oven to 350 degrees. Line tart with foil, and fill with dried beans, rice or pie weights. Bake for 15 minutes. Remove foil and weights, and bake until pastry is dry and set, another 10 to 15 minutes. Transfer to a wire rack to cool. Prepare caramel filling: In a large saucepan, bring sugar, water and corn syrup to a boil. Stir or swirl the pan occasionally, until mixture is a medium amber color, about 12 minutes. Remove from the heat. Caramel will continue to cook and darken off of the heat. Carefully but quickly whisk in the butter, cream, creme fraiche and salt until smooth (mixture will bubble up). Pour hot caramel into tart, and allow to cool and set, at least 1 hour. Prepare chocolate glaze: Place chocolate in a bowl. In a small saucepan, bring cream to a boil. Pour hot cream over chocolate and whisk until chocolate has melted and mixture is smooth. Pour glaze over tart, tilting tart for even coverage. Refrigerate until tart is set, at least one hour, then sprinkle with a few granules of fleur de sel. Keep refrigerated until serving.", details: "Not apt for vegetarians")

@salted_caramel_tart_salt = RecipeIngredient.create(recipe_id: @salted_caramel_tart.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@salted_caramel_tart_butter = RecipeIngredient.create(recipe_id: @salted_caramel_tart.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@salted_caramel_tart_sugar = RecipeIngredient.create(recipe_id: @salted_caramel_tart.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@salted_caramel_tart_eggs = RecipeIngredient.create(recipe_id: @salted_caramel_tart.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@salted_caramel_tart_fleur_de_sel = RecipeIngredient.create(recipe_id: @salted_caramel_tart.id, ingredient_id: @fleur_de_sel.id, ammount: 20, unit: "grams")

@salted_caramel_tart_vegetarian = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @vegetarian.id)
@salted_caramel_tart_vegan = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @vegan.id)
@salted_caramel_tart_pescetarian = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @pescetarian.id)
@salted_caramel_tart_kosher = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @kosher.id)
@salted_caramel_tart_halal = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @halal.id)
@salted_caramel_tart_peanut_allergy = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @peanut_allergy.id)
@salted_caramel_tart_shellfish_allergy = RecipeOption.create(recipe_id: @salted_caramel_tart.id, option_id: @shellfish_allergy.id)

# ½  cup (1 stick) salted butter, at room temperature
# ½  cup plus 1 tablespoon confectioners sugar
# ¼  cup unsweetened cocoa
# 1  large egg yolk
# ¾  teaspoon vanilla extract
# 1 ¼  cups all-purpose flour
# 2  cups sugar
# ½  cup water
# ¼  cup corn syrup
# ½  cup (1 stick) unsalted butter
# ½  cup heavy cream
# 2  tablespoons creme fraiche (available at specialty food markets)
#  PInch of salt
# 3 ½  ounces extra-bittersweet chocolate (70 to 85), chopped
# ½  cup heavy cream
#  Fleur de sel


puts "Creating Sushi salmon"
@sushi_salmon = Recipe.create(name: "Sushi salmon", instructions: "Rinse rice several times with cold water in a colander until water runs clear. Drain well. Transfer to a small saucepan. Add a pinch of salt and 1¼ cups cold water. Bring to a boil over medium-high heat. Stir rice once, cover, and reduce heat to low. Cook until water is evaporated and rice is tender, 18–20 minutes. Remove from heat and let sit, covered, 10 minutes. Whisk vinegar, sugar, and remaining 1 tsp. salt in a small bowl until sugar dissolves. Stir into rice and let sit (covered so it stays warm) until ready to use. Whisk maple syrup, miso, tamari, vinegar, and ¼ tsp. red pepper flakes in a small bowl to combine. Heat oil in a medium nonstick skillet over medium. Season salmon with salt and place in skillet skin side down. Cook, shaking pan occasionally to redistribute oil in skillet, until skin is very crisp and deep golden brown, 7–9 minutes. Turn salmon and continue to cook just until very lightly browned on the flesh side (by this point it should be nearly cooked through), about 2 minutes longer. Using a spatula to hold fish from tumbling out of skillet (or just transfer salmon to a plate while you do this), pour off fat from skillet. (Return fish to skillet if needed before proceeding.) Reduce heat to low and add glaze; cook, stirring occasionally, until it begins to thicken, about 1 minute. Baste salmon with glaze and cook, basting occasionally, until glaze evenly coats fish, about 1 minute longer. Serve salmon on top of rice. Drizzle with any leftover glaze. Top with scallions, sesame seeds, and red pepper flakes. Serve with lime wedges alongside for squeezing over.", details: "Not apt for vegetarians")

@sushi_salmon_salmon = RecipeIngredient.create(recipe_id: @sushi_salmon.id, ingredient_id: @salmon.id, ammount: 500, unit: "grams")
@sushi_salmon_rice = RecipeIngredient.create(recipe_id: @sushi_salmon.id, ingredient_id: @rice.id, ammount: 500, unit: "grams")
@sushi_salmon_salt = RecipeIngredient.create(recipe_id: @sushi_salmon.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@sushi_salmon_sugar = RecipeIngredient.create(recipe_id: @sushi_salmon.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@sushi_salmon_soy_sauce = RecipeIngredient.create(recipe_id: @sushi_salmon.id, ingredient_id: @soy_sauce.id, ammount: 500, unit: "grams")

@sushi_salmon_pescetarian = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @pescetarian.id)
@sushi_salmon_celiac = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @celiac.id)
@sushi_salmon_dairy_intolerant = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @dairy_intolerant.id)
@sushi_salmon_kosher = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @kosher.id)
@sushi_salmon_halal = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @halal.id)
@sushi_salmon_peanut_allergy = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @peanut_allergy.id)
@sushi_salmon_diabetic = RecipeOption.create(recipe_id: @sushi_salmon.id, option_id: @diabetic.id)

# 1 cup short-grain sushi rice
# 1 tsp. kosher salt, plus more
# 2 Tbsp. unseasoned rice vinegar
# 1½ tsp. sugar
# 2 Tbsp. pure maple syrup
# 2 Tbsp. red or white miso
# 2 Tbsp. tamari or soy sauce
# 2 Tbsp. unseasoned rice vinegar
# ¼ tsp. crushed red pepper flakes, plus more for serving
# 1 Tbsp. extra-virgin olive oil
# 2 5–6-oz. boneless salmon fillets
# Kosher salt
# 3 scallions, sliced
# 1 Tbsp. toasted sesame seeds
# Lime wedges (for serving)


puts "Creating Tomato pie"
@tomato_pie = Recipe.create(name: "Tomato pie", instructions: "Combine flour, sugar, and salt and mix with a whisk in a large bowl. Toss Tillamook Sweet Cream Salted Butter in the flour coating evenly. Using a pastry cutter, cut butter into 1/8-1/4-inch morsels. Stir together cold water and vinegar. Add ½ the water mixture to the bowl, mixing with a spoon. Once absorbed, add all but 1 Tbsp. of the remaining water mixture and mix until dough starts to form. If floury and dry, add remaining Tbsp. Press a couple times against side of bowl with your hand to gather dough together. Transfer dough to a lightly floured surface and knead a few times until dough comes together. Divide the dough into two disks. Wrap each in plastic wrap and refrigerate one at least 8 hours or overnight and freeze the other for future tarts.) Roll out dough on a floured surface to a 12-inch round, about 1/4-inch thick. Fit dough into the tart pan, trim, and freeze completely (1 to 2 hours.) Preheat oven to 425°F with an oven rack in the center. Cut out a round of parchment paper or a use a piece of foil a bit larger than the shell. Line the frozen shell with the paper and fill with dried beans or rice to weigh it down. Par-bake the tart shell on rimmed baking sheet, not the one you froze the shell on, 20 minutes, rotate the pan and bake another 20 minutes. Let rest on the counter with weights in it for 10 minutes minimum. (The crust can be wrapped tightly and will last 1-2 days room temp.) While tart shell is baking, spread sliced tomatoes into a single layer on a cooling rack and gently salt. Let stand 20 minutes to leach out the water. Flip tomatoes over and repeat salting and draining. Turn oven down to 350°F. Combine all the remaining filling ingredients and press into the tart shell. Arrange tomatoes on top and bake tart on a rimmed baking sheet 25 minutes. Rotate the tart and bake another 25 minutes. Serve at room temperature.", details: "Not apt for vegetarians")

@tomato_pie_salt = RecipeIngredient.create(recipe_id: @tomato_pie.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@tomato_pie_black_pepper = RecipeIngredient.create(recipe_id: @tomato_pie.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@tomato_pie_flour = RecipeIngredient.create(recipe_id: @tomato_pie.id, ingredient_id: @flour.id, ammount: 500, unit: "grams")
@tomato_pie_sugar = RecipeIngredient.create(recipe_id: @tomato_pie.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")
@tomato_pie_butter = RecipeIngredient.create(recipe_id: @tomato_pie.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")

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

# 2 ½ cups all-purpose flour (sub with White Lily Flour, if available)
# 1 tsp. salt
# ½ tsp. sugar
# ½ lb. Tillamook Sweet Cream Salted Butter (2 sticks), diced and kept ice cold
# ⅔ cup ice cold water
# 1 Tbsp. chilled apple cider vinegar
# About 1 ¼ lb. of heirloom tomatoes, sliced ¼-inch thick
# 5 oz. Tillamook Sharp White Cheddar, grated (2 cups)
# 1 large egg lightly beaten
# ⅓ cup heavy cream
# 1 shallot, thinly sliced (optional)
# 3 Tbsp. drained, chopped roasted red peppers (optional)
# 4 oz. browned sausage, drained of excess fat and cooled to room temperature
# 2 Tbsp. mayonnaise
# Pinch of salt and pepper


puts "Creating Tuna rolls"
@tuna_rolls = Recipe.create(name: "Tuna rolls", instructions: "Purée chiles, ginger, sesame seeds, garlic, and 1/2 tsp. salt in a mini-processor until paste forms. Transfer to a medium bowl. Stir in both oils and vinegar. Season dressing with salt. Add tuna; gently toss just to coat. Place nori sheets on a work surface with short side facing you. Spread about 2 rounded Tbsp. rice evenly on bottom third of each sheet. Divide tuna mixture among rolls, spooning over rice. Top with fillings. Roll into cones or log shapes, using a few grains of cooked rice as 'glue' to seal.", details: "Not apt for vegetarians")

@tuna_rolls_tuna = RecipeIngredient.create(recipe_id: @tuna_rolls.id, ingredient_id: @tuna.id, ammount: 500, unit: "grams")
@tuna_rolls_ginger = RecipeIngredient.create(recipe_id: @tuna_rolls.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")
@tuna_rolls_garlic = RecipeIngredient.create(recipe_id: @tuna_rolls.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@tuna_rolls_vegetable_oil = RecipeIngredient.create(recipe_id: @tuna_rolls.id, ingredient_id: @vegetable_oil.id, ammount: 500, unit: "grams")
@tuna_rolls_nori_sheets = RecipeIngredient.create(recipe_id: @tuna_rolls.id, ingredient_id: @nori_sheets.id, ammount: 500, unit: "grams")

@tuna_rolls_pescetarian = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @pescetarian.id)
@tuna_rolls_celiac = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @celiac.id)
@tuna_rolls_dairy_intolerant = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @dairy_intolerant.id)
@tuna_rolls_kosher = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @kosher.id)
@tuna_rolls_halal = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @halal.id)
@tuna_rolls_peanut_allergy = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @peanut_allergy.id)
@tuna_rolls_diabetic = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @diabetic.id)
@tuna_rolls_sugar_free = RecipeOption.create(recipe_id: @tuna_rolls.id, option_id: @sugar_free.id)

# green Thai chiles, stemmed, coarsely chopped
# 1 tablespoon plus 1 teaspoon grated peeled fresh ginger
# 1 tablespoon toasted sesame seeds
# 1 garlic clove, coarsely chopped
# 1 /2 teaspoon kosher salt plus more for seasoning
# 1 /4 cup sunflower or vegetable oil
# 2 teaspoons toasted sesame oil
# 1 teaspoon distilled white vinegar
# 1 pound sashimi-grade yellowfin tuna fillets, cut into 1/8 cubes
# 4 toasted dried nori sheets, halved lengthwise
# 1 1/2 cups (about) cooked short-grain rice, cooled
# Assorted fillings, such as sliced scallions, English hothouse or Persian cucumbers, cilantro leaves, and chive blossoms


puts "Creating Biscotti"
@biscotti = Recipe.create(name: "Biscotti", instructions: "Place racks in upper and lower thirds of oven; preheat to 350°. Toast hazelnuts on a rimmed baking sheet, tossing once, until golden brown, 8–10 minutes. Let cool, then very coarsely chop. Reduce oven heat to 325°. Separate yolk from 1 egg over a small bowl to catch egg white. Place yolk in another small bowl. Set egg white aside for brushing dough. Crack remaining 2 eggs into bowl with yolk. Add espresso powder and beat with a fork to combine and dissolve. Whisk flour, baking powder, and salt in a medium bowl. Using an electric mixer on medium speed, beat butter and 1 cup (200 g) sugar until light and creamy, about 2 minutes. Scrape down sides of bowl, then add egg yolk mixture and coffee extract; beat just to combine. Scrape down sides of bowl and beat until smooth. Add dry ingredients and mix on low speed to combine. Add hazelnuts and chocolate and mix just to evenly distribute. Divide dough evenly between 2 parchment-lined baking sheets. Run your hands under cold water, then shape each dough mound into a 5 square about 1 thick. Beat reserved egg white with a fork until foamy and brush over loaves (you won’t need all of it). Sprinkle very generously with sugar. Bake loaves, rotating baking sheets top to bottom and front to back halfway through, until firm in the center and starting to crisp at the edges, 30–35 minutes. (They will spread quite a bit as they bake.) Transfer baking sheets to wire racks; let loaves cool 15 minutes. Working one at a time, carefully transfer loaves to a cutting board. Using a serrated knife, slice ½ thick. Arrange biscotti cut side down on baking sheets and bake, rotating baking sheets top to bottom and front to back halfway through, until dry and crisp, 30–35 minutes. Transfer baking sheets back to racks and let biscotti cool.", details: "Not apt for vegetarians")

@biscotti_chocolate = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @chocolate.id, ammount: 500, unit: "grams")
@biscotti_eggs = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@biscotti_salt = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@biscotti_butter = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")
@biscotti_sugar = RecipeIngredient.create(recipe_id: @biscotti.id, ingredient_id: @sugar.id, ammount: 500, unit: "grams")

@biscotti_vegetarian = RecipeOption.create(recipe_id: @biscotti.id, option_id: @vegetarian.id)
@biscotti_pescetarian = RecipeOption.create(recipe_id: @biscotti.id, option_id: @pescetarian.id)
@biscotti_kosher = RecipeOption.create(recipe_id: @biscotti.id, option_id: @kosher.id)
@biscotti_halal = RecipeOption.create(recipe_id: @biscotti.id, option_id: @halal.id)
@biscotti_shellfish_allergy = RecipeOption.create(recipe_id: @biscotti.id, option_id: @shellfish_allergy.id)

# ⅔ cup blanched hazelnuts
# 3 large eggs
# 2 Tbsp. instant espresso powder or instant coffee powder
# 2 cups (250 g) all-purpose flour
# 2 tsp. baking powder
# 1 tsp. Diamond Crystal or ½ tsp. Morton kosher salt
# ½ cup (1 stick) unsalted butter, room temperature
# 1 cup (200 g) sugar, plus more for sprinkling
# 2 tsp. coffee extract or vanilla extract
# 3 oz. coffee-flavored chocolate or semisweet chocolate, coarsely chopped


puts "Creating Chicken adobo"
@chicken_adobo = Recipe.create(name: "Chicken adobo", instructions: "Preheat oven to 375°. Pat chicken thighs dry, then season very lightly all over with seasoning salt (or kosher salt and pepper). Heat oil in a large skillet over medium-high. Arrange chicken, skin side down, in pan and cook until deeply browned underneath, 8–10 minutes. Turn chicken over and cook until lightly browned on the other side, about 3 minutes. Transfer to a roasting dish just large enough to fit chicken in a single layer and arrange skin side up; set aside. Pour out and discard all but 2 Tbsp. chicken fat from the pan. Set skillet over medium heat. Add onion and garlic and cook, stirring occasionally, until garlic is golden and onion is translucent, about 3 minutes. Add vinegar, scraping up any browned bits stuck to bottom of skillet with a wooden spoon, then add soy sauce, liquid seasoning, bay leaves, ½ tsp. cracked pepper, and ½ cup water. Bring to a simmer, then remove from heat and pour over reserved chicken in baking dish (chicken should be mostly covered with only skin left exposed). Bake chicken, adding a splash or so of water if dish is looking dry at any point, until meat is almost falling off the bone, 60–75 minutes. Divide rice among plates and nestle chicken thighs alongside, dividing evenly. Serve with laing.", details: "Not apt for vegetarians")

@chicken_adobo_chicken = RecipeIngredient.create(recipe_id: @chicken_adobo.id, ingredient_id: @chicken.id, ammount: 500, unit: "grams")
@chicken_adobo_salt = RecipeIngredient.create(recipe_id: @chicken_adobo.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@chicken_adobo_garlic = RecipeIngredient.create(recipe_id: @chicken_adobo.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@chicken_adobo_onions = RecipeIngredient.create(recipe_id: @chicken_adobo.id, ingredient_id: @onions.id, ammount: 500, unit: "grams")

@chicken_adobo_celiac = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @celiac.id)
@chicken_adobo_dairy_intolerant = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @dairy_intolerant.id)
@chicken_adobo_kosher = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @kosher.id)
@chicken_adobo_halal = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @halal.id)
@chicken_adobo_peanut_allergy = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @peanut_allergy.id)
@chicken_adobo_shellfish_allergy = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @shellfish_allergy.id)
@chicken_adobo_diabetic = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @diabetic.id)
@chicken_adobo_paleo = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @paleo.id)
@chicken_adobo_sugar_free = RecipeOption.create(recipe_id: @chicken_adobo.id, option_id: @sugar_free.id)

# 6 skin-on, bone-in chicken thighs (about 2½ lb.)
# Johnny’s seasoning salt or kosher salt
# ½ tsp. cracked black pepper; plus more freshly ground (optional)
# 2 Tbsp. vegetable oil
# 1 small onion, thinly sliced
# 8 garlic cloves, smashed
# ½ cup cane vinegar (preferably Datu Puti)
# ¼ cup soy sauce (preferably Silver Swan)
# 3 Tbsp. Knorr liquid seasoning
# 3 bay leaves
# Garlic Fried Rice and Winter Greens Laing (for serving)


puts "Creating Huevos rancheros"
@huevos_rancheros = Recipe.create(name: "Huevos rancheros", instructions: "Make the salsa ranchera: Remove stem from 1 serrano chile (only use ½ if you don’t want your salsa spicy) and halve lengthwise. Heat a medium skillet, preferably cast iron, over high until you see wisps of smoke, about 2 minutes. Arrange serrano chile, skin side down, on one side of pan and add 16 oz. cherry tomatoes. Cook, leaving chile undisturbed and occasionally tossing tomatoes, until charred, 6–8 minutes. It is going to get a little smoky so turn on the vent and open a window. Transfer serrano chile and tomatoes to a blender or food processor. Reserve skillet. Add ¼ onion, ¼ cup cilantro leaves with tender stems, and 1 tsp. Diamond Crystal or ½ tsp. Morton kosher salt to blender and blend on low speed (or pulse if using a food processor) until vegetables are broken up, about 30 seconds. Increase speed to medium-low and purée until salsa is almost smooth but some chunks remain. Don’t be tempted to blend on high or you will incorporate air into the salsa and it will look and taste more like a smoothie than a salsa. Transfer to a medium bowl and stir in 1½ tsp. fresh lime juice. Taste and season with more salt and add more lime juice if needed. Set aside until ready to serve. Using a paper towel, brush off dirt from 8 oz. button mushrooms. Trim woody stems and discard. Cut mushrooms into quarters. Cut 2 medium poblano chiles or any color bell peppers in half lengthwise and remove stems, seeds, and ribs. Cut chiles into long thin strips about ¼ thick. Use the side of a chef’s knife to lightly smash 2 garlic cloves, then peel and thinly slice. Grate 6 oz. white cheddar on the large holes of a box grater. Head over to the stove with all of your prep work (gathering it on a rimmed baking sheet will make this easy!). Now, you’re ready to make the mushroom topping. Wipe out reserved skillet with a paper towel and heat 3 Tbsp. extra-virgin olive oil over medium-high. Arrange mushrooms in a single layer in skillet and cook, undisturbed, until brown underneath, about 3 minutes. Give mushrooms a toss and season with 1 tsp. Diamond Crystal or ½ tsp. Morton kosher salt. Continue to cook, tossing occasionally, until deep golden brown all over, 5–7 minutes longer. Using a slotted spoon, transfer to a small bowl, leaving oil behind. Arrange poblano chiles in an even layer in same skillet and cook, undisturbed, until browned underneath, about 2 minutes. Add garlic and season with 1 tsp. Diamond Crystal or ½ tsp. Morton kosher salt. Cook, tossing occasionally, until lightly browned all over, 5–7 minutes longer. Add 3 Tbsp. water and cook, stirring occasionally, until water has evaporated, about 2 minutes. The water will soften the chiles and pull up all those tasty brown bits from the bottom of the pan. Add mushrooms with any accumulated juices back to pan and toss until evenly distributed. Sprinkle cheese over in an even layer and remove skillet from heat. Cover (a baking sheet works great if you don’t have a lid that will work) and let sit 5 minutes for cheese to melt. You are almost there; you just need to cook the eggs. Heat remaining 2 Tbsp. extra-virgin olive oil in a large nonstick skillet over medium-high. Crack 4 large eggs into skillet, leaving space around each one, and cook until whites are set and edges are crisp, about 4 minutes. Season with salt.", details: "Not apt for vegetarians")

@huevos_rancheros_eggs = RecipeIngredient.create(recipe_id: @huevos_rancheros.id, ingredient_id: @eggs.id, ammount: 500, unit: "grams")
@huevos_rancheros_salt = RecipeIngredient.create(recipe_id: @huevos_rancheros.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@huevos_rancheros_olive_oil = RecipeIngredient.create(recipe_id: @huevos_rancheros.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")

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

# 1 serrano chile
# 16 oz. cherry tomatoes (about 3 cups)
# ¼ onion
# ¼ cup cilantro leaves with tender stems, plus more for serving
# 3 tsp. Diamond Crystal or 1½ tsp. Morton kosher salt, divided, plus more
# 1½ tsp. (or more) fresh lime juice
# 8 oz. button mushrooms
# 2 medium poblano chiles or any color bell peppers
# 2 garlic cloves
# 6 oz. white cheddar
# 5 Tbsp. extra-virgin olive oil, divided
# 4 large eggs
# 4 tostadas


puts "Creating Potato gratin"
@potato_gratin = Recipe.create(name: "Potato gratin", instructions: "Gratin dauphinois is made with thinly sliced raw potatoes, milk or cream, and sometimes Gruyère cheese cooked in a buttered dish rubbed with garlic. The potatoes are peeled and sliced to the thickness of a coin, usually with a mandoline; they are layered in a shallow earthenware or glass baking dish and cooked in a slow oven; the heat is raised for the last 10 minutes of the cooking time.Some purists insist that a gratin dauphinois must not include cheese, which would make it a gratin savoyard. Nonetheless, recipes given by many chefs including Auguste Escoffier, Austin de Croze, Robert Carrier, and Constance Spry call for cheese and eggs. It is distinguished from ordinary gratin potatoes by the use of raw rather than boiled potatoes. It is a quite different dish from pommes dauphine.", details: "Not apt for vegetarians")

@potato_gratin_cheese = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @cheese.id, ammount: 500, unit: "grams")
@potato_gratin_salt = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@potato_gratin_cream = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @cream.id, ammount: 500, unit: "grams")
@potato_gratin_potatoes = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @potatoes.id, ammount: 500, unit: "grams")
@potato_gratin_cheese = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @cheese.id, ammount: 500, unit: "grams")
@potato_gratin_black_pepper = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@potato_gratin_butter = RecipeIngredient.create(recipe_id: @potato_gratin.id, ingredient_id: @butter.id, ammount: 500, unit: "grams")

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

# Room-temperature unsalted butter (for foil)
# 3 oz. sharp white cheddar (not aged)
# 3 oz. Gruyère
# 3 lb. russet potatoes (about 6 medium)
# ½ large yellow onion
# 1 Tbsp. Diamond Crystal or 1¾ tsp. Morton kosher salt
# ½ tsp. cayenne pepper
# Freshly ground black pepper
# 1¼ cups heavy cream


puts "Creating Roasted beets"
@roasted_beets = Recipe.create(name: "Roasted beets", instructions: "Preheat oven to 425°. Combine beets, oil, vinegar, several pinches of salt, and ¼ cup water in a baking dish. Cover tightly with foil and bake until beets are tender, 50–60 minutes. Uncover and let sit until cool enough to handle. Peel and cut each beet into 4 wedges, or 6 wedges if they are larger. Do ahead: Beets can be roasted 2 days ahead. Let cool; cover and chill. Toast coriander seeds, fennel seeds, and cumin seeds in a dry small skillet over medium heat, tossing occasionally, until slightly darkened and fragrant, about 3 minutes. Transfer to a spice mill, mortar and pestle, or small food processor; let cool. Pulse until coarsely chopped. Add cashews, pistachios, benne seeds, and ½ tsp. Diamond Crystal or ¼ tsp. Morton kosher salt; pulse again until coarsely chopped. Toss roasted beets, red onion, oil, lime juice, half of sage, and ¼ cup dukkah in a medium bowl to combine; taste and season with salt. Arrange on a platter and top with more dukkah and remaining sage.", details: "Not apt for vegetarians")

@roasted_beets_olive_oil = RecipeIngredient.create(recipe_id: @roasted_beets.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@roasted_beets_salt = RecipeIngredient.create(recipe_id: @roasted_beets.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@roasted_beets_beets = RecipeIngredient.create(recipe_id: @roasted_beets.id, ingredient_id: @beets.id, ammount: 500, unit: "grams")
@roasted_beets_wine_vinegar = RecipeIngredient.create(recipe_id: @roasted_beets.id, ingredient_id: @wine_vinegar.id, ammount: 20, unit: "grams")

@wine_vinegar = Ingredient.create(name: "Wine vinegar")

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


puts "Creating Shrimp churry"
@shrimp_curry = Recipe.create(name: "Shrimp curry", instructions: "Blend red bell pepper, chiles, lemongrass, garlic, ginger, paprika, coriander, cumin, turmeric, and a couple of big pinches of salt in a blender until a smooth paste forms. Heat oil in a large pot over medium-high. Cook cabbage until deeply browned on both cut sides, about  2 minutes per side. Transfer to a plate. If pot looks dry, add another 1 Tbsp. oil. Add curry paste to pot (still over medium-high heat) and cook, stirring often, until paste is slightly darkened in color and beginning to stick to bottom of pot, about 5 minutes. Pour coconut milk and 2 cups water into pot and reduce heat to medium; season with salt. Cook, scraping up any curry paste stuck to pot until flavors come together and curry is slightly thickened, 10–12 minutes. While the curry is cooking, coarsely chop cabbage. Season shrimp with salt and add to curry. Cook, stirring, until shrimp are just cooked through, about 3 minutes. Remove pot from heat; stir in cabbage, scallions, and lime zest and juice.", details: "Not apt for vegetarians")

@shrimp_curry_ginger = RecipeIngredient.create(recipe_id: @shrimp_curry.id, ingredient_id: @ginger.id, ammount: 500, unit: "grams")
@shrimp_curry_garlic = RecipeIngredient.create(recipe_id: @shrimp_curry.id, ingredient_id: @garlic.id, ammount: 500, unit: "grams")
@shrimp_curry_paprika = RecipeIngredient.create(recipe_id: @shrimp_curry.id, ingredient_id: @paprika.id, ammount: 500, unit: "grams")
@shrimp_curry_shrimps = RecipeIngredient.create(recipe_id: @shrimp_curry.id, ingredient_id: @shrimps.id, ammount: 500, unit: "grams")

@shrimp_curry_pescetarian = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @pescetarian.id)
@shrimp_curry_celiac = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @celiac.id)
@shrimp_curry_dairy_intolerant = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @dairy_intolerant.id)
@shrimp_curry_kosher = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @kosher.id)
@shrimp_curry_halal = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @halal.id)
@shrimp_curry_peanut_allergy = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @peanut_allergy.id)
@shrimp_curry_diabetic = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @diabetic.id)
@shrimp_curry_sugar_free = RecipeOption.create(recipe_id: @shrimp_curry.id, option_id: @sugar_free.id)

# 1 red bell pepper, ribs and seeds  removed, coarsely chopped
# 2 red Thai chiles or 1 small red Fresno chile, seeds removed if  desired, coarsely chopped
# 1 lemongrass stalk, bottom third only, tough outer layers removed, finely chopped
# 4 garlic cloves, smashed
# 1 4 piece ginger, peeled, finely  grated
# 2 Tbsp. smoked paprika
# 2 tsp. ground coriander
# 1 tsp. ground cumin
# 1 tsp. ground turmeric
# Kosher salt


puts "Creating Sweet potatoes"
@sweet_potatoes = Recipe.create(name: "Wings", instructions: "Preheat oven to 450°. Toss potatoes, oil, salt, and pepper on a rimmed baking sheet. Roast, tossing occasionally, until tender and browned, 35–45 minutes.", details: "Very apt for veggies")

@sweet_potatoes_olive_oil = RecipeIngredient.create(recipe_id: @sweet_potatoes.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@sweet_potatoes_salt = RecipeIngredient.create(recipe_id: @sweet_potatoes.id, ingredient_id: @salt.id, ammount: 500, unit: "grams")
@sweet_potatoes_black_pepper = RecipeIngredient.create(recipe_id: @sweet_potatoes.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@sweet_potatoes_sweet_potatoes = RecipeIngredient.create(recipe_id: @sweet_potatoes.id, ingredient_id: @sweet_potatoes.id, ammount: 500, unit: "grams")

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


puts "Creating Wings"
@wings = Recipe.create(name: "Wings", instructions: "Whisk lemon zest and juice, garlic, oil, black pepper, salt, and oregano in a large bowl to combine. Add wings and toss to coat. Cover and chill at least 2 hours and up to 12 hours. Place racks in upper and lower thirds of oven; preheat to 375°. Line 2 large rimmed baking sheets with foil; set a wire rack in each one if you have them. Remove wings from marinade; arrange on baking sheets. Bake wings, rotating baking sheets front to back and top to bottom halfway through, until deeply browned and crisp, about 1 hour. Whisk oil, lemon juice, garlic, cayenne, and black pepper in a small bowl; season dressing with salt. To serve, stir parsley into dressing. Arrange wings on a platter, drizzle dressing over, and scatter feta on top.", details: "Not apt for vegetarians")

@wings_chicken = RecipeIngredient.create(recipe_id: @wings.id, ingredient_id: @chicken.id, ammount: 500, unit: "grams")
@wings_black_pepper = RecipeIngredient.create(recipe_id: @wings.id, ingredient_id: @black_pepper.id, ammount: 500, unit: "grams")
@wings_olive_oil = RecipeIngredient.create(recipe_id: @wings.id, ingredient_id: @olive_oil.id, ammount: 500, unit: "grams")
@wings_lemons = RecipeIngredient.create(recipe_id: @wings.id, ingredient_id: @lemons.id, ammount: 500, unit: "grams")

@wings_celiac = RecipeOption.create(recipe_id: @wings.id, option_id: @celiac.id)
@wings_dairy_intolerant = RecipeOption.create(recipe_id: @wings.id, option_id: @dairy_intolerant.id)
@wings_kosher = RecipeOption.create(recipe_id: @wings.id, option_id: @kosher.id)
@wings_halal = RecipeOption.create(recipe_id: @wings.id, option_id: @halal.id)
@wings_peanut_allergy = RecipeOption.create(recipe_id: @wings.id, option_id: @peanut_allergy.id)
@wings_shellfish_allergy = RecipeOption.create(recipe_id: @wings.id, option_id: @shellfish_allergy.id)
@wings_diabetic = RecipeOption.create(recipe_id: @wings.id, option_id: @diabetic.id)
@wings_paleo = RecipeOption.create(recipe_id: @wings.id, option_id: @paleo.id)
@wings_sugar_free = RecipeOption.create(recipe_id: @wings.id, option_id: @sugar_free.id)

# Zest and juice of 1 lemon
# 6 garlic cloves, crushed
# ½ cup extra-virgin olive oil
# 1 Tbsp. cracked black pepper
# 2 tsp. Diamond Crystal or 1¼ tsp. Morton kosher salt
# 2 tsp. dried oregano
# 3 lb. chicken wings or 32 separated flats and/or drumettes
# ASSEMBLY
# ½ cup extra-virgin olive oil
# 3 Tbsp. fresh lemon juice
# 1 small garlic clove, finely grated
# ½ tsp. cayenne pepper
# ½ tsp. cracked black pepper
# Kosher salt
# ¼ cup chopped parsley
# 3 oz. feta, crumbled


puts "Creating Herbs fusilli"
@herbs_fusilli = Recipe.create(name: "Fusilli With Battuto di Erbe", instructions: "Heat ¾ cup oil in a large Dutch oven or other heavy pot over medium until shimmering. Add garlic, hardy herbs, fennel pollen (if using), and red pepper flakes and cook, stirring often, until oil around garlic starts to sizzle slightly and garlic begins to turn golden brown, about 2 minutes (be careful when you add the garlic as the oil may spatter). Add spring greens and tender herbs and season with a couple pinches of salt. Cook, stirring often, until greens and herbs are wilted and bright green, about 2 minutes. Scrape herb mixture onto a rimmed baking sheet; spread out and let cool slightly. Reserve pot. Scrape pesto back into reserved pot and add pasta and ¾ cup pasta cooking liquid. Set over medium-low heat and cook, tossing vigorously and adding more pasta cooking liquid if needed, until warmed through and pasta is coated (do not let pesto come to a boil), about 1 minute. Taste and season with more salt if needed.", details: "Delicious pasta!")

@herbs_fusilli_garlic = RecipeIngredient.create(recipe_id: @herbs_fusilli.id, ingredient_id: @garlic.id, ammount: 5, unit: "gloves")
@herbs_fusilli_vegetable_oil = RecipeIngredient.create(recipe_id: @herbs_fusilli.id, ingredient_id: @vegetable_oil.id, ammount: 3, unit: "cups")
@herbs_fusilli_fusilli = RecipeIngredient.create(recipe_id: @herbs_fusilli.id, ingredient_id: @fusilli.id, ammount: 1000, unit: "grams")

@herbs_fusilli_vegetarian = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @vegetarian.id)
@herbs_fusilli_vegan = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @vegan.id)
@herbs_fusilli_pescetarian = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @pescetarian.id)
@herbs_fusilli_peanut_allergy = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @peanut_allergy.id)
@herbs_fusilli_shellfish_allergy = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @shellfish_allergy.id)
@herbs_fusilli_diabetic = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @diabetic.id)
@herbs_fusilli_paleo = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @paleo.id)
@herbs_fusilli_sugar_free = RecipeOption.create(recipe_id: @herbs_fusilli.id, option_id: @sugar_free.id)


puts "Creating Juicy steak"
@juicy_steak = Recipe.create(name: "Juicy Steaks", instructions: "Clip (or stand) sous vide machine to a tall large pot. Fill pot with warm water to height according to manufacturer’s instructions (keep in mind that steaks when added will cause water to rise). Heat a large cast-iron skillet over high until very hot. Add oil and cook all 4 sides of steak until a nice crust forms, 1–2 minutes total (it happens fast, so don’t walk away). The steak is already perfectly cooked; this step is to get some color and texture on the exterior. Slice steak against the grain, if desired, and season with salt and pepper. (The steak may appear slightly gray when you first cut into it but will turn bright pink when exposed to air.)", details: "You will never eat a steak as delicious as this one")

@juicy_steak_meat = RecipeIngredient.create(recipe_id: @juicy_steak.id, ingredient_id: @meat.id, ammount: 1500, unit: "grams")
@juicy_steak_vegetable_oil = RecipeIngredient.create(recipe_id: @juicy_steak.id, ingredient_id: @vegetable_oil.id, ammount: 5, unit: "cups")
@juicy_steak_black_pepper = RecipeIngredient.create(recipe_id: @juicy_steak.id, ingredient_id: @black_pepper.id, ammount: 5, unit: "cups")
@juicy_steak_salt = RecipeIngredient.create(recipe_id: @juicy_steak.id, ingredient_id: @salt.id, ammount: 3, unit: "cups")

@juicy_steak_pescetarian = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @pescetarian.id)
@juicy_steak_celiac = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @celiac.id)
@juicy_steak_dairy_intolerant = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @dairy_intolerant.id)
@juicy_steak_kosher = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @kosher.id)
@juicy_steak_halal = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @halal.id)
@juicy_steak_peanut_allergy = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @peanut_allergy.id)
@juicy_steak_shellfish_allergy = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @shellfish_allergy.id)
@juicy_steak_sugar_free = RecipeOption.create(recipe_id: @juicy_steak.id, option_id: @sugar_free.id)


puts "Creating Burger alfresco"
@burger_alfresco = Recipe.create(name: "Burger Alfresco", instructions: "Prepare a grill for high heat. Place a cast-iron griddle, flat side up, on grate; heat until very hot, at least 20 minutes. Mix together pickles, mayonnaise, ketchup, adobo sauce, and ½ tsp. salt in a medium bowl; set special sauce aside. Wrap all the buns together in a large sheet of foil to make a packet (this will keep buns soft and from getting too toasted on the grill). Place packet on grate and grill, turning once, until buns are warmed through, about 1 minute. Spread sauce over cut sides of buns. Place 3–4 pieces of lettuce on bottom buns and top each with some onion and a tomato slice, if using.", details: "Everybody love Burgers!")

@burger_alfresco_cheddar = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @cheddar.id, ammount: 10, unit: "slices")
@burger_alfresco_vegetable_oil = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @vegetable_oil.id, ammount: 2, unit: "cups")
@burger_alfresco_tomato = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @tomato.id, ammount: 500, unit: "grams")
@burger_alfresco_potatoes = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @potatoes.id, ammount: 500, unit: "grams")
@burger_alfresco_meat = RecipeIngredient.create(recipe_id: @burger_alfresco.id, ingredient_id: @meat.id, ammount: 1000, unit: "grams")

@burger_alfresco_pescetarian = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @pescetarian.id)
@burger_alfresco_kosher = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @kosher.id)
@burger_alfresco_halal = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @halal.id)
@burger_alfresco_peanut_allergy = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @peanut_allergy.id)
@burger_alfresco_shellfish_allergy = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @shellfish_allergy.id)
@burger_alfresco_sugar_free = RecipeOption.create(recipe_id: @burger_alfresco.id, option_id: @sugar_free.id)


puts "Creating Mac n cheese"
@macncheese = Recipe.create(name: "Mac n' Cheese", instructions: "Peel ½ small butternut squash (about 1¼ lb.) and cut flesh into ½ cubes. Peel and finely chop 1 onion. Using the flat side of your chef’s knife, crush 1 garlic clove, then peel and finely chop. Coarsely chop 1 cup kimchi (some kimchi juice is okay; no need to drain).", details: "The good 'ol mac n cheese")

@macncheese_cheddar = RecipeIngredient.create(recipe_id: @macncheese.id, ingredient_id: @cheddar.id, ammount: 500, unit: "grams")
@macncheese_garlic = RecipeIngredient.create(recipe_id: @macncheese.id, ingredient_id: @garlic.id, ammount: 4, unit: "gloves")
@macncheese_maccaroni = RecipeIngredient.create(recipe_id: @macncheese.id, ingredient_id: @maccaroni.id, ammount: 500, unit: "grams")

@macncheese_vegetarian = RecipeOption.create(recipe_id: @macncheese.id, option_id: @vegetarian.id)
@macncheese_pescetarian = RecipeOption.create(recipe_id: @macncheese.id, option_id: @pescetarian.id)
@macncheese_kosher = RecipeOption.create(recipe_id: @macncheese.id, option_id: @kosher.id)
@macncheese_halal = RecipeOption.create(recipe_id: @macncheese.id, option_id: @halal.id)
@macncheese_peanut_allergy = RecipeOption.create(recipe_id: @macncheese.id, option_id: @peanut_allergy.id)
@macncheese_shellfish_allergy = RecipeOption.create(recipe_id: @macncheese.id, option_id: @shellfish_allergy.id)
@macncheese_diabetic = RecipeOption.create(recipe_id: @macncheese.id, option_id: @diabetic.id)
@macncheese_sugar_free = RecipeOption.create(recipe_id: @macncheese.id, option_id: @sugar_free.id)


puts "Creating Marinated chicken"
@marinated_chicken = Recipe.create(name: "Delicious marinated Chicken", instructions: "Pour oil into a small skillet; stir in paprika, coriander, and cumin. Set over medium heat and cook, stirring occasionally, until tiny bubbles form and oil around spices starts to sizzle and is very fragrant, about 2 minutes. (This step extracts oils from the spices, bringing out their flavors.) Immediately pour half of spiced oil into a large bowl; set remaining spiced oil aside for borani. Let oil in bowl cool 5 minutes, then add yogurt, garlic, ginger, and red pepper flakes and whisk until smooth.", details: "Not apt for vegetarians")

@marinated_chicken_chicken = RecipeIngredient.create(recipe_id: @marinated_chicken.id, ingredient_id: @chicken.id, ammount: 1500, unit: "grams")
@marinated_chicken_black_pepper = RecipeIngredient.create(recipe_id: @marinated_chicken.id, ingredient_id: @black_pepper.id, ammount: 5, unit: "cups")
@marinated_chicken_vegetable_oil = RecipeIngredient.create(recipe_id: @marinated_chicken.id, ingredient_id: @vegetable_oil.id, ammount: 5, unit: "cups")
@marinated_chicken_yogurt = RecipeIngredient.create(recipe_id: @marinated_chicken.id, ingredient_id: @yogurt.id, ammount: 300, unit: "grams")

@marinated_chicken_pescetarian = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @pescetarian.id)
@marinated_chicken_celiac = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @celiac.id)
@marinated_chicken_dairy_intolerant = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @dairy_intolerant.id)
@marinated_chicken_kosher = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @kosher.id)
@marinated_chicken_peanut_allergy = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @peanut_allergy.id)
@marinated_chicken_shellfish_allergy = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @shellfish_allergy.id)
@marinated_chicken_sugar_free = RecipeOption.create(recipe_id: @marinated_chicken.id, option_id: @sugar_free.id)


puts "Creating Noodle puttanesca"
@noodle_puttanesca = Recipe.create(name: "Noodles Puttanesca", instructions: "Step 1 Pulse beefsteak tomatoes, garlic, red pepper flakes, and 2 tsp. salt in a food processor until smooth; transfer sauce to a large bowl and mix in cherry tomatoes, olives, capers, and ¼ cup oil. Step 2 Cook spaghetti in a large pot of boiling salted water, stirring occasionally, until al dente. Drain pasta, reserving ¼ cup pasta cooking liquid. Step 3 Add pasta, parsley, and butter to sauce. Toss vigorously with tongs, adding a splash of pasta cooking liquid or more as needed to create an emulsified sauce that coats pasta. Divide among bowls and drizzle with more oil.", details: "Delicious pasta")

@noodle_puttanesca_tomato = RecipeIngredient.create(recipe_id: @noodle_puttanesca.id, ingredient_id: @tomato.id, ammount: 300, unit: "grams")
@noodle_puttanesca_tomato_sauce = RecipeIngredient.create(recipe_id: @noodle_puttanesca.id, ingredient_id: @tomato_sauce.id, ammount: 400, unit: "grams")
@noodle_puttanesca_pasta = RecipeIngredient.create(recipe_id: @noodle_puttanesca.id, ingredient_id: @pasta.id, ammount: 1000, unit: "grams")
@noodle_puttanesca_vegetable_oil = RecipeIngredient.create(recipe_id: @noodle_puttanesca.id, ingredient_id: @vegetable_oil.id, ammount: 4, unit: "cups")

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


puts "Creating Steak wraps"
@steak_wraps = Recipe.create(name: "Lettuce and Steak Wraps", instructions: "This recipe is simple: marinate some skirt steak in the adobo sauce from canned chipotles in adobo, lime juice, salt, pepper, and neutral oil. Cook it in a ripping-hot cast iron pan, let it rest, slice, and slide into iceberg lettuce. That’s all fine and dandy, but the reason this recipe is so exciting isn’t because it’s weeknight friendly or because it’s way to eat less carbs without feeling like you’re depriving yourself. It’s amazing because you are eating corn nuts, a snack that your mom probably didn’t let you buy from the gas station! There are radishes there for a sharp bite and extra vegetables, spicy yogurt sauce, cilantro, and lime too, but really, my eyes are on those corn nuts.", details: "Delicious and healthy")

@steak_wraps_lettuce = RecipeIngredient.create(recipe_id: @steak_wraps.id, ingredient_id: @lettuce.id, ammount: 500, unit: "grams")
@steak_wraps_meat = RecipeIngredient.create(recipe_id: @steak_wraps.id, ingredient_id: @meat.id, ammount: 1500, unit: "grams")
@steak_wraps_black_pepper = RecipeIngredient.create(recipe_id: @steak_wraps.id, ingredient_id: @black_pepper.id, ammount: 4, unit: "cups")
@steak_wraps_wrap = RecipeIngredient.create(recipe_id: @steak_wraps.id, ingredient_id: @wrap.id, ammount: 10, unit: "units")

@steak_wraps_pescetarian = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @pescetarian.id)
@steak_wraps_dairy_intolerant = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @dairy_intolerant.id)
@steak_wraps_kosher = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @kosher.id)
@steak_wraps_peanut_allergy = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @peanut_allergy.id)
@steak_wraps_shellfish_allergy = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @shellfish_allergy.id)
@steak_wraps_diabetic = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @diabetic.id)
@steak_wraps_paleo = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @paleo.id)
@steak_wraps_sugar_free = RecipeOption.create(recipe_id: @steak_wraps.id, option_id: @sugar_free.id)


puts "Creating Steak and eggs"
@steaks_and_eggs = Recipe.create(name: "Steak and Eggs with Saucy Beans", instructions: "Step 1 Mix paprika, Aleppo-style pepper, 2½ tsp. salt, and 1 tsp. black pepper in a bowl. Rub all over steaks, pressing to adhere. Let sit while you make the beans. Step 2 Heat 2 Tbsp. oil in a medium saucepan over medium-low. Cook shallots, garlic, and cilantro stems, stirring often, until softened but not yet browned, about 3 minutes. Add beans, butter, and ¾ cup water. Bring to a simmer and cook, stirring occasionally, until beans are saucy, 6–9 minutes. Remove from heat and stir in cilantro leaves. Finely grate some lime zest from one of the lime halves into beans, then squeeze in its juice. Season with salt and pepper. Cover to keep warm.", details: "Not apt for vegetarians")

@steaks_and_eggs_eggs = RecipeIngredient.create(recipe_id: @steaks_and_eggs.id, ingredient_id: @eggs.id, ammount: 5, unit: "units")
@steaks_and_eggs_meat = RecipeIngredient.create(recipe_id: @steaks_and_eggs.id, ingredient_id: @meat.id, ammount: 1500, unit: "grams")
@steaks_and_eggs_butter = RecipeIngredient.create(recipe_id: @steaks_and_eggs.id, ingredient_id: @butter.id, ammount: 100, unit: "grams")
@steaks_and_eggs_lemons = RecipeIngredient.create(recipe_id: @steaks_and_eggs.id, ingredient_id: @lemons.id, ammount: 2, unit: "units")

@steaks_and_eggs_pescetarian = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @pescetarian.id)
@steaks_and_eggs_celiac = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @celiac.id)
@steaks_and_eggs_kosher = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @kosher.id)
@steaks_and_eggs_halal = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @halal.id)
@steaks_and_eggs_peanut_allergy = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @peanut_allergy.id)
@steaks_and_eggs_shellfish_allergy = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @shellfish_allergy.id)
@steaks_and_eggs_sugar_free = RecipeOption.create(recipe_id: @steaks_and_eggs.id, option_id: @sugar_free.id)


puts "Creating Vegan pasta"
@vegan_pasta = Recipe.create(name: "Vegan Pasta", instructions: "Marinate them like you would olives or cheese. Sauté a sliced leek, shallot, or onion in plenty of oil. Add spices—mustard/fennel/cumin/coriander seeds in the oil, along with chile flakes and lemon peel—and cook until fragrant. Remove from heat and grate in garlic. Pour over any kind of drained and rinsed beans (or even cooked lentils). Let them hang out for 20 minutes or an hour or as long as you can handle. Add a squeeze of lemon juice or a splash of vinegar. Spoon over toast.", details: "Delicious and healthy vegan pasta")

@vegan_pasta_pasta = RecipeIngredient.create(recipe_id: @vegan_pasta.id, ingredient_id: @pasta.id, ammount: 500, unit: "grams")
@vegan_pasta_tomato = RecipeIngredient.create(recipe_id: @vegan_pasta.id, ingredient_id: @tomato.id, ammount: 300, unit: "grams")
@vegan_pasta_black_pepper = RecipeIngredient.create(recipe_id: @vegan_pasta.id, ingredient_id: @black_pepper.id, ammount: 3, unit: "cups")

@vegan_pasta_vegetarian = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @vegetarian.id)
@vegan_pasta_vegan = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @vegan.id)
@vegan_pasta_pescetarian = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @pescetarian.id)
@vegan_pasta_dairy_intolerant = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @dairy_intolerant.id)
@vegan_pasta_kosher = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @kosher.id)
@vegan_pasta_peanut_allergy = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @peanut_allergy.id)
@vegan_pasta_shellfish_allergy = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @shellfish_allergy.id)
@vegan_pasta_sugar_free = RecipeOption.create(recipe_id: @vegan_pasta.id, option_id: @sugar_free.id)


puts "Creating Veggie burger"
@veggie_burger = Recipe.create(name: "Veggie Burger", instructions: "Step 1 Cook wheat berries in a medium saucepan of boiling salted water until tender (they will remain quite chewy), 45–50 minutes. Drain, spread out on a baking sheet, and let cool. Step 2 Meanwhile, place porcini mushrooms in a small bowl and cover with 1 cup very hot water. Let stand 20 minutes to soften; drain, reserving ¼ cup mushroom soaking liquid. Step 3 Heat 2 Tbsp. oil in a large skillet over medium-high heat. Add shallot and cook, stirring often, until softened, about 3 minutes. Add shiitake mushrooms and cook, tossing occasionally, until golden brown and tender, 6–8 minutes. Transfer shallot and shiitake mushrooms to a food processor. Add chickpeas and rehydrated porcini mushrooms and pulse until coarsely chopped. Add wheat berries, liquid aminos, and reserved mushroom soaking liquid and process until fairly smooth (mixture should still have some texture). Transfer to a large bowl; season with salt and pepper and fold in carrot and egg. Form mixture into four 5” patties; place on a plate and chill, uncovered, at least 30 minutes.", details: "Not apt for vegetarians")

@veggie_burger_onions = RecipeIngredient.create(recipe_id: @veggie_burger.id, ingredient_id: @onions.id, ammount: 500, unit: "grams")
@veggie_burger_carrots = RecipeIngredient.create(recipe_id: @veggie_burger.id, ingredient_id: @carrots.id, ammount: 300, unit: "grams")
@veggie_burger_bread = RecipeIngredient.create(recipe_id: @veggie_burger.id, ingredient_id: @bread.id, ammount: 4, unit: "units")
@veggie_burger_mushrooms = RecipeIngredient.create(recipe_id: @veggie_burger.id, ingredient_id: @mushrooms.id, ammount: 150, unit: "grams")

@veggie_burger_vegetarian = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @vegetarian.id)
@veggie_burger_vegan = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @vegan.id)
@veggie_burger_pescetarian = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @pescetarian.id)
@veggie_burger_celiac = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @celiac.id)
@veggie_burger_dairy_intolerant = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @dairy_intolerant.id)
@veggie_burger_kosher = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @kosher.id)
@veggie_burger_halal = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @halal.id)
@veggie_burger_peanut_allergy = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @peanut_allergy.id)
@veggie_burger_shellfish_allergy = RecipeOption.create(recipe_id: @veggie_burger.id, option_id: @shellfish_allergy.id)




puts "1"
# Cloudinary::Uploader.upload("app/assets/images/barbeque.png")
barbeque_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615256264/eew0n336b79qib2x8qj1.png')
@barbeque.photo.attach(io: barbeque_file, filename: 'barbeque.png', content_type: 'image/png')

puts "2"
# Cloudinary::Uploader.upload("app/assets/images/gnochi.png")
gnocchi_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615256394/xvpbnbnrpsrwj75vjirm.png')
@gnocchi.photo.attach(io: gnocchi_file, filename: 'gnocchi.png', content_type: 'image/png')

puts "3"
# Cloudinary::Uploader.upload("app/assets/images/pizza.png")
pizza_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615256473/xzfteqtukavyprlf0wzu.png')
@pizza.photo.attach(io: pizza_file, filename: 'pizza.png', content_type: 'image/png')

puts "4"
# Cloudinary::Uploader.upload("app/assets/images/caesarSalad.png")
caesar_salad_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615256672/qopzzr4g57o4bv8lzn2h.png')
@caesar_salad.photo.attach(io: caesar_salad_file, filename: 'caesarSalad.png', content_type: 'image/png')

puts "5"
# Cloudinary::Uploader.upload("app/assets/images/sushi.png")
sushi_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615256881/t1y7bgubtkg6hsl22dzt.png')
@sushi.photo.attach(io: sushi_file, filename: 'sushi.png', content_type: 'image/png')

puts "6"
# Cloudinary::Uploader.upload("app/assets/images/ravioli.png")
ravioli_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615256927/mhv5nxkbpyyrz3uta9yr.png')
@ravioli.photo.attach(io: ravioli_file, filename: 'ravioli.png', content_type: 'image/png')

puts "7"
# Cloudinary::Uploader.upload("app/assets/images/empanadas.png")
empanadas_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257041/j91q1eagtew157svrgvs.png')
@empanadas.photo.attach(io: empanadas_file, filename: 'empanadas.png', content_type: 'image/png')

puts "8"
# Cloudinary::Uploader.upload("app/assets/images/chocolateCake.png")
chocolate_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257062/zxgtifippiykwzru3p7w.png')
@chocolate_cake.photo.attach(io: chocolate_cake_file, filename: 'chocolateCake.png', content_type: 'image/png')

puts "9"
# Cloudinary::Uploader.upload("app/assets/images/brownies.png")
brownies_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257108/dcoivopnlc8wxce3rhux.png')
@brownies.photo.attach(io: brownies_file, filename: 'brownies.png', content_type: 'image/png')

puts "10"
# Cloudinary::Uploader.upload("app/assets/images/lemonSquares.png")
lemon_squares_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257121/ckhrrxbxt7x8hevbbml7.png')
@lemon_squares.photo.attach(io: lemon_squares_file, filename: 'lemonSquares.png', content_type: 'image/png')

puts "11"
# Cloudinary::Uploader.upload("app/assets/images/chocotorta.png")
chocotorta_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257158/dqm8v5m9lfjthzunxuz5.png')
@chocotorta.photo.attach(io: chocotorta_file, filename: 'chocotorta.png', content_type: 'image/png')

puts "12"
# Cloudinary::Uploader.upload("app/assets/images/fishAndChips.png")
fish_and_chips_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257170/hzauliix2pvqtrf78jra.png')
@fish_and_chips.photo.attach(io: fish_and_chips_file, filename: 'fishAndChips.png', content_type: 'image/png')

puts "13"
# Cloudinary::Uploader.upload("app/assets/images/carrotCake.png")
carrot_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257220/mbqbfxbz8kxg94bhqhcw.png')
@carrot_cake.photo.attach(io: carrot_cake_file, filename: 'carrotCake.png', content_type: 'image/png')

puts "14"
# Cloudinary::Uploader.upload("app/assets/images/cheesyBowtiePasta.png")
cheesy_bowtie_pasta_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257235/pkc096h94jhi4uu9y7su.png')
@cheesy_bowtie_pasta.photo.attach(io: cheesy_bowtie_pasta_file, filename: 'cheesyBowtiePasta.png', content_type: 'image/png')

puts "15"
# Cloudinary::Uploader.upload("app/assets/images/cacioPepe.png")
cacio_pepe_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257292/ncy7skmsqddrxcjcsemb.png')
@cacio_pepe.photo.attach(io: cacio_pepe_file, filename: 'cacioPepe.png', content_type: 'image/png')

puts "16"
# Cloudinary::Uploader.upload("app/assets/images/grilledCheese.png")
grilled_cheese_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257301/rqx3vavfrsbussf9gusz.png')
@grilled_cheese.photo.attach(io: grilled_cheese_file, filename: 'grilledCheese.png', content_type: 'image/png')

puts "17"
# Cloudinary::Uploader.upload("app/assets/images/cobbSalad.png")
cobb_salad_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257336/gf7yoakkoieualypcgyz.png')
@cobb_salad.photo.attach(io: cobb_salad_file, filename: 'cobbSalad.png', content_type: 'image/png')

puts "18"
# Cloudinary::Uploader.upload("app/assets/images/cookies.png")
cookies_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257348/bqfgj1bva6mvxd9yhqkw.png')
@cookies.photo.attach(io: cookies_file, filename: 'cookies.png', content_type: 'image/png')

puts "19"
# Cloudinary::Uploader.upload("app/assets/images/pancakes.png")
pancakes_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257354/crvuxjdlfl4bwop1dzja.png')
@pancakes.photo.attach(io: pancakes_file, filename: 'pancakes.png', content_type: 'image/png')

puts "20"
# Cloudinary::Uploader.upload("app/assets/images/orangeChicken.png")
orange_chicken_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257412/r4rvpm0j5dhjwslciewt.png')
@orange_chicken.photo.attach(io: orange_chicken_file, filename: 'orangeChicken.png', content_type: 'image/png')

puts "21"
# Cloudinary::Uploader.upload("app/assets/images/eggRollBowls.png")
egg_roll_bowls_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257428/p7yrj0dpkqjfmmqt87ys.png')
@egg_roll_bowls.photo.attach(io: egg_roll_bowls_file, filename: 'eggRollBowls.png', content_type: 'image/png')

puts "22"
# Cloudinary::Uploader.upload("app/assets/images/beefPho.png")
beef_pho_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257443/ptsfdjistbginwwl5msa.png')
@beef_pho.photo.attach(io: beef_pho_file, filename: 'beefPho.png', content_type: 'image/png')

puts "23"
# Cloudinary::Uploader.upload("app/assets/images/buckwheatCake.png")
buckwheat_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257514/iwmlusg3dzjyqrts7rjx.png')
@buckwheat_cake.photo.attach(io: buckwheat_cake_file, filename: 'buckwheatCake.png', content_type: 'image/png')

puts "24"
# Cloudinary::Uploader.upload("app/assets/images/chickenRice.png")
chicken_rice_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257529/vzenbqfbug0d6jjfql5y.png')
@chicken_rice.photo.attach(io: chicken_rice_file, filename: 'chickenRice.png', content_type: 'image/png')

puts "25"
# Cloudinary::Uploader.upload("app/assets/images/granolaScones.png")
granola_scones_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257543/wrzozmjveozjog5urgwo.png')
@granola_scones.photo.attach(io: granola_scones_file, filename: 'granolaScones.png', content_type: 'image/png')

puts "26"
# Cloudinary::Uploader.upload("app/assets/images/grilledMushrooms.png")
grilled_mushrooms_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257599/aczgvpgh4ywtvzmiq6xa.png')
@grilled_mushrooms.photo.attach(io: grilled_mushrooms_file, filename: 'grilledMushrooms.png', content_type: 'image/png')

puts "27"
# Cloudinary::Uploader.upload("app/assets/images/pumpkinSoup.png")
pumpkin_soup_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257609/so1gluig2xdtyddscgge.png')
@pumpkin_soup.photo.attach(io: pumpkin_soup_file, filename: 'pumpkinSoup.png', content_type: 'image/png')

puts "28"
# Cloudinary::Uploader.upload("app/assets/images/tofuBowl.png")
tofu_bowl_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257619/z9kaospdvkucvx1xzprg.png')
@tofu_bowl.photo.attach(io: tofu_bowl_file, filename: 'tofuBowl.png', content_type: 'image/png')

puts "29"
# Cloudinary::Uploader.upload("app/assets/images/tofuBroccoli.png")
tofu_broccoli_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257631/ex0txfohv3itc7tgqmlj.png')
@tofu_broccoli.photo.attach(io: tofu_broccoli_file, filename: 'tofuBroccoli.png', content_type: 'image/png')

puts "30"
# Cloudinary::Uploader.upload("app/assets/images/tunaSalad.png")
tuna_salad_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257651/dygkkufrcxvrrzjh4ol5.png')
@tuna_salad.photo.attach(io: tuna_salad_file, filename: 'tunaSalad.png', content_type: 'image/png')

puts "31"
# Cloudinary::Uploader.upload("app/assets/images/veggieNachos.png")
veggie_nachos_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257745/cabyjfwkjayn6mzmrbze.png')
@veggie_nachos.photo.attach(io: veggie_nachos_file, filename: 'veggieNachos.png', content_type: 'image/png')

puts "32"
# Cloudinary::Uploader.upload("app/assets/images/baPizza.png")
ba_pizza_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257755/xwozf2lnp3huqtrbrg0i.png')
@ba_pizza.photo.attach(io: ba_pizza_file, filename: 'baPizza.png', content_type: 'image/png')

puts "33"
# Cloudinary::Uploader.upload("app/assets/images/chocolateGanache.png")
chocolate_ganache_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257768/twbol7sazrqe1xdup1ij.png')
@chocolate_ganache.photo.attach(io: chocolate_ganache_file, filename: 'chocolateGanache.png', content_type: 'image/png')

puts "34"
# Cloudinary::Uploader.upload("app/assets/images/digestives.png")
digestives_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257779/jv6qnjlmppfoozhelc2z.png')
@digestives.photo.attach(io: digestives_file, filename: 'digestives.png', content_type: 'image/png')

puts "35"
# Cloudinary::Uploader.upload("app/assets/images/lasagna.png")
lasagna_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257788/fbopllieejjcthqgsnp4.png')
@lasagna.photo.attach(io: lasagna_file, filename: 'lasagna.png', content_type: 'image/png')

puts "36"
# Cloudinary::Uploader.upload("app/assets/images/moltenCaramelCake.png")
molten_caramel_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257892/lj3oqdaqvdzjp4bnjhox.png')
@molten_caramel_cake.photo.attach(io: molten_caramel_cake_file, filename: 'moltenCaramelCake.png', content_type: 'image/png')

puts "37"
# Cloudinary::Uploader.upload("app/assets/images/onigiri.png")
onigiri_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257905/enjxbipqkngftitrkoi2.png')
@onigiri.photo.attach(io: onigiri_file, filename: 'onigiri.png', content_type: 'image/png')

puts "38"
# Cloudinary::Uploader.upload("app/assets/images/pepperoniPizza.png")
pepperoni_pizza_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258025/mjiheebagty0a9b0jmwj.png')
@pepperoni_pizza.photo.attach(io: pepperoni_pizza_file, filename: 'pepperoniPizza.png', content_type: 'image/png')

puts "39"
# Cloudinary::Uploader.upload("app/assets/images/pieCrust.png")
pie_crust_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257914/esus8kst3sta2sdiztro.png')
@pie_crust.photo.attach(io: pie_crust_file, filename: 'pieCrust.png', content_type: 'image/png')

puts "40"
# Cloudinary::Uploader.upload("app/assets/images/porkRoast.png")
pork_roast_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257925/ow1hokndvjen2vbfsrwx.png')
@pork_roast.photo.attach(io: pork_roast_file, filename: 'porkRoast.png', content_type: 'image/png')

puts "41"
# Cloudinary::Uploader.upload("app/assets/images/saltedCaramelTart.png")
salted_caramel_tart_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615257938/gifyyyb5nlfwfgctr2se.png')
@salted_caramel_tart.photo.attach(io: salted_caramel_tart_file, filename: 'saltedCaramelTart.png', content_type: 'image/png')

puts "42"
# Cloudinary::Uploader.upload("app/assets/images/sushiSalmon.png")
sushi_salmon_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258153/ebbnby2qxbaktkdhuxek.png')
@sushi_salmon.photo.attach(io: sushi_salmon_file, filename: 'sushiSalmon.png', content_type: 'image/png')

puts "43"
# Cloudinary::Uploader.upload("app/assets/images/tomatoPie.png")
tomato_pie_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258163/iyq5y7g24rk8tfwf7qvg.png')
@tomato_pie.photo.attach(io: tomato_pie_file, filename: 'tomatoPie.png', content_type: 'image/png')

puts "44"
# Cloudinary::Uploader.upload("app/assets/images/tunaRolls.png")
tuna_rolls_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258171/mmntl19hxyncxeaipvke.png')
@tuna_rolls.photo.attach(io: tuna_rolls_file, filename: 'tunaRolls.png', content_type: 'image/png')

puts "45"
# Cloudinary::Uploader.upload("app/assets/images/biscotti.png")
biscotti_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258182/q7qt9p22yo3tlinqcoda.png')
@biscotti.photo.attach(io: biscotti_file, filename: 'biscotti.png', content_type: 'image/png')

puts "46"
# Cloudinary::Uploader.upload("app/assets/images/chickenAdobo.png")
chicken_adobo_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258194/sinmodhcdnlszymgur4g.png')
@chicken_adobo.photo.attach(io: chicken_adobo_file, filename: 'chickenAdobo.png', content_type: 'image/png')

puts "47"
# Cloudinary::Uploader.upload("app/assets/images/huevosRancheros.png")
huevos_rancheros_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258213/k2wwuyjvwu3ip4gq82vz.png')
@huevos_rancheros.photo.attach(io: huevos_rancheros_file, filename: 'huevosRancheros.png', content_type: 'image/png')

puts "48"
# Cloudinary::Uploader.upload("app/assets/images/potatoGratin.png")
potato_gratin_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258254/izklubaz2kd2wq3hfwm9.png')
@potato_gratin.photo.attach(io: potato_gratin_file, filename: 'potatoGratin.png', content_type: 'image/png')

puts "49"
# Cloudinary::Uploader.upload("app/assets/images/roastedBeets.png")
roasted_beets_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258264/mwuuhc59rkwjqyeq1ibk.png')
@roasted_beets.photo.attach(io: roasted_beets_file, filename: 'roastedBeets.png', content_type: 'image/png')

puts "50"
# Cloudinary::Uploader.upload("app/assets/images/shrimpCurry.png")
shrimp_curry_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258288/rnbjup6unfmbd8ihhdnp.png')
@shrimp_curry.photo.attach(io: shrimp_curry_file, filename: 'shrimpCurry.png', content_type: 'image/png')

puts "51"
# Cloudinary::Uploader.upload("app/assets/images/sweetPotatoes.png")
sweet_potatoes_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258311/rstf7v3vby0ntqi23yzs.png')
@sweet_potatoes.photo.attach(io: sweet_potatoes_file, filename: 'sweetPotatos.png', content_type: 'image/png')

puts "52"
# Cloudinary::Uploader.upload("app/assets/images/wings.png")
wings_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258332/tjwdfks5bkxawiksohnd.png')
@wings.photo.attach(io: wings_file, filename: 'wings.png', content_type: 'image/png')

puts "53"
# Cloudinary::Uploader.upload("app/assets/images/burgerAlfresco.png")
burger_alfresco_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258379/sjket1ib4ljdl8pokisf.png')
@burger_alfresco.photo.attach(io: burger_alfresco_file, filename: 'burgerAlfresco.png', content_type: 'image/png')

puts "54"
# Cloudinary::Uploader.upload("app/assets/images/chickenMushroomNoodles.png")
chicken_mushroom_noodles_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258395/nkz2df5lwujeyemzscw4.png')
@chicken_mushroom_noodles.photo.attach(io: chicken_mushroom_noodles_file, filename: 'chickenMushroomNoodles.png', content_type: 'image/png')

puts "55"
# Cloudinary::Uploader.upload("app/assets/images/herbsFusilli.png")
herbs_fusilli_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258404/fhcwe38sdjgyesghapzx.png')
@herbs_fusilli.photo.attach(io: herbs_fusilli_file, filename: 'herbsFusilli.png', content_type: 'image/png')

puts "56"
# Cloudinary::Uploader.upload("app/assets/images/juicySteak.png")
juicy_steak_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258419/baxrjlyl8besjp6gc7zb.png')
@juicy_steak.photo.attach(io: juicy_steak_file, filename: 'juicySteak.png', content_type: 'image/png')

puts "57"
# Cloudinary::Uploader.upload("app/assets/images/macncheese.png")
macncheese_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258443/cdeowwn7hukssehms7fc.png')
@macncheese.photo.attach(io: macncheese_file, filename: 'macncheese.png', content_type: 'image/png')

puts "58"
# Cloudinary::Uploader.upload("app/assets/images/marinatedChicken.png")
marinated_chicken_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258489/dwtmtjgdzjvaf64cvapa.png')
@marinated_chicken.photo.attach(io: marinated_chicken_file, filename: 'marinatedChicken.png', content_type: 'image/png')

puts "59"
# Cloudinary::Uploader.upload("app/assets/images/noodlePuttanesca.png")
noodle_puttanesca_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258501/g8mqsoqye3vawuoh2krl.png')
@noodle_puttanesca.photo.attach(io: noodle_puttanesca_file, filename: 'noodlePuttanesca.png', content_type: 'image/png')

puts "60"
# Cloudinary::Uploader.upload("app/assets/images/steakWraps.png")
steak_wraps_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258511/kditicydz8htomwps5pv.png')
@steak_wraps.photo.attach(io: steak_wraps_file, filename: 'steakWraps.png', content_type: 'image/png')

puts "61"
# Cloudinary::Uploader.upload("app/assets/images/steakAndEggs.png")
steaks_and_eggs_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258523/oc5cc3zqewuxrysxafkn.png')
@steaks_and_eggs.photo.attach(io: steaks_and_eggs_file, filename: 'steakAndEggs.png', content_type: 'image/png')

puts "62"
# Cloudinary::Uploader.upload("app/assets/images/veganPasta.png")
vegan_pasta_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258567/oofolegirmkndxzlqrsv.png')
@vegan_pasta.photo.attach(io: vegan_pasta_file, filename: 'veganPasta.png', content_type: 'image/png')

puts "63"
# Cloudinary::Uploader.upload("app/assets/images/veggieBurger.png")
veggie_burger_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1615258577/k5zs8vnppkas3ruxuw9y.png')
@veggie_burger.photo.attach(io: veggie_burger_file, filename: 'veggieBurger.png', content_type: 'image/png')








# Cloudinary::Uploader.upload("app/assets/images/replace.jpg")

# @replacerecipe = Recipe.create(name: "X", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
# replacerecipe_file = URI.open('X')
# @replacerecipe.photo.attach(io: replacerecipe_file, filename: 'replacerecipe.jpg',filen.png content_type: 'image/png')

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





