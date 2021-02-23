class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :welcome ]

  def welcome
  end

  def home
    @nextevent = Event.last
    @lastevent = Event.first


        # @nextevent = Event.create(title: "Trip to Mar del Plata", number_of_members: 8, id: 1000)
    # @nextevent_eventoption = EventOption.create(option_id: @vegetarian.id, event_id: @nextevent.id, id: 1002)
    # @nextevent_meal = Meal.create(event_id: @nextevent.id, recipe_id: @pizza.id, id: 1003)

    # @lastevent = Event.create(title: "Trip to Mar del Plata", number_of_members: 8, id: 1004)
    # @lastevent_eventoption = EventOption.create(option_id: @vegetarian.id, event_id: @lastevent.id, id: 1005)
    # @lastevent_meal = Meal.create(event_id: @lastevent.id, recipe_id: @pizza.id, id: 1006)
    # #el coming up y last event para poder citarlos
  end

end
