class EventsController < ApplicationController
  before_action :set_event, only: [:select_meals]

  def new
    @event = Event.new()
  end
  
  def create
  
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      options_to_create = params["options"]. select { |key, value| value =="1" }.keys
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
    @recipes = []
    @event.options.each do |option|
      option.recipes.each do |recipe|
        @recipes << recipe
      end
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def event_params
    params.require(:event).permit(:title, :number_of_members)
  end

end
