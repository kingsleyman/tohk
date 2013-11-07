class VenuesController < ApplicationController
  # before_action :is_admin_authenticated?  
  
  # List all venues (show table of persons in HTML)
  def index
    @venues = Venue.all.entries
  end

  # Show detail for a venue with ID = params[:id] (in HTML)
  def show
    @venue = Venue.find_by(venue_id: params[:venue_id])
  end

  # Form for adding a new venue (in HTML)
  def new
    @venue = Venue.new
  end

  # POST to this to create a new venue, then redirect to show
  def create
    @venue = Venue.create(venue_params)
    
    redirect_to venue_url(@venue)
  end

   # Form for updating an venue with ID = params[:id] (in HTML)
  def edit
    @venue = Venue.find_by(id: params[:id])
  end

  # PUT or PATCH to this to update venue with ID = params[:id]
  # then redirect to show
  def update
    @venue = Venue.find_by(id: params[:id])
    
    @venue.update_attributes(venue_params)
    
    redirect_to venue_url(@venue)
  end

  # Destroy the event with ID = params[:id]
  # then redirect to index to list remaining events
  def destroy
    @venue = Venue.find_by(id: params[:id])
    @venue.destroy
    
    redirect_to venues_url
  end






  private
	def venue_params
    params.require(:venue).permit(
      :name,:district,:address,:phone,:website,:map_code,:id
    )
  end

end