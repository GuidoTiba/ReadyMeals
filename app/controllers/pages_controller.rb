class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :welcome ]

  def welcome
  end

  def home
    @nextevent = Event.new(title: "Trip to Mar del Plata", number_of_members: 8)
    @nextevent.user = current_user
    @nextevent.save
    EventOption.create!(option_id: Option.first.id, event_id: @nextevent.id)
    Meal.create!(event_id: @nextevent.id, recipe_id: Recipe.first.id, date: Date.today)

    @lastevent = Event.new(title: "Trip to Mar del Plata", number_of_members: 8)
    @lastevent.user = current_user
    @lastevent.save
    EventOption.create!(option_id: Option.first.id, event_id: @lastevent.id)
    Meal.create!(event_id: @lastevent.id, recipe_id: Recipe.first.id, date: Date.today)

  end

end
