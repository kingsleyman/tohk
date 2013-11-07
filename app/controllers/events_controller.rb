class EventsController < ApplicationController

  # List all events (show table of persons in HTML)
  def index
    @events = Event.all.entries
  end

  # Show detail for an event with ID = params[:id] (in HTML)
  def show
    @event = Event.find_by(id: params[:id])
  end

  # Form for adding a new event (in HTML)
  def new
    @event = Event.new
    @categories = Category.all.entries
    @venues = Venue.all.entries
  end

  # POST to this to create a new event, then redirect to show
  def create
    @event = Event.create(event_params)
    @categories = Category.all.entries
    redirect_to event_url(@event)
  end
  
  # Form for updating an event with ID = params[:id] (in HTML)
  def edit
    @event = Event.find_by(id: params[:id])
    @categories = Category.all.entries
    @venues = Venue.all.entries
  end

  # PUT or PATCH to this to update event with ID = params[:id]
  # then redirect to show
  def update
    @event = Event.find_by(id: params[:id])
    
    @event.update_attributes(event_params)
    
    redirect_to event_url(@event)
  end

  # Destroy the event with ID = params[:id]
  # then redirect to index to list remaining events
  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    
    redirect_to events_url
  end

  private
  
  def event_params
    params.require(:event).permit(
      :title,:category,:start_date,:end_date,:price,:venue,:recommended
    )
  end


end