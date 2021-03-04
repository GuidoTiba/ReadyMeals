class MealsController < ApplicationController
  before_action :set_meal, only: [:destroy]
  before_action :set_event, only: [:create, :destroy]
  before_action :set_recipe, only: [:create]

  def create
    meal = Meal.new(event: @event, recipe: @recipe, date: Date.today)
    if meal.save
      redirect_to event_select_meals_path(@event)
      flash.notice = "#{@recipe.name} Meal created"
    else
      redirect_to event_select_meals_path(@event)
      flash.alert = "The Meal couldn't be created"
    end
  end

  def destroy
    if @meal.destroy
      redirect_to event_select_meals_path(@event)
      flash.alert = "Meal destroyed"
    else
      redirect_to event_select_meals_path(@event)
      flash.alert = "The Meal couldn't be destroyed"
    end
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def meal_params
    params.require(:meal).permit(:title, :number_of_members)
  end
end
