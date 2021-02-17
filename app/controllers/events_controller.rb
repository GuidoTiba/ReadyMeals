class EventsController < ApplicationController
  before_action :set_event, only: [:select_meals]

  def new
    @event = Event.new(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
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

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def event_params
    params.require(:event).permit(:title, :number_of_members)
  end

end
