class HomeController < ApplicationController
  # List all events (show table of persons in HTML)
  def index
    @events = Event.all.entries
  end

  # Show detail for an event with ID = params[:id] (in HTML)
  def show
    @event = Event.find_by(id: params[:id])
  end

end