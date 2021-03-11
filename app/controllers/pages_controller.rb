class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :welcome ]
  before_action :set_recipes, only: [:welcome, :home, :recipes]

  def welcome
  end

  def home
  end

  def recipes
    @recipes.each do |recipe|
      @vegetarian = []
      @carnivore = []
      if recipe.options == { name: "Vegetarian" } && { name: "Pescetarian" } && { name: "Kosher" } && { name: "Halal" } && { name: "Shellfish Allergy" }
        recipe > @vegetarian
      end
    end
  end

  private

  def set_recipes
    @recipes = Recipe.all
  end
end


# .sort{|a,b| a.name <=> b.name}
