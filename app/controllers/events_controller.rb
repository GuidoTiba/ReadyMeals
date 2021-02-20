class EventsController < ApplicationController
  before_action :set_event, only: [:select_meals, :show, :list_ingredients]

  def new
    @event = Event.new(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      options_to_create = params["options"].select { |key, value| value == "1" }.keys
      options_to_create.each do |option_name|
        event_option = EventOption.new(event: @event, option: Option.find_by(name: option_name))
        event_option.save!
      end
      redirect_to event_select_meals_path(@event)
    else
      render :new
    end
  end

  def select_meals
    @recipes = Recipe.all
    @event.options.each do |option|
      option.recipes.each do |recipe|
        @recipes << recipe
      end
    end
  end

  def index
    @events = current_user.events
  end

  def show
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

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :number_of_members)
  end

end
