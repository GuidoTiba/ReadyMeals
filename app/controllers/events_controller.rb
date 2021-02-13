class EventsController < ApplicationController
  
  def new
    @event = Event.new()
  end
  
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :number_of_members)
  end

end