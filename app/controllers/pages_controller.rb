class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :welcome ]

  def welcome
  end

  def home
    @nextevent = Event.last
    @lastevent = Event.first
  end

end
