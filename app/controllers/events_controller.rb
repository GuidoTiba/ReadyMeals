class EventsController < ApplicationController
  before_action :set_event, only: [:select_meals]

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
    @event = Event.find(params[:id])
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def event_params
    params.require(:event).permit(:title, :number_of_members)
  end
  
  def event_option_params
    params["event_options"].permit!
  end 
end
