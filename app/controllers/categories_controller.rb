class CategoriesController < ApplicationController
  # before_action :is_admin_authenticated?  
  
  # List all venues (show table of persons in HTML)
  def index
    @categories = Category.all.entries
  end

  # Show detail for a venue with ID = params[:id] (in HTML)
  def show
    # @venues = Venue.find_by(id: params[:id])
  end


end