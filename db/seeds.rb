puts "Creating events"

@mdq = Event.new(title: "Trip to Mar del Plata", number_of_members: 8, user_id: 1)
@cordoba = Event.new(title: "Trip to Cordoba", number_of_members: 3, user_id: 1)
@hawaii = Event.new(title: "Trip to Hawaii", number_of_members: 4, user_id: 1)
@bali = Event.new(title: "Trip to Bali", number_of_members: 6, user_id: 1)
@paris = Event.new(title: "Trip to Paris", number_of_members: 5, user_id: 1)
@london = Event.new(title: "Trip to London", number_of_members: 10, user_id: 1)

puts "Creating recipes"

@barbeque = Recipe.new(name: "Barbeque", instructions: "Add sauce to the meat", details: "Not apt for vegetarians")
@gnocchi = Recipe.new(name: "Gnocchi", instructions: "Add sauce to the gnocchi", details: "So good")
@ravioli = Recipe.new(name: "Ravioli", instructions: "Boil water and add the ravioli", details: "Choose savour carefully")
@pizza = Recipe.new(name: "Pizza", instructions: "Put pizza in the oven", details: "Put the sauce, the mozzarela and tada")

puts "Creating ingredients"

@meat = Ingredient.new(name: "Meat")
@barbequesauce = Ingredient.new(name: "Barbeque Sauce")
@mozzarela = Ingredient.new(name: "Mozzarela")
@tomatosauce = Ingredient.new(name: "Tomato Sauce")
@tomato = Ingredient.new(name: "Tomato")
@salt = Ingredient.new(name: "Salt")
