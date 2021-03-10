class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :welcome ]
  before_action :set_recipes, only: [:welcome, :home, :recipes]

  def welcome
  end

  def home
  end

  def recipes
  end

  private

  def set_recipes
    @recipes = Recipe.all
  end

end


# .sort{|a,b| a.name <=> b.name}
