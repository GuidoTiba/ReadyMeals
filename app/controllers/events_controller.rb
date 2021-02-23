class EventsController < ApplicationController
  before_action :set_event, only: [:select_meals, :show, :list_ingredients]

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
    if @event.options.empty?
      @recipes = Recipe.all
    else
      @recipes = []
      @event.options.each do |option|
        option.recipes.each do |recipe|
          @recipes << recipe
        end
      end
      @recipes = @recipes.uniq
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

  def event_option_params
    params["event_options"].permit!
  end
end
