class RecipesController < ApplicationController
  before_action :set_recipes, only: [:index]
  before_action :set_recipe, only: [:show]

  def index
    @recipes = Recipe.global_search(params[:query]) if params[:query].present?
  end

  def show
  end

  private

  def set_recipes
    @recipes = Recipe.all
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
