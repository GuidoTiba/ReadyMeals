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
barbeque_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614125987/swuqcu0j0d2jfmfwqmj8.jpg')
@barbeque.photo.attach(io: barbeque_file, filename: 'barbeque.jpg', content_type: 'image/jpg')

@gnocchi = Recipe.create(name: "Gnocchi", instructions: "Add sauce to the gnocchi", details: "So good")
gnocchi_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126473/mhidyfrmkizqqrq88sr7.jpg')
@gnocchi.photo.attach(io: gnocchi_file, filename: 'gnochi.jpg', content_type: 'image/jpg')

@pizza = Recipe.create(name: "Pizza", instructions: "Put pizza in the oven", details: "Put the sauce, the mozzarela and tada")
pizza_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614125924/xqgqppjx4mqwh7tqqwak.jpg')
@pizza.photo.attach(io: pizza_file, filename: 'pizza.jpg', content_type: 'image/jpg')

@caesar_salad = Recipe.create(name: "Caesar salad", instructions: "Mix greens with chicken and add caesar dressing", details: "The dressing is the key")
caesar_salad_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126458/xda3j02xma6gzxh331jn.jpg')
@caesar_salad.photo.attach(io: caesar_salad_file, filename: 'caesar_salad.jpg', content_type: 'image/jpg')

@sushi = Recipe.create(name: "Sushi", instructions: "Buy the sushi", details: "Don't forget the soy sauce")
sushi_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126514/giiyj8swmlkjdgplinrb.jpg')
@sushi.photo.attach(io: sushi_file, filename: 'sushi.jpg', content_type: 'image/jpg')

@ravioli = Recipe.create(name: "Ravioli", instructions: "Boil water and add the ravioli", details: "Choose savour carefully")
ravioli_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126495/ba1m7hiif9jpkq1ugecq.jpg')
@ravioli.photo.attach(io: ravioli_file, filename: 'ravioli.jpg', content_type: 'image/jpg')

@empanadas = Recipe.create(name: "Empanadas", instructions: "Put empanadas in the oven", details: "An argentine classic")
empanadas_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614126783/m61fdr3at6l4gjqofzc1.jpg')
@empanadas.photo.attach(io: empanadas_file, filename: 'empanadas.jpg', content_type: 'image/jpg')

@chocolate_cake = Recipe.create(name: "Chocolate cake", instructions: "Mix chocolate and eggs", details: "Everybody likes chocolate cake")
chocolate_cake_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614275222/exlltipyltc79yiycsjg.jpg')
@chocolate_cake.photo.attach(io: chocolate_cake_file, filename: 'replace.jpg', content_type: 'image/jpg')

@brownies = Recipe.create(name: "Brownies", instructions: "Mix batter with chocolate", details: "You can even make them magical")
brownies_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614275060/gih2jpnhuudagrbjgmdj.jpg')
@brownies.photo.attach(io: brownies_file, filename: 'brownies.jpg', content_type: 'image/jpg')

@lemon_squares = Recipe.create(name: "Lemon squares", instructions: "Place the dough in the bottom and the lemon liquid on the top", details: "For those who don't prefer chocolate")
lemon_squares_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614275022/xlhaqf50pzrj85gtllaa.jpg')
@lemon_squares.photo.attach(io: lemon_squares_file, filename: 'lemon_squares.jpg', content_type: 'image/jpg')

@mousse = Recipe.create(name: "Mousse", instructions: "You can make it of any flavour, in this case, we are making it a white chocolate special", details: "Mousse, what else shall I say?")
mousse_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614274878/kvfrpthizp1q02xj8lxq.jpg')
@mousse.photo.attach(io: mousse_file, filename: 'mousse.jpg', content_type: 'image/jpg')

@chocotorta = Recipe.create(name: "Chocotorta", instructions: "Dip the cookies in milk, do a layer and then add the dulce de leche mix", details: "An argentine classic")
chocotorta_file = URI.open('https://res.cloudinary.com/db61r7r8g/image/upload/v1614275041/cgsjppta9lh0himrj0ld.jpg')
@chocotorta.photo.attach(io: chocotorta_file, filename: 'chocotorta.jpg', content_type: 'image/jpg')

# replace_file = URI.open('replace')
# @replace.photo.attach(io: replace_file, filename: 'replace.jpg', content_type: 'image/jpg')

# Cloudinary::Uploader.upload("app/assets/images/replace.jpg")

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
@diabetic = Option.create(name: "Diabetic")
@paleo = Option.create(name: "Paleo")

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


puts "joining recipe with its dietary restriction"
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


# @replace_vegetarian = RecipeOption.create(recipe_id: @replace.id, option_id: @vegetarian.id)
# @replace_vegan = RecipeOption.create(recipe_id: @replace.id, option_id: @vegan.id)
# @replace_pescetarian = RecipeOption.create(recipe_id: @replace.id, option_id: @pescetarian.id)
# @replace_celiac = RecipeOption.create(recipe_id: @replace.id, option_id: @celiac.id)
# @replace_dairy_intolerant = RecipeOption.create(recipe_id: @replace.id, option_id: @dairy_intolerant.id)
# @replace_kosher = RecipeOption.create(recipe_id: @replace.id, option_id: @kosher.id)
# @replace_halal = RecipeOption.create(recipe_id: @replace.id, option_id: @halal.id)
# @replace_peanut_allergy = RecipeOption.create(recipe_id: @replace.id, option_id: @peanut_allergy.id)
# @replace_diabetic = RecipeOption.create(recipe_id: @replace.id, option_id: @diabetic.id)
# @replace_paleo = RecipeOption.create(recipe_id: @replace.id, option_id: @paleo.id)



# puts "Creating events"
# @mdq = Event.create(title: "Trip to Mar del Plata", number_of_members: 8, user_id: 1)
# @cordoba = Event.create(title: "Trip to Cordoba", number_of_members: 3, user_id: 1)
# @hawaii = Event.create(title: "Trip to Hawaii", number_of_members: 4, user_id: 1)
# @bali = Event.create(title: "Trip to Bali", number_of_members: 6, user_id: 1)
# @paris = Event.create(title: "Trip to Paris", number_of_members: 5, user_id: 1)
# @london = Event.create(title: "Trip to London", number_of_members: 10, user_id: 1)

# puts "Creating event options of dietary restrictions"
# @mdq_vegetarian = EventOption.create(option_id: @vegetarian.id, event_id: @mdq.id)

