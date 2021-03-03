class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :welcome ]
  before_action :set_recipes, only: [:welcome, :home]

  def welcome
  end

  def home
    @nextevent = Event.new(title: "Trip to Mar del Plata", number_of_members: 8, start_date: Date.today, end_date: Date.today)
    @nextevent.user = current_user
    @nextevent.save
    EventOption.create!(option_id: Option.first.id, event_id: @nextevent.id)
    Meal.create!(event_id: @nextevent.id, recipe_id: Recipe.first.id, date: Date.today)

    @lastevent = Event.new(title: "Trip to Mar del Plata", number_of_members: 8, start_date: Date.today, end_date: Date.today)
    @lastevent.user = current_user
    @lastevent.save
    EventOption.create!(option_id: Option.first.id, event_id: @lastevent.id)
    Meal.create!(event_id: @lastevent.id, recipe_id: Recipe.first.id, date: Date.today)
  end

  private

  def set_recipes
    @recipes = Recipe.all
  end

end
