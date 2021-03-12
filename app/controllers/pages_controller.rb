class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :welcome ]
  before_action :set_recipes, only: [:welcome, :home]

  def welcome
  end

  def home
  end

  private

  def set_recipes
    @recipes = Recipe.all
  end
end
