class EventsController < ApplicationController
  before_action :set_event, only: [:select_meals, :show, :list_ingredients, :list_recipes]

  def new
    @event = Event.new(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    event_option_params.to_h.select {|_, value | value =="1" }.map{|option, value| Option.find_by(name: option).id }.each do |id|
      @event.event_options.build(option_id: id)
    end
    if @event.save
      redirect_to event_select_meals_path(@event)
    else
      render :new
    end
  end

  def select_meals
    @all_recipes = Recipe.all
    if @event.options.empty?
      @recipes = Recipe.all.includes(:recipe_ingredients)
      @recipes = Recipe.global_search(params[:query]) if params[:query].present?
    else
      @recipes = []
      @event.options.each do |option|
        option.recipes.each do |recipe|
          @recipes << recipe
        end
      end
      @recipes = @recipes.uniq
      if params[:query].present?
        recipes_found = Recipe.global_search(params[:query])
        @recipes = @recipes & recipes_found
      end
    end
  end

  def index
    @events = current_user.events
  end

  def show
    @recipe_hash = {}
    @event.meals.each do |meal|
      if(@recipe_hash[meal.recipe])
        @recipe_hash[meal.recipe] += 1
      else
        @recipe_hash[meal.recipe] = 1
      end
    end
  end

  def list_ingredients
    ## Tengo que hace un hash con key: ingredient, value: cantidad
    @ingredients_hash = {}
    @event.meals.each do |meal|
      meal.recipe.recipe_ingredients.each do |recipe_ingredient|
        if(@ingredients_hash[recipe_ingredient.ingredient.id])
          @ingredients_hash[recipe_ingredient.ingredient.id] += recipe_ingredient.ammount * @event.number_of_members
        else
          @ingredients_hash[recipe_ingredient.ingredient.id] = recipe_ingredient.ammount * @event.number_of_members
        end
      end
    end
  end

  def list_recipes
    @events = current_user.events
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :number_of_members, :start_date, :end_date)
  end

  def event_option_params
    params["event_options"].permit!
  end
end
